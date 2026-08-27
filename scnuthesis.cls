\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scnuthesis}[2026/08/27 SCNU 0854 professional master thesis class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[UTF8,a4paper,zihao=-4,openright]{ctexbook}

\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{scnuthesis}{This template requires XeLaTeX}{Compile with XeLaTeX on Overleaf or locally.}
\fi

\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{caption}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{amsmath,amssymb,bm}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage[backend=biber,style=gb7714-2015,sorting=none,gbnamefmt=lowercase]{biblatex}

\defaultfontfeatures{Ligatures=TeX}
\IfFontExistsTF{Times New Roman}{\setmainfont{Times New Roman}}{\setmainfont{TeX Gyre Termes}}
\IfFontExistsTF{Arial}{\setsansfont{Arial}}{\setsansfont{TeX Gyre Heros}}
\IfFontExistsTF{Courier New}{\setmonofont{Courier New}}{\setmonofont{TeX Gyre Cursor}}

\IfFontExistsTF{SimSun}{
  \setCJKmainfont[BoldFont=SimHei,ItalicFont=KaiTi]{SimSun}
  \setCJKsansfont{SimHei}
  \setCJKmonofont{FangSong}
  \setCJKfamilyfont{zhsong}{SimSun}
  \setCJKfamilyfont{zhhei}{SimHei}
  \setCJKfamilyfont{zhkai}{KaiTi}
  \setCJKfamilyfont{zhfs}{FangSong}
}{
  \IfFontExistsTF{Noto Serif CJK SC}{
    \setCJKmainfont[BoldFont=Noto Sans CJK SC,ItalicFont=FandolKai-Regular]{Noto Serif CJK SC}
    \setCJKsansfont{Noto Sans CJK SC}
    \setCJKmonofont{FandolFang-Regular}
    \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}
    \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}
    \setCJKfamilyfont{zhkai}{FandolKai-Regular}
    \setCJKfamilyfont{zhfs}{FandolFang-Regular}
  }{
    \setCJKmainfont[BoldFont=FandolHei-Regular,ItalicFont=FandolKai-Regular]{FandolSong-Regular}
    \setCJKsansfont{FandolHei-Regular}
    \setCJKmonofont{FandolFang-Regular}
    \setCJKfamilyfont{zhsong}{FandolSong-Regular}
    \setCJKfamilyfont{zhhei}{FandolHei-Regular}
    \setCJKfamilyfont{zhkai}{FandolKai-Regular}
    \setCJKfamilyfont{zhfs}{FandolFang-Regular}
  }
}

\newcommand{\song}{\CJKfamily{zhsong}}
\newcommand{\hei}{\CJKfamily{zhhei}}
\newcommand{\kai}{\CJKfamily{zhkai}}
\newcommand{\fs}{\CJKfamily{zhfs}}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

\geometry{
  top=2.5cm,
  bottom=2.5cm,
  left=2.5cm,
  right=2.5cm,
  headheight=15pt,
  headsep=0.5cm,
  footskip=1.0cm,
  includeheadfoot
}
\onehalfspacing
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}

\ctexset{
  chapter = {
    format = \centering\hei\zihao{-2},
    name = {},
    number = \arabic{chapter},
    aftername = \quad,
    beforeskip = 24pt,
    afterskip = 18pt,
    fixskip = true
  },
  section = {
    format = \raggedright\hei\zihao{-3},
    aftername = \quad,
    beforeskip = 18pt,
    afterskip = 9pt
  },
  subsection = {
    format = \raggedright\hei\zihao{4},
    aftername = \quad,
    beforeskip = 12pt,
    afterskip = 6pt
  },
  subsubsection = {
    format = \raggedright\hei\zihao{-4},
    aftername = \quad
  }
}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\renewcommand{\thetable}{\thechapter.\arabic{table}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}
\numberwithin{equation}{chapter}

\captionsetup{
  font={small,bf},
  labelsep=quad,
  justification=centering,
  singlelinecheck=false
}
\captionsetup[figure]{position=bottom}
\captionsetup[table]{position=top}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=black,
  urlcolor=black,
  pdfborder={0 0 0}
}

\newcommand{\scnu@titlecn}{【模板测试内容，不属于正式论文正文】论文题目}
\newcommand{\scnu@titleen}{Template Test Title, Not Formal Thesis Text}
\newcommand{\scnu@author}{【模板测试内容，不属于正式论文正文】作者}
\newcommand{\scnu@studentid}{2020XXXXXX}
\newcommand{\scnu@major}{电子信息}
\newcommand{\scnu@direction}{三维医学图像分割}
\newcommand{\scnu@school}{电子科学与工程学院（微电子学院）}
\newcommand{\scnu@supervisor}{【模板测试内容，不属于正式论文正文】导师}
\newcommand{\scnu@cosupervisor}{【模板测试内容，不属于正式论文正文】校外导师}
\newcommand{\scnu@datecn}{二〇二六 年 六 月}
\newcommand{\scnu@dateen}{JUNE 2026}
\newcommand{\scnu@classification}{}
\newcommand{\scnu@udc}{}
\newcommand{\scnu@secret}{公开}

\newcommand{\thesistitlecn}[1]{\renewcommand{\scnu@titlecn}{#1}}
\newcommand{\thesistitleen}[1]{\renewcommand{\scnu@titleen}{#1}}
\newcommand{\thesisauthor}[1]{\renewcommand{\scnu@author}{#1}}
\newcommand{\studentid}[1]{\renewcommand{\scnu@studentid}{#1}}
\newcommand{\major}[1]{\renewcommand{\scnu@major}{#1}}
\newcommand{\researchdirection}[1]{\renewcommand{\scnu@direction}{#1}}
\newcommand{\schoolname}[1]{\renewcommand{\scnu@school}{#1}}
\newcommand{\supervisor}[1]{\renewcommand{\scnu@supervisor}{#1}}
\newcommand{\cosupervisor}[1]{\renewcommand{\scnu@cosupervisor}{#1}}
\newcommand{\datecn}[1]{\renewcommand{\scnu@datecn}{#1}}
\newcommand{\dateen}[1]{\renewcommand{\scnu@dateen}{#1}}
\newcommand{\classification}[1]{\renewcommand{\scnu@classification}{#1}}
\newcommand{\udc}[1]{\renewcommand{\scnu@udc}{#1}}
\newcommand{\secretlevel}[1]{\renewcommand{\scnu@secret}{#1}}

\newcommand{\makethesistitle}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \song\zihao{4}
    \noindent 分类号：\scnu@classification\hfill 密级：\scnu@secret\par
    \noindent UDC：\scnu@udc\hfill 学号：\scnu@studentid\par
    \vspace*{2.0cm}
    \centering
    {\zihao{3} South China Normal University\par}
    \vspace{1.0cm}
    {\hei\zihao{2} 硕士学位论文\par}
    \vspace{0.4cm}
    {\song\zihao{4} （专业学位）\par}
    \vspace{1.6cm}
    {\hei\zihao{2}\scnu@titlecn\par}
    \vspace{2.0cm}
    \begin{tabular}{>{\song\zihao{4}}r>{\song\zihao{4}}l}
      学位申请人： & \scnu@author \\
      学科专业： & \scnu@major \\
      论文研究方向： & \scnu@direction \\
      所在学院： & \scnu@school \\
      导师姓名及职称： & \scnu@supervisor \\
      校外（行业）导师姓名： & \scnu@cosupervisor \\
    \end{tabular}
    \vfill
    {\song\zihao{4}\scnu@datecn\par}
  \end{titlepage}
  \cleardoublepage
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    {\zihao{3} South China Normal University\par}
    \vspace{1.0cm}
    {\zihao{2} A Dissertation Submitted for the Degree of Master\par}
    \vspace{1.8cm}
    {\bfseries\zihao{2}\scnu@titleen\par}
    \vspace{2.0cm}
    \begin{tabular}{rl}
      Supervisor: & \scnu@supervisor \\
      Candidate: & \scnu@author \\
      Major: & \scnu@major \\
      Research direction: & \scnu@direction \\
      Department/School: & \scnu@school \\
    \end{tabular}
    \vfill
    {\zihao{4}\scnu@dateen\par}
  \end{titlepage}
  \cleardoublepage
}

\fancypagestyle{scnumain}{%
  \fancyhf{}
  \fancyhead[CO]{\song\zihao{5}\scnu@titlecn}
  \fancyhead[CE]{\song\zihao{5}华南师范大学硕士学位论文}
  \fancyfoot[C]{\song\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{1.5pt}
}

\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyfoot[C]{\song\zihao{5}\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

\newcommand{\frontchapter}[1]{%
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}

