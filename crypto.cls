\LoadClass[11pt,a4paper,oneside]{article}
\ProvidesClass{crypto}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[ngerman]{babel}

\RequirePackage[top=2cm, bottom=2.5cm, left=2.5cm, right=2cm]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\PassOptionsToPackage{
       hyperfootnotes=true,
       colorlinks,
       bookmarksnumbered = true,
       linkcolor = teal,
       plainpages = false,
       }{hyperref}
\RequirePackage{hyperref}

\RequirePackage{tikz}
\usetikzlibrary{positioning,calc}
\tikzset{box/.style={draw,shape=rectangle,minimum width=2cm,minimum
height=2cm,text width=1cm,inner sep=1pt,text centered}}

\RequirePackage{amsmath,amssymb}
\RequirePackage{IEEEtrantools}
\RequirePackage{listings}
\RequirePackage{eulervm}
\usepackage{mathtools}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}

\renewcommand{\familydefault}{\sfdefault}

% fancyhdr setup
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\cfoot{\footnotesize Kryptographische Verfahren, Wintersemester 2015/2016, Lösungen zu Übungsblatt \arabic{sheetno}, Seite \thepage\ von \pageref*{LastPage}}
\pagestyle{fancy}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\sffamily\bfseries}{Aufgabe \arabic{sheetno}.\arabic{section}.}{1em}{}[]
\titleformat{\subsection}[hang]{\sffamily\bfseries}{\alph{subsection})}{1em}{}[]

% font and hypersetup
\AtBeginDocument{
  \usefont{\encodingdefault}{cmss}{m}{n}
  \hypersetup{
    pdftitle    = {Kryptographische Verfahren -- \"Ubungsblatt \arabic{sheetno}},
    pdfauthor   = {André Bajorat, Rasmus Diederichsen, Lisa Goerke, Sebastian Höffner, Kristin Schmidt},
    pdfsubject  = {Kryptographische Verfahren -- \"Ubungsblatt \arabic{sheetno}},
    pdfcreator  = {LaTeX},
  }
  \thispagestyle{empty}
  }

%
% custom commands
%

% sheet: sets the sheet counter
\newcounter{sheetno}
\newcommand*{\sheet}[1]{\setcounter{sheetno}{#1}}

\def\maketitle{ %
  \noindent André Bajorat \hfill Sebastian Höffner\\
  Rasmus Diederichsen \hfill Kristin Schmidt\\ 
  Lisa Goerke \hfill
  \begin{center}\LARGE
  Lösungen zu Übungsblatt \arabic{sheetno}\\
  Kryptographische Verfahren
  \vskip\baselineskip
  \hrule
  \normalsize
  \vspace{2mm}
  \hfill Besprechung \@date
  \end{center}
} % end \maketitle

\lstset{
   basicstyle=\footnotesize\ttfamily,
   breaklines=true,
   commentstyle=\color{blue},
   keywordstyle=\color{NavyBlue}\textbf,
   numberstyle=\tiny\color{gray},
   numbers=left,
   stringstyle=\color{orange},
   xleftmargin=1cm,
}

\newcommand{\mcal}[1]{\mathcal{#1}} 
