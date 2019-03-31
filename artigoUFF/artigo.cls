\NeedsTeXFormat{LaTeX2e}[2015/01/01]
\ProvidesClass{artigo}
[05/02/2019 1.0 -- Gustavo Vital]

% OPÇÕES E IF'S
\newif\if@final

\DeclareOption{final}{\@finaltrue}

\ExecuteOptions{} % default
\ProcessOptions\relax
\LoadClass[twoside,12pt]{article}

% PACOTES
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{times}
\RequirePackage[english,brazil]{babel}
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
%\RequirePackage{booktabs}
\RequirePackage{ctable}
\RequirePackage[alf]{abntex2cite}


\settowidth{\thanksmarkwidth}{*}
\setlength{\thanksmargin}{0pt}
\thanksmarkseries{fnsymbol}
%\thanksfootextra{}{\hfill}

\date{}
\renewcommand{\and}{\\}
\setlength{\droptitle}{-3em} % reduz espaço acima do título.
\preauthor{\flushleft\itshape\large\lineskip 0.5em}
\postauthor{\par}
\pretitle{\flushleft\Large\textbf}
\posttitle{\par\vskip 1.5em}
\predate{\relax}
\postdate{\relax}



\newenvironment{resumo}{\thispagestyle{empty}
    \noindent\rule[.25\baselineskip]{\textwidth}{.5pt}
    {\bfseries\noindent Resumo \vspace{.25\baselineskip}\\ \noindent}%
    \small
}{%
    \par\noindent\rule[.5\baselineskip]{\textwidth}{.5pt}
    \vspace{-2em} % reduz espaço entre resumo e primeira seção.
}

\setlength{\parskip}{0.8ex} % Decidir tamanho
\titleformat{\section}{\bfseries\large}{\thesection}{2\wordsep}{}
\titleformat{\subsection}{\bfseries\normalsize}{\thesubsection}{2\wordsep}{}
\DeclareMathOperator{\sen}{sen}
\input{fleqn.clo}
\setlength{\mathindent}{\parindent}
 
