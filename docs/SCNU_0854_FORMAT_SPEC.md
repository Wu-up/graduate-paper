# SCNU 0854 电子信息硕士论文格式规范摘录

本文件来自 P-000 初始化过程中的本地官方材料读取结果，仅记录可核验格式要求，不替代学院/研究生院最新通知。

## Source

- Official package: `_source_materials/1783666077974369.zip`
- Extracted specification: `0854电子信息 研究生学位论文撰写规范.docx`
- Extracted template: `0854电子信息 研究生学位论文模板.doc`
- Package folder label observed after extraction: `0854电子信息（20260710）`
- Specification cover date in extracted text: `二〇二五年九月十五日`
- Template extraction method: Word COM converted `.doc` to `.docx`, then text was extracted.

## Structure Order

The specification lists the thesis order as:

1. 封面
2. 英文内封
3. 答辩合格证明
4. 中文摘要
5. 英文摘要
6. 目录
7. 图表清单及主要符号说明表（必要时）
8. 主体部分
9. 参考文献
10. 附录（必要时）
11. 致谢
12. 攻读博士/硕士学位期间取得的研究成果
13. 使用人工智能工具声明
14. 原创性声明和授权使用声明

## Page And Paragraph

- Paper size: A4, 210 mm x 297 mm, portrait.
- Margins: top, bottom, left, and right are all 2.5 cm.
- Line spacing: 1.5 line spacing.
- Paragraph spacing: 0 before and 0 after.
- Body text: 小四号宋体, first-line indent of two Chinese characters, justified.
- Numbers and letters: Times New Roman.

## Fonts

- Thesis title on cover: 二号黑体, centered.
- Cover date: 四号宋体, centered, Chinese date style.
- Other cover fields: 四号宋体.
- Chapter title: 小二号黑体, centered.
- Section title: 小三号黑体, left aligned.
- Subsection title: 四号黑体, left aligned.
- Figure/table caption title: 小四号黑体, centered.
- Figure/table notes: 五号宋体.
- Header and page number: 五号宋体, centered.

## Header And Page Numbers

- Header appears in the main body only: 绪论、正文、结论.
- Odd-page header: thesis title.
- Even-page header: 华南师范大学博/硕士学位论文.
- Header has a 1.5 pt solid rule.
- Main body page numbers use Arabic numerals.
- Abstract, table of contents, figure/table lists, and notation use Roman numerals.
- Cover, English inner cover, and defense certificate have no page number.
- Page number is centered in the footer.

## Figures, Tables, And Equations

- Figures should be self-explanatory and numbered.
- Figures may be numbered by chapter, for example `图3.1`.
- Figure title follows the figure number, separated by one Chinese-character space, centered below the figure.
- Tables should be self-explanatory and numbered.
- Tables may be numbered by chapter, for example `表3.2`.
- Table title follows the table number, separated by one Chinese-character space, centered above the table.
- Three-line tables are recommended.
- Table headers should not use slash-separated headings.
- Equations are displayed separately and numbered at the right.
- If equations are numerous, chapter-based numbering may be used, for example `3-2`.

## Abstract And Keywords

- Chinese abstract is generally around 600 Chinese characters for a master's thesis.
- Abstract should summarize purpose, core content, method, innovation, and significance.
- Abstract should avoid formulas, figures, tables, and citations.
- Keywords are generally 3 to 5 terms.
- Chinese keywords use Chinese semicolons.
- English abstract and keywords should be consistent with the Chinese version.

## Chapter Numbering

- Main body should be written by chapters.
- Each chapter begins on a new page and chapter first pages should be odd pages.
- Chapter titles should generally not exceed four levels and should not exceed 15 Chinese characters.
- Science and engineering numbering is recommended as: `1`, `1.1`, `1.1.1`.

## References

- References must include all cited sources.
- References are placed after the main body and begin on a new page.
- Reference style should follow GB/T 7714-2015.
- In-text citation style should be consistent through the thesis.
- Sequential numeric coding is allowed and must stay consistent.

## AI And Originality Statements

- The AI tool declaration must be selected and signed truthfully by the author.
- It should disclose tool names and concrete purposes when AI tools are used.
- The author remains responsible for originality, truthfulness, and academic norms.
- Originality statement is signed by the author.
- Authorization statement is signed by both author and supervisor.
- The two statements are placed on the same page in the official template.

## Implemented In This LaTeX Project

- `scnuthesis.cls` sets A4 paper, 2.5 cm margins, 1.5 line spacing, two-character paragraph indent, chapter/section/subsection title styles, figure/table captions, chapter-based figure/table numbering, and equation numbering as `chapter-number`.
- `main.tex` orders front matter, body, references, and back matter according to the official structure, except that the defense certificate and signed official scan pages are represented by placeholders until the formal thesis stage.
- Font setup uses Windows fonts when present and Noto/Fandol fallbacks on Overleaf.

