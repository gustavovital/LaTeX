\NeedsTeXFormat{LaTeX2e}[2015/01/01]
\ProvidesClass{final}

% OPÇÕES E IF'S

\LoadClass[twoside,12pt]{article}

% PACOTES
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{times}
\RequirePackage[brazil]{babel}
\RequirePackage[a4paper,left=3cm,right=3cm,top=3.5cm,bottom=5cm]{geometry}
\RequirePackage[font=small,labelsep=endash,labelfont=bf]{caption}
\RequirePackage{graphicx}
\RequirePackage{titling}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{color}
\RequirePackage[alf]{abntex2cite}
\RequirePackage{lipsum}
\RequirePackage{quoting}


\settowidth{\thanksmarkwidth}{*}
\setlength{\thanksmargin}{0pt}
\thanksmarkseries{fnsymbol}
%\thanksfootextra{}{\hfill}

\renewcommand{\and}{\\}
\setlength{\droptitle}{-3em} 
\preauthor{\centering\itshape\large\lineskip 0.5em }
\postauthor{\par\lineskip 1.5em}
\pretitle{\centering\Large}
\posttitle{\par\vskip 0.8em \bfseries\large RESENHA \par\vskip 0.8em}
\predate{\centering\vskip 0.5em}
\postdate{\par\lineskip 0.5em}


\newenvironment{present}{%
\noindent\color{blue}\rule[.25\baselineskip]{\textwidth}{.5pt}
    {\bfseries\noindent\large\color{blue}{Apresentação} \vspace{.25\baselineskip}\\ \noindent}\color{blue}{\itshape}
    \small
}
{\par\noindent\rule[.5\baselineskip]{\textwidth}{.5pt}}

%\newenvironment{coment}
%{\noindent\color{red}{\itshape}}
%{}

\newenvironment{coment}
{\begin{quoting}[rightmargin=0cm,leftmargin=3cm]\noindent\itshape\color{red}{\itshape}}
{\end{quoting}
}
