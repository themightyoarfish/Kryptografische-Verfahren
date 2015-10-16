\ProvidesClass{Crypto}
\LoadClass{scrartcl}
\newcounter{sheetno}
\newcommand*{\sheet}[1]{\setcounter{sheetno}{#1}}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\sffamily\bfseries}{Aufgabe \arabic{sheetno}.\arabic{section}:}{1em}{}[]
\titleformat{\subsection}[hang]{\sffamily\bfseries}{\alph{subsection})}{1em}{}[]

\PassOptionsToPackage{ngerman}{babel}
\RequirePackage{babel}
\PassOptionsToPackage{utf8x}{inputenc}
\RequirePackage{inputenc}

\title{Kryptografische Verfahren --- Übungsblatt \arabic{sheetno}}

\author{André Bajorat \and Rasmus Diederichsen \and Lisa Goerke \and Sebastian
Höffner \and Kristin Schmidt}

\date{\today}

\PassOptionsToPackage{dvipsnames}{xcolor}
\RequirePackage{xcolor}
\RequirePackage{microtype,textcomp,xcolor,listings,tikz,
IEEEtrantools,array,amsmath,amssymb,graphicx,subcaption,
lmodern,enumitem}
\PassOptionsToPackage{
       hyperfootnotes=true,
       colorlinks,
       bookmarksnumbered = true,
       linkcolor = teal,
       plainpages = false,
       }{hyperref}
\RequirePackage{hyperref}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}

\RequirePackage{eulervm}

\AtBeginDocument{
  \hypersetup{
    pdftitle    = {Kryptografische Verfahren -- \"Ubungsblatt \arabic{sheetno}},
    pdfauthor   = {André Bajorat, Rasmus Diederichsen, Lisa Goerke, Sebastian Höffner, Kristin Schmidt},
    pdfsubject  = {\@title},
    pdfcreator  = {LaTeX},
  }
}

