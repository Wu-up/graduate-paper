# 论文同步及临时账号退出

适用目录：`C:\Users\31862\Desktop\Graduate Paper`。2026-10-26 实查为独立论文仓库，非实验仓库子目录。保留原科研规划、事实台账、正文整合和导师审阅流程。

## 远程和历史

| 名称 | 地址 | 分支/用途 |
|---|---|---|
| origin | https://github.com/Wu-up/graduate-paper.git | main，长期主仓库；默认分支和跟踪关系保持不变 |
| overleaf-old | https://git@git.overleaf.com/6a900ff21b0d5d0810c71d10 | 历史跟踪 main；推送地址为 DISABLED-OLD-OVERLEAF，防误推 |
| overleaf-temp | https://git@git.overleaf.com/6adee8476e26d2e60ee9f835 | **实测 HEAD 为 main**，临时编译平台 |

通用文档中的 master 不能替代实测：先 `git ls-remote --symref overleaf-temp HEAD`。当前明确使用 main:main，不改 GitHub 分支名称。

新项目由 ZIP 建立，初始提交 3e3b9c5 与 GitHub 7f46607 无共同祖先，但现有论文源码和图片 Git blob 完全相同。使用独立本地分支 `codex/overleaf-temp` 延续 Overleaf 的单父提交历史，通过文件补丁连接两端；不将 Overleaf 无关历史合入 GitHub main。

桥接工作树路径可用 `git config --get overleafSync.bridgePath` 查询。本次位于 `.git/migration-20261026/bridge`。以下 PowerShell 命令都在论文根目录运行，每条成功后再执行下一条；失败立即停下。`$bridge` 为上述路径。

Token 仅通过 Git Credential Manager 的密码框输入；用户名 git。已启用本仓库 `credential.https://git.overleaf.com.useHttpPath=true`，按项目路径隔离。禁止将凭据放入 URL、命令参数、脚本、文档或提交。临时账号无需也不得授权访问 GitHub 仓库。

## 每次修改前：获取两端及网页修改

先保存已有工作；不要丢弃未提交修改。检查下面命令和输出：

```powershell
git status --short --branch
git fetch origin
git fetch overleaf-temp
git log --oneline --left-right main...origin/main
git diff --stat refs/overleaf-sync/last-pushed overleaf-temp/main
git diff refs/overleaf-sync/last-pushed overleaf-temp/main
```

`refs/overleaf-sync/last-pushed` 是上次经远端读回确认的同步点，不是 origin/main。若缺失，停止并重建基线。若远端历史不包含此提交，停止调查，禁止自动覆盖。GitHub 落后时，在干净 main 上 `git merge --ff-only origin/main`；若分叉则逐项合并审查。

网页有文件改动时，在干净 main 上生成并应用三方补丁（包含二进制图片）：

```powershell
git diff --binary --output=.git/overleaf-online.patch refs/overleaf-sync/last-pushed overleaf-temp/main
git apply --3way .git/overleaf-online.patch
git diff --cached
git diff --cached --check
```

审查网页改动是否有效、是否涉及未经批准的科研结论。有效改动按原论文治理流程确认后提交，再推 origin main。不要机械接受全部网页改动。冲突时保留 `.git/overleaf-online.patch`、当前工作区和 refs；逐文件解决、核对图片，禁止 reset --hard、强推或批量删除。可 `git show HEAD:路径` 读取原版本；迁移前完整历史在 `.git/migration-20261026/before.bundle`，可克隆到新目录恢复。认证/网络失败先核对远端实际 SHA，避免重复提交。

## 本地修改、GitHub 提交与临时 Overleaf 同步

本地仍为主要编辑位置。逐文件 `git add 路径`，不要 `git add .`，避免把两份原有未跟踪材料、源 ZIP、临时计划和实验材料纳入提交。按原文档执行正文范围、引用和图表核验，然后：

```powershell
git diff --cached --check
git commit -m "thesis: describe reviewed change"
git push origin main
git fetch origin
git rev-parse main origin/main
```

只有 SHA 相同才继续。同步前再次 fetch overleaf-temp，重复检查网页变化（即使本轮开始时查过）。如有新的在线变化，先按上节合并、提交、推 GitHub。

```powershell
$bridge = git config --get overleafSync.bridgePath
git -C $bridge status --short
git -C $bridge merge --ff-only overleaf-temp/main
git diff --binary --output=.git/overleaf-outgoing.patch overleaf-temp/main main
git -C $bridge apply --3way 'C:/Users/31862/Desktop/Graduate Paper/.git/overleaf-outgoing.patch'
git -C $bridge diff --cached --stat
git -C $bridge diff --cached --check
git -C $bridge commit -m "sync: reviewed GitHub thesis snapshot"
git diff --exit-code main codex/overleaf-temp
git push overleaf-temp codex/overleaf-temp:main
git fetch overleaf-temp
git rev-parse codex/overleaf-temp overleaf-temp/main
git diff --exit-code main overleaf-temp/main
git update-ref refs/overleaf-sync/last-pushed overleaf-temp/main
```

桥接工作树必须干净。如果无补丁则无需 apply/commit。桥接分支若领先远端（如上次推送失败），先检查 `git log overleaf-temp/main..codex/overleaf-temp` 和树差异；已审核且内容等于 main 时可以重试普通推送，不重复应用补丁。若网页在同步过程中更新，普通推送应被拒绝；重新 fetch、导入网页修改并协调桥接分支，不能强推。两个历史的 SHA 不会相同，核验的是**文件树一致**。同步点只在成功读回并比对后更新。

此仓库仅含论文及其治理文档，当前可同步所有经过审查的跟踪文件；不得以后把实验数据、模型、日志加入这一流程。若将来引入大科研目录，应改用编译文件白名单桥接。桥接分支不推 GitHub 默认分支。

## 图片、依赖与在线编译

当前五张实际图片：`figures/title.pdf`、`figures/scnu.pdf`、`figures/ch03/work1_vil_unet_architecture.png`、`work1_synapse_visual.png`、`work1_acdc_visual.png`。主文档和类文件的引用均相对工程根目录；三张正文图片采用省略扩展名的路径。

新增/替换图片后检查 `git status --short`、`git check-ignore -v figures/具体文件` 和 `git ls-files figures`。当前规则只忽略根目录 main.pdf/thesis.pdf 等编译产物，不忽略 figures 下 PDF/PNG/JPG/EPS。Linux 路径大小写敏感；重命名必须同时改引用。保留可再生图片的生成程序和源数据位置/版本记录，但不把模型权重或大数据搬到 Overleaf；当前仓库未发现三张正文图片的生成程序，不能声称已具备重绘来源。

显式依赖包括 main.tex、references.bib、scnuthesis.cls、latexmkrc 和 frontmatter/chapters/backmatter/figures；ctexbook、fontspec、xeCJK、biblatex-gb7714-2015、Biber 等由 TeX Live 提供。字体已有 Windows/Noto/Fandol 回退，不依赖个人字体文件。EPS 还需验证在线转换，新增自定义 sty/cls/字体必须纳入跟踪和导出白名单核验。

Overleaf 设置：主文件 main.tex，编译器 **XeLaTeX**；当前项目 TeX Live 2026。ZIP 导入不会自动保留这些账号项目设置。每次同步后 Recompile，检查错误日志、文献/交叉引用警告、封面、公式、图表和最终 PDF；仅源文件比较通过不能宣称排版通过。本地当前 PATH 无 xelatex/latexmk。

## 七天后回迁（不依赖原账号 Git 权限）

期限以实际购买/失效时间为准；若从 2026-10-26 起算，建议在 2026-11-01 完成最后核对，不等到失效。这里不自动创建提醒。

1. 暂停网页编辑，fetch 临时 Overleaf，按上述补丁流程导入所有有效在线修改；推原 GitHub 并读回核对。再次 fetch 确认没有遗漏，记录 GitHub SHA、Overleaf SHA 和编译器版本。
2. 在临时 Overleaf 成功编译并下载 PDF，另下载项目源码备份。原账号中也先下载**原始项目源码 ZIP 和 PDF**，保留原项目，不直接覆盖。
3. 在已 fetch、GitHub 与本地 HEAD 相同且已提交的工作区，运行：

```powershell
python scripts/export_overleaf.py _source_materials/overleaf_return_YYYYMMDD/final_source.zip
```

脚本拒绝覆盖已有备份，输出清单和 SHA256；仅导出 Git 已提交的编译源和图片，不包含 .git、认证、治理文档、缓存或原始实验材料。逐文件验证 ZIP 等于 Git blob，并检查当前显式引用。它不是通用 TeX 解释器；若新增自定义目录、动态输入、graphicspath 或特殊资源，先更新白名单/依赖检查，再重新编译核验。复制 ZIP、manifest、PDF 到独立备份位置，GitHub 保留版本来源。
4. **优先保留原项目**：先在原账号新建一个“回迁验证”项目，上传最终 ZIP，选择 main.tex / XeLaTeX 和合适 TeX Live，完成全文编译和 PDF 核对。此步骤不需要高级 Git。
5. 若希望更新原始项目，先在两个 ZIP 中逐路径比较同名差异及新增/移除文件，列出覆盖清单；确认原项目备份可恢复后，由用户确认具体覆盖范围再操作。逐文件上传更新，不删除旧项目、不批量删除旧文件。过时资源可能保留，但不能被错误引用。无法安全更新时，保留原项目，以已验证的新最终项目继续写作。
6. 原账号目标项目编译通过并确认图片、文献、全文 PDF 后，撤销临时账号 Account Settings 中对应 Git Token，删除 Windows 凭据管理器内**该临时项目路径**的凭据（不要清空所有 Overleaf 凭据），执行 `git remote set-url --push overleaf-temp DISABLED-TEMP-OVERLEAF`。原 GitHub 继续保留；无需删除本地桥接工作树或原 Overleaf。

## 官方依据

## 2026-10-26 实际验收记录

- GitHub 读写成功；基础迁移提交 8d31753 已推送并 fetch 核对。
- 临时 Overleaf 首次 fetch 成功；无共同历史但论文文件内容一致。桥接推送和 fetch 读回成功；测试文件经过新增、推送、读回、单文件移除及再次推送，最终树与 GitHub 一致。
- 网页编译器已由 pdfLaTeX 改为 XeLaTeX。仅修复类文件 upcite 重复定义及成果占位文字下划线转义，未改章节、实验结论或图片。
- 在线 PDF 87 页，错误 0，警告 8（字体族重定义及未使用全局选项），另有多处 Overfull/Underfull 提示。未完成逐页排版验收；不等同最终论文通过。
- 编译日志截图保存在本地 `_source_materials/overleaf_migration_20261026/compile_logs.png`。浏览器下载 PDF 被取消/超时，尚未取得本地 PDF；可在页面 Download PDF 手动保存。
- 源码导出实测包含 23 个编译文件，ZIP 完整性和各文件与 Git blob 相等性通过。原始未跟踪材料保留。当前所有显式 input/includegraphics/addbibresource 路径齐全。
- 旧 Overleaf 在线返回 no git access，无法确认其中是否有后于历史跟踪 7f46607 的网页修改。回迁时仍应先在原账号下载源码并比较，不能推断其在线内容必然等于旧跟踪引用。
- 网页修改导入命令已经设计；本次远端没有论文内容差异，未人为更改网页正文制造合并冲突，因此真实冲突解决未演练。

### 官方链接

- https://docs.overleaf.com/integrations-and-add-ons/git-integration-and-github-synchronization/git-integration
- https://docs.overleaf.com/integrations-and-add-ons/git-integration-and-github-synchronization/git-integration/git-integration-authentication-tokens
