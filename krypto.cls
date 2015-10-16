\LoadClass[11pt,a4paper,oneside]{article}
\ProvidesClass{krypto}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}

\RequirePackage[top=2cm, bottom=2.5cm, left=2.5cm, right=2cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\RequirePackage{amsmath}

% fancyhdr setup
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\cfoot{\footnotesize Kryptographische Verfahren, Wintersemester 2015/2016, Lösungen zu Übungsblatt \@sheet, Seite \thepage\ von \pageref{LastPage}}
\pagestyle{fancy}

% font setup
\AtBeginDocument{\usefont{\encodingdefault}{cmss}{m}{n}}

%
% custom commands
%

% sheet: sets the sheet counter and headers etc
\def\sheet#1{\gdef\@sheet{#1}}

\def\maketitle{%
  \noindent André Bajorat \hfill Sebastian Höffner\\
  Rasmus Diederichsen \hfill Kristin Schmidt\\ 
  Lisa Goerke \hfill
  \begin{center}\LARGE
  Lösungen zu Übungsblatt \@sheet\\
  Kryptographische Verfahren
  \hrule
  \normalsize
  \vspace{2mm}
  \hfill Besprechung \@date
  \end{center}
} % end \maketitle

\newcounter{exercise}
\newcounter{subexercise}[exercise]
\def\exercise#1{\stepcounter{exercise}\ifnum\value{exercise}>1 \bigskip\fi\textbf{Aufgabe \@sheet.\arabic{exercise}.\quad#1}}
\def\subexercise{\stepcounter{subexercise}\ifnum\value{subexercise}>1 \medskip\fi\textbf{(\alph{subexercise})}}
