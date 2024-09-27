\NeedsTeXFormat{LaTeX2e}[2019/02/10]
\ProvidesClass{workbook}
[2019/02/16 v-1.0 workbook, Autor: Gustavo Vital]

\LoadClass[a4paper,11pt, twoside]{report}

% PACOTES
\RequirePackage[left=3cm, right=3cm, top=3.5cm, bottom=3.5cm]{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{wallpaper} % For the full-page background image
\RequirePackage{amsmath}
\RequirePackage{lipsum}
\RequirePackage{sectsty}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{listings}
\RequirePackage[T1]{fontenc}
\RequirePackage{emptypage}
\RequirePackage{longtable}
\RequirePackage{inconsolata}
\RequirePackage{float}
\RequirePackage{pdfpages}
\RequirePackage{transparent} % Add transparency support


% Listing setup for Python code
\lstset{
    language=Python, 
    basicstyle=\ttfamily\small,
    numberstyle=\footnotesize,
    tabsize=2,
    escapeinside={\%*}{*)},
    breaklines=true,
    breakatwhitespace=false,
    extendedchars=false,
    inputencoding=utf8
}

%% HEADER AND FOOTER SETUP
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\leftmark}
\fancyhead[RE,LO]{\thepage}

%% COLOR DEFINITIONS
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}
\definecolor{namecolor}{cmyk}{1,.50,0,.20} 

%% FONT DEFINITIONS FOR TITLES
\chapterfont{\color{namecolor}\huge}
\sectionfont{\color{namecolor}\LARGE}
\subsectionfont{\color{namecolor}\Large}
\subsubsectionfont{\color{namecolor}\large}

%% COVER PAGE COMMAND
\newcommand{\nome}{}  % Define empty \nome, set in the main file

\RequirePackage{transparent} % Add transparency support

\newcommand{\capa}{
    \begin{titlepage}
        \thispagestyle{empty} % No header or footer

        % Full-page background image using wallpaper with opacity
        \begin{transparent}{0.5} % Adjust the opacity here (0.5 means 50%)
            \CenterWallPaper{1.5}{cover01.jpeg} % The image you uploaded
        \end{transparent}

        % Overlay text on the cover page
        \vspace*{7cm} % Adjust vertical space for the title
        \noindent
        \hspace*{4cm} % Adjust horizontal space
        \color{white} % Set text color to white for contrast
        \textbf{\huge \textbf{UNIVERSITY OF PORTO}}\\
        \textcolor{namecolor}{\textsf{\textbf{FACULTY OF ECONOMICS}}}\\[3ex]
        {\Huge \textsf{\nome}}\\
        
        \vspace*{2cm} % Adjust vertical space for subtitle or additional text
        \noindent
        \hspace*{4cm} % Adjust horizontal space
        \textcolor{white}{\Large An Introduction to Microeconomics}\\ % Subtitle or any other content
        
        \vfill
        \noindent
        \hspace*{4cm} % Adjust horizontal space
        {\Large \textsf{\today}} % Date
    \end{titlepage}
}

%% REMOVE PAGE NUMBER FROM CHAPTER PAGES
\makeatletter
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{empty}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\makeatother
