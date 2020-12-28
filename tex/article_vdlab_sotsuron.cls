%2011 2/1��defined by OBANA%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_vdlab_sotsuron}

\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{12pt}{\OptionNotUsed}

\DeclareOption{twocolumn}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jarticle}}

\ProcessOptions\relax

\LoadClass[12pt,a4paper]{jarticle}

\RequirePackage[latin1]{inputenc}   % for unix users
%\RequirePackage[ansinew]{inputenc}  %  for windows users
%\RequirePackage[aplemac]{inputenc}  % for mac users

\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{verbatim}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,amsbsy,amsmath}
\RequirePackage{latexsym}
\RequirePackage{bm}
\RequirePackage{a4}
\RequirePackage{fancyhdr}
\RequirePackage{engord}
\RequirePackage{epsfig,vmargin,booktabs}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage[all]{hypcap}
\RequirePackage{url}
\RequirePackage{amsmath}

\setpapersize{A4}  % needs vmargin package
%\setmarginsrb{left}{top}{right}{bottom}{headh1gt}{headsep}{foothgt}{footskip}
%�إå����եå��ʤɤ�����
\setmarginsrb{25mm}{25mm}{25mm}{25mm}{0mm}{0mm}{0mm}{0mm}
% headsep:  Distance from bottom of header to the body of text on a page.
% foorskip: Distance from bottom of body to the bottom of the footer (the footer is the text at the bottom of each page).
%\columnsep=1cm

%�޲�����;��������
\setlength{\abovecaptionskip}{0mm}
\setlength{\belowcaptionskip}{0mm}
\setlength{\floatsep}{0mm}
\setlength{\textfloatsep}{0mm}
\setlength{\intextsep}{3mm}
\setlength{\dblfloatsep}{0mm}
\setlength{\dbltextfloatsep}{0mm}

% Hyperlinks
\hypersetup{colorlinks=true}
\hypersetup{
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=blue
}
\urlstyle{same}

%�������ȥ�

\def\jtitle#1{
\LARGE{#1}\\\vspace{20pt}
}

\def\etitle#1{\textbf{
\large{\bf{#1}}\\\vspace{20pt}}
}

\def\authors#1{
\normalsize{ビークルダイナミクス研究室}{#1}\\\vspace{5pt}
}

\def\eauthors#1{
\normalsize{Vehicle Dynamics Laboratory}{#1}\\\vspace{10pt}
}

\def\section#1{
\\\vspace{15pt}
}

\def\subsection#1{
\\\vspace{15pt}
}
\def\subsubsection#1{
\\\vspace{15pt}
}

%�����ץ������Ρ����������ޤ�Fig,ɽ��Table��

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \iftdir\sbox\@tempboxa{#1\hskip1zw#2}%
    \else\sbox\@tempboxa{#1\hskip1zw #2}%
  \fi
  \ifdim \wd\@tempboxa >\hsize
    \iftdir #1\hskip1zw#2\relax\par
      \else #1\hskip1zw #2\relax\par\fi
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\renewcommand{\figurename}{Fig.}
\renewcommand{\tablename}{Table}
\renewcommand{\@biblabel}[1]{\#1.}
\renewcommand\@makefntext[1]{\parindent 1em
  \noindent\hbox to 1.8em{\hss\@makefnmark}\#1}

\renewcommand{\thefigure}{%
   \thesection\arabic{figure}}
\@addtoreset{figure}{section}
\@addtoreset{figure}{chapter}

\renewcommand{\thetable}{%
    \thesection\arabic{table}}
\@addtoreset{table}{section}

\renewcommand{\theequation}{%
  \thesection\arabic{equation}}
\@addtoreset{equation}{section}


%��ɽ�ڤӿ����λ�����ˡ������

\def\fgref#1{Fig. \ref{#1}}
\def\tbref#1{Table. \ref{#1}}
\def\eqref#1{Eq. (\ref{#1})}

%���ֹ����դ���������
\setcounter{secnumdepth}{4}
\def\thesection{\arabic{section}.}
\def\thesubsection{\arabic{section}.\arabic{subsection}}
\def\thesubsubsection{%
\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\def\theparagraph{\alph{paragraph}.\hspace*{-.7em}}
\def\thesubparagraph{\roman{subparagraph})}

\newcommand\keywordssec{\@startsection{paragraph}{4}{\z@}{6pt}{-1.1ex}{\bfseries}}

%����ʸ�������դ���
\DeclareRobustCommand\cite{\unskip
 \@ifnextchar[{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}
\def\@cite#1#2{$^{\hbox{\scriptsize[{#1\if@tempswa , #2\fi}]}}$}
\def\@biblabel#1{[#1]}

\def\keywords{
\begin{normalsize}
\keywordssec{Keywords:\space}
}
\def\endkeywords{\end{normalsize}}


%�Ϥ�ʸ�����礭���ʤɤ�����
\renewcommand{\section}{
	\@startsection{section}{1}{\z@}
	{.3\Cvs \@plus.5\Cdp \@minus.2 \Cdp}
	{.8\Cvs \@plus.3\Cdp}
	{\reset@font\LARGE\bfseries}}

\renewcommand{\subsection}{
	\@startsection{subsection}{1}{\z@}
	{.3\Cvs \@plus.5\Cdp \@minus.2 \Cdp}
	{.5\Cvs \@plus.3\Cdp}
	{\reset@font\Large\bfseries}}

\renewcommand{\subsubsection}{
	\@startsection{subsubsection}{1}{\z@}
	{.3\Cvs \@plus.5\Cdp \@minus.2 \Cdp}
	{.5\Cvs \@plus.3\Cdp}
	{\reset@font\large\bfseries}}


\endinput

\begin{document}
  content
\end{document}

\documentclass
