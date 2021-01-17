\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_vdlab_sotsuron_youshi}

\DeclareOption{10pt}{\OptionNotUsed}  
\DeclareOption{12pt}{\OptionNotUsed}  
%\DeclareOption{twocolumn}{\OptionNotUsed}  

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jarticle}}  

\ProcessOptions\relax  
  
\LoadClass[10pt,a4paper]{jarticle}  

\RequirePackage[latin1]{inputenc}   % for unix users
%\RequirePackage[ansinew]{inputenc}  %  for windows users
%\RequirePackage[aplemac]{inputenc}  % for mac users

\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx}
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
\setmarginsrb{10mm}{17mm}{10mm}{12.7mm}{0mm}{0mm}{0mm}{0mm}
% headsep:  Distance from bottom of header to the body of text on a page.
% foorskip: Distance from bottom of body to the bottom of the footer (the footer is the text at the bottom of each page).
%\columnsep=1cm

% Hyperlinks
\hypersetup{colorlinks=true}
\hypersetup{
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=blue
}
\urlstyle{same}

%　タイトル	
\def\jtitle#1{\textbf{
  \Large{\bf{#1}}\\\vspace{4pt}}
}

\def\jauthors#1{
  \normalsize{ビークルダイナミクス研究室}\hspace{50pt}{#1}\\\vspace{4pt}
}

\def\etitle#1{
  \large{{#1}}\\\vspace{4pt}}

\def\eauthors#1{
  \normalsize{Vehicle Dynamics Laboratory\hspace{50pt}{#1}}\\\vspace{12pt}
}

%キャプションの：を削除．図をFig,表をTableに

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
%\renewcommand{\@biblabel}[1]{#1.}
\renewcommand\@makefntext[1]{\parindent 1em
  \noindent\hbox to 1.8em{\hss\@makefnmark}#1}
%図表及び数式の参照方法を定義

\def\fgref#1{Fig. \ref{#1}}
\def\tbref#1{Table. \ref{#1}}
\def\eqref#1{｝Eq. (\ref{#1})}


\newcommand\keywordssec{\@startsection{paragraph}{4}{\z@}{6pt}{-1.1ex}{\bfseries}}
%章番号の付け方を設定 
\setcounter{secnumdepth}{4}
\def\thesection{\arabic{section}.}
\def\thesubsection{\arabic{section}.\arabic{subsection}}
\def\thesubsubsection{%
\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\def\theparagraph{\alph{paragraph}.\hspace*{-.7em}}
\def\thesubparagraph{\roman{subparagraph})}

\def\keywords{
\begin{normalsize}
\keywordssec{Keywords:\space}
}
\def\endkeywords{\end{normalsize}}

\DeclareRobustCommand\cite{\unskip
 \@ifnextchar[{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}
\def\@cite#1#2{$^{\hbox{\scriptsize[{#1\if@tempswa , #2\fi}]}}$}

\renewcommand{\section}{%
	\@startsection{section}{1}{\z@}%
	{.3\Cvs \@plus.5\Cdp \@minus.2 \Cdp}%
	{.2\Cvs \@plus.3\Cdp}%
	{\centering\reset@font\bfseries}%
%ここから上の%を消すと大変なことになります．なぜか．
}

\renewcommand{\subsection}{
	\@startsection{subsection}{1}{\z@}
	{.3\Cvs \@plus.5\Cdp \@minus.2 \Cdp}
	{.2\Cvs \@plus.3\Cdp}
	{\reset@font\bfseries}
}

\renewcommand{\subsubsection}{
	\@startsection{subsubsection}{1}{\z@}
	{.2\Cvs \@plus.5\Cdp \@minus.2 \Cdp}
	{.1\Cvs \@plus.3\Cdp}
	{\reset@font\bfseries}
}
	
\endinput