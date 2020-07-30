%%
%% This is file `tex/sgcbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `doc,book')
%% 
%% Copyright (C) 2019-2020, Samuel Gonzalez Castillo.
%% All rights reserved.
%% 

%%fakesection Basic setup and options

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sgcbook}

\LoadClass[reqno,12pt]{book}

\newif\ifspanish\spanishfalse
\newif\ifsans\sansfalse
\newif\iftimes\timesfalse
\newif\ifhelvet\helvetfalse
\newif\iflegacy\legacyfalse
\DeclareOption{es}{\spanishtrue}
\DeclareOption{sans}{\sanstrue}
\DeclareOption{lm}{\legacytrue}
\DeclareOption{times}{\legacytrue\timestrue}
\DeclareOption{helvet}{\legacytrue\timestrue\helvettrue}

\newif\ifswap\swapfalse
\newif\ifwithin\withinfalse
\newif\ifzero\zerofalse
\newif\ifafive\afivefalse
\newif\ifspaced\spacedfalse
\newif\ifprint\printfalse
\DeclareOption{swap}{\swaptrue}
\withintrue
\DeclareOption{zero}{\zerotrue}
\DeclareOption{a5}{\afivetrue}
\DeclareOption{spaced}{\spacedtrue}
\DeclareOption{print}{\printtrue}

\ProcessOptions\relax

%%fakesection Packages
\RequirePackage{geometry, graphicx, tikz, pgfplots, circuitikz}
\RequirePackage{enumitem, import, centernot, cancel, array, tabu, soul}
\RequirePackage{amsmath, amssymb, amsthm, thmtools, braket, qcircuit, mathtools}
\RequirePackage[final]{listings}
\RequirePackage[most]{tcolorbox}
\RequirePackage[utf8]{inputenc} % Redundant since 2018, but still.
\RequirePackage[separate-uncertainty = true]{siunitx}
\RequirePackage[inline]{asymptote}
\RequirePackage{xstring}

\usetikzlibrary{arrows.meta, calc, decorations.markings, math}
\usetikzlibrary{intersections,patterns, cd}

\sethlcolor{yellow}
\tabulinesep=0.4em

\RequirePackage{titlesec, tocstyle}
\usetocstyle{standard}
\RequirePackage{fancyhdr, background}
\RequirePackage[pdfusetitle,hidelinks,final,
colorlinks = true, linkcolor = black,
urlcolor=blue,filecolor=black,citecolor=black]{hyperref}

\SetBgOpacity{1}
\SetBgAngle{90}
\SetBgScale{1.5}
\SetBgColor{black}

%%fakesection Fonts

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket}}
\unimathsetup{math-style=french, bold-style=upright, sans-style=upright}

\iflegacy

\iftimes
\ifhelvet
\renewcommand\familydefault\sfdefault
\fi

\setmainfont{XITS}[
Extension = .otf,
UprightFont = {*-Regular},
BoldFont = {*-Bold},
ItalicFont = {*-Italic},
BoldItalicFont = {*-BoldItalic}]

\setsansfont{texgyreheros}[
Extension = .otf,
UprightFont = {*-regular},
BoldFont = {*-bold},
ItalicFont = {*-italic},
BoldItalicFont = {*-bolditalic}]

\setmathfont{XITSMath-Regular.otf}
\fi

\else

\setmainfont{tlmroman}[
Extension = .otf,
Ligatures = {TeX},
UprightFont = {*10-regular},
UprightFeatures = {
SmallCapsFont = {*caps10-regular.otf},
SizeFeatures = {
{Size = -5.5, Font={*5-regular}},
{Size = 5.5-6.5, Font={*6-regular}},
{Size = 6.5-7.5, Font={*7-regular}},
{Size = 7.5-8.5, Font={*8-regular}},
{Size = 8.5-9.5, Font={*9-regular}},
{Size = 9.5-11.5, Font={*10-regular}},
{Size = 11.5-14.5, Font={*12-regular}},
{Size = 14.5-,  Font={*17-regular}}
}
},
BoldFont = {*10-bold},
BoldFeatures = {
SizeFeatures = {
{Size = -5.5, Font={*5-bold}},
{Size = 5.5-6.5, Font={*6-bold}},
{Size = 6.5-7.5, Font={*7-bold}},
{Size = 7.5-8.5, Font={*8-bold}},
{Size = 8.5-9.5, Font={*9-bold}},
{Size = 9.5-11.5, Font={*10-bold}},
  {Size = 11.5-, Font={*12-bold}}
}
},
ItalicFont = {*10-italic},
ItalicFeatures = {
SizeFeatures= {
{Size = -7.5, Font={*7-italic}},
{Size = 7.5-8.5, Font={*8-italic}},
{Size = 8.5-9.5, Font={*9-italic}},
{Size = 9.5-11.5, Font={*10-italic}},
{Size = 11.5-, Font={*12-italic}}
}
},
BoldItalicFont = {*10-bolditalic},
SlantedFont = {lmromanslant10-regular.otf},
SlantedFeatures = {
SmallCapsFont = {lmromancaps10-oblique.otf},
SizeFeatures = {
{Size = -8.5, Font={lmromanslant8-regular.otf}},
{Size = 8.5-9.5, Font={lmromanslant9-regular.otf}},
{Size = 9.5-11.5, Font={lmromanslant10-regular.otf}},
{Size = 11.5-14.5, Font={lmromanslant12-regular.otf}},
{Size = 14.5-, Font={lmromanslant17-regular.otf}}
}
},
BoldSlantedFont = {*slant10-bold.otf},
]


\setmathfont{latinmodern-math.otf}
\setmathfont[range={\varnothing}]{XITSMath-Regular.otf}
\fi

\setmonofont{Hack}[
Extension = .ttf,
Scale = 0.9,
UprightFont = {*-Regular},
BoldFont = {*-Bold},
ItalicFont = {*-Italic},
BoldItalicFont = {*-BoldItalic},
]

%%fakesection Language

\newcommand\str@problem{Problem}
\newcommand\str@license{All rights reserved.}
\newcommand\str@draft{DRAFT}
\newcommand\str@pageblank{This page is intentionally left blank.}
\newcommand\str@appendices{Appendices}
\newcommand\str@release{Release}
\newcommand\char@release{R}
\newcommand\str@abstract{Abstract}

\newcommand\str@theorem{Theorem}
\newcommand\str@lemma{Lemma}
\newcommand\str@definition{Definition}
\newcommand\str@remark{Remark}
\newcommand\str@corollary{Corollary}
\newcommand\str@example{Example}
\newcommand\str@proposition{Proposition}
\newcommand\str@algorithm{Algorithm}

\newcommand\@thmpunct{.}

\ifspanish
\RequirePackage[spanish]{babel}

\usetikzlibrary{babel}

\decimalpoint
\renewcommand\str@problem{Problema}
\renewcommand\str@license{Todos los derechos reservados.}
\renewcommand\str@draft{BORRADOR}
\renewcommand\str@pageblank{Página dejada intencionadamente en blanco.}
\renewcommand\str@appendices{Ap\'endices}
\renewcommand\str@release{Edición}
\renewcommand\char@release{E}
\renewcommand\str@abstract{Resumen}

\addto\captionsspanish{
\renewcommand{\contentsname}{Índice}
}

\renewcommand\@thmpunct{.---}

\renewcommand\str@theorem{Teorema}
\renewcommand\str@lemma{Lema}
\renewcommand\str@definition{Definici\'on}
\renewcommand\str@remark{Observaci\'on}
\renewcommand\str@corollary{Corolario}
\renewcommand\str@example{Ejemplo}
\renewcommand\str@proposition{Proposici\'on}
\renewcommand\str@algorithm{Algoritmo}

\else
\RequirePackage[british]{babel}

\fi

%%fakesection Commands, variables and environments
\newcommand\@compare{}

\newcommand\load[1]{\subimport{#1/}{#1}}
\newcommand\zeroroman[1]{\ifcase\value{#1}\relax0\else\Roman{#1}\fi}
\newcommand{\xfootnote}[2][]{{\renewcommand{\thefootnote}{#1}
\ifx{#1}\empty\footnotetext{#2}\else\footnote{#2}\fi}}
\newcommand{\cml}[1]{\guillemotleft#1\guillemotright}

\renewcommand{\qedsymbol}{$\blacksquare$}
\AtBeginDocument{\renewcommand{\phi}{\varphi}}

\newcommand{\op}[1]{\operatorname{#1}}
\newcommand{\und}[1]{\underline{#1}}
\newcommand{\tx}[1]{\text{#1}}

\newcommand{\di}[1]{\mathop{\mathrm{d}#1}}
\newcommand{\De}[1]{\mathop{\Delta#1}}
\newcommand{\de}[1]{\mathop{\delta#1}}
\newcommand{\mmid}{\;\middle\vert\;}
\newcommand\grad{\vec{\nabla}}

\newcommand\showing[2]{(#1) $\Rightarrow$ (#2)}

\newcommand{\anb}[1]{\langle #1 \rangle}
\newcommand{\Anb}[1]{\left\langle #1 \right\rangle}
\newcommand{\norm}[1]{\Vert #1 \Vert}
\newcommand{\Norm}[1]{\left\Vert #1 \right\Vert}
\newcommand{\abs}[1]{\vert #1 \vert}
\newcommand{\Abs}[1]{\left\vert #1 \right\vert}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\ceil}[1]{\left\lceil #1 \right\rceil}
\newcommand\limplies\rightarrow
\newcommand\liff\leftrightarrow
\newcommand\qsep{.\ }


\newenvironment{lrcases}
{\left\{\begin{aligned}}
{\end{aligned}\right\}}

\definecolor{xfix}{RGB}{249, 181, 169}
\definecolor{xtodo}{RGB}{180, 226, 249}
\newcommand{\soulcolour}{yellow}
\DeclareRobustCommand{\fixme}[1]{\sethlcolor{xfix}\hl{\textbf{FIX ME:} #1}\sethlcolor{\soulcolour}}
\DeclareRobustCommand{\todo}[1]{\sethlcolor{xtodo}\hl{\textbf{TO-DO:} #1}\sethlcolor{\soulcolour}}


\def\@subtitle{}
\date{\today}
\def\@years{\the\year}
\newcommand{\subtitle}[1]{\renewcommand\@subtitle{#1}}
\newcommand{\years}[1]{\renewcommand\@years{#1}}

\newcommand{\printcopyright}{Copyright \copyright \ \@years, \@author.}
\newcommand{\printlicense}{\str@license}
\newcommand{\setcopyright}[1]{\renewcommand\@copyrightstring{#1}}
\newcommand{\setlicense}[1]{\renewcmmand\@license{#1}}


\newcommand\@release{}
\newcommand\@draft{}

\newcommand\@generateversion[1]{
\IfStrEq{\@release}{\@compare}{
\IfStrEq{\@draft}{\@compare}{
\@compare
}{
\str@draft\IfStrEq{\@draft}{nonum}{}{\ \@draft}
}
}{
\IfStrEq{\@draft}{\@compare}{
#1\@release
}{
#1\@release \
(\str@draft\IfStrEq{\@draft}{nonum}{}{\ \@draft})
}
}
}

\newcommand{\shortversion}{\@generateversion{\char@release}}
\newcommand{\longversion}{\@generateversion{\str@release\ }}

\SetBgContents{}

\newcommand{\draft}[1]{
\IfStrEq{#1}{\@compare}
{\renewcommand\@draft{nonum}}{\renewcommand\@draft{#1}}
\SetBgContents{\bfseries\texttt{\shortversion}}}
\newcommand{\release}[2][\@compare]{
\ifx#1\@compare
\renewcommand\@release #2
\else
\renewcommand\@release{#2-#1}
\fi}

%%fakesection Spacing and geometry

\newcommand{\env@sep}{0.6em} % Space between environments.
\newcommand{\head@sep}{1.2em} % Space at the head of certain environments.
\newcommand{\title@space}{2.4em} % Spacing to be used in titles.
\newcommand{\label@sep}{0.4em} % Spaced between labels and text (enum).
\newcommand{\extra@margin}{1.5em} % Additional margin for quotes/abstracts.

\newcommand\abovethm@skip{\env@sep}
\setlength{\partopsep}{0pt plus 0pt minus 0pt}

\ifspaced
\setlength{\parskip}{0.9em}
\setlength{\parindent}{0pt}

\renewcommand\abovethmskip{\parskip}
\renewcommand{\env@sep}{0pt}
\renewcommand{\head@sep}{0pt}
\renewcommand{\title@space}{0pt}

\lstset{aboveskip = \parskip, belowskip=\parskip, xleftmargin=0pt} 

\setlength{\topsep}{0pt}

\else
\setlength{\parskip}{0pt}
\setlength{\parindent}{3em}

\tcbsetforeverylayer{before skip = \head@space, after skip = \env@space}
\lstset{aboveskip = \env@sep, belowskip=\env@sep, xleftmargin=0pt}

\setlength{\topsep}{\env@sep}

\fi

\pagestyle{plain}
\ifafive
\let\small\relax
\let\footnotesize\relax
\let\scriptsize\relax
\let\tiny\relax
\let\large\relax
\let\Large\relax
\let\LARGE\relax
\let\huge\relax
\let\Huge\relax
\input{size10.clo}
\ifprint
\geometry{a5paper,footskip=25pt, headsep=15pt,
top=1.95cm,bottom=1.95cm,inner=2.35cm,outer=1.55cm}
\else
\geometry{a5paper,footskip=25pt, headsep=15pt, margin=1.95cm}
\fi
\SetBgPosition{-1cm, -4.5cm}
\else
\geometry{a4paper,left=4cm,right=4cm,top=3cm,bottom=3cm}
\SetBgPosition{-0.7cm, -7cm}
\fi

%%fakesection Lists and related environments

\ifspaced
\setlist{leftmargin=*, itemindent=0pt,
align = right, labelsep = \label@sep,
listparindent=\parindent, parsep=\parskip,
topsep=\env@sep, itemsep=0pt}
\else
\setlist{leftmargin=\parindent, itemindent=0pt,
align = right, labelsep = \label@sep,
listparindent=\parindent, parsep=\parskip,
topsep=\env@sep, itemsep=0pt}
\fi

\setlist[enumerate,1]{label=\arabic*.,ref=\arabic*}
\setlist[enumerate,2]{
label={\textit{\alph*})},ref={\textit{\alph*})},
listparindent=1.5em,leftmargin=1.5em,
labelsep=0pt,labelwidth=1.5em,align=left}

\newlist{lettered}{enumerate}{1}
\setlist[lettered]{
label={\textit{\alph*})},ref={\textit{\alph*})}} 

\newlist{statements}{enumerate}{1}
\setlist[statements]{
label={(\roman*)},ref=(\roman*)}

\newlist{equivalent}{enumerate}{1}
\setlist[equivalent]{
label=(\alph*),ref=(\alph*)}

\newlist{parlist}{enumerate}{1}
\setlist[parlist]{
label={(\roman*)}\ ,ref=(\roman*),
leftmargin=0pt, align = left, labelsep = 0pt, labelwidth = 0pt,
itemsep=\env@sep}

\newlist{exercises}{enumerate}{1}
\ifspaced
\setlist[exercises]{
label=\textbf{\arabic*)\ },ref=\arabic*,
leftmargin=0pt, align = left, labelsep = 0pt, labelwidth = 0pt,
itemsep=0pt}
\else
\setlist[exercises]{
label=\textbf{\arabic*) },ref=\arabic*,
leftmargin=0pt, align = left, labelsep =*, labelwidth = 0pt,
itemsep=\env@sep, itemindent=\parindent}
\fi

\newlist{quotenum}{enumerate}{1}
\setlist[quotenum]{
leftmargin=\extra@margin,
align = left, labelsep = 0pt, labelwidth = 0pt,
topsep=0pt, itemsep=0pt, font=\small,label=}

\newlist{abstenum}{enumerate}{1}
\setlist[abstenum]{
leftmargin=\extra@margin, rightmargin=\extra@margin,
align = left, labelsep = 0pt, labelwidth = 0pt,
topsep=0pt, itemsep=0pt, font=\small,label=}

\renewenvironment{quote}{\begin{quotenum}\item}{\end{quotenum}}

\newcommand\@deductionref{}
\newenvironment{deduction}[1]{
\renewcommand\@deductionref{#1}
\begin{enumerate}[label=(\arabic*),itemsep=\env@sep]
}{
\end{enumerate}
}
\newcommand\dstep[3][]{\item \label{\@deductionref #1} [#2] \  $#3$}
\newcommand\dref[1]{\ref{\@deductionref #1}}

\newcounter{axiomnum}
\def\axiomletter{}

\newenvironment{axioms}[1][\@compare]{
\ifx#1\@compare
\begin{enumerate}[
label=(\axiomletter\arabic*),noitemsep,
before=\setcounter{enumi}{\value{axiomnum}},
after=\setcounter{axiomnum}{\value{enumi}}] 
\else
\begin{enumerate}[
label={(#1\arabic*)},noitemsep,
after=\setcounter{axiomnum}{\value{enumi}}
\global\def\axiomletter{#1}]
\fi
}{\end{enumerate}}

%%fakesection Colours & Boxes

\lstset{tabsize = 4,
basicstyle=\ttfamily\small,
commentstyle=\color[rgb]{0,0.5,0},
    keywordstyle=\bfseries\color[HTML]{A71D5D},
    stringstyle=\color[HTML]{0086E5},
    showstringspaces=false,
numbers=left,
}

\ifafive
\lstset{basicstyle=\ttfamily\footnotesize}
\fi

\definecolor{xgreen}{RGB}{0, 124, 60}
\definecolor{xred}{RGB}{170, 8, 42}
\definecolor{xblue}{RGB}{0, 106, 182}
\definecolor{xaqua}{RGB}{2, 165, 195}
\definecolor{xpurple}{RGB}{198, 0, 118}
\definecolor{xyellow}{RGB}{212, 157, 15}

\definecolor{xblack}{RGB}{0,0,0}
\definecolor{xsilver}{RGB}{52, 73, 94}
\definecolor{xgrey}{rgb}{0.87,0.87,0.87}

\newcommand\light[1]{#1!13}


\tcbsetforeverylayer{sharp corners,
colback = xgrey,
colframe = xblack,
before skip = \parskip,
after skip = \parskip,
boxrule = 0.1em,
parbox=false}

%%fakesection Fixes

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
\hskip -\arraycolsep
\let\@ifnextchar\new@ifnextchar
\array{#1}}

\let\tempddots\ddots
\renewcommand{\ddots}{\smash{\tempddots}}

\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}

%%fakesection Theorem environments
\ifswap
\declaretheoremstyle[
headfont=\bfseries,
bodyfont=\normalfont,
headformat=swapnumber,
spaceabove=\abovethm@skip,
spacebelow=\env@sep,
headpunct={\@thmpunct}
]{theorem}
\declaretheoremstyle[
notefont=\bfseries, notebraces={}{},
bodyfont=\normalfont,
spaceabove=\abovethm@skip,
spacebelow=\env@sep,
headformat=\NUMBER \NOTE,
headpunct={\@thmpunct}
]{custom}
\else
\declaretheoremstyle[
headfont=\bfseries,
spaceabove=\abovethm@skip,
spacebelow=\env@sep,
bodyfont=\normalfont, 
headpunct={\@thmpunct}
]{theorem}
\declaretheoremstyle[
notefont=\bfseries, notebraces={[}{]},
bodyfont=\normalfont,
spaceabove=\abovethm@skip,
spacebelow=\env@sep,
headindent=0pt,
headformat=\NUMBER,
headpunct={\@thmpunct}
]{custom}
\fi

\declaretheorem[style=theorem,name=\str@theorem]{theorem}

\newcommand{\nthm}[2]{
\declaretheorem[style=theorem, name={#1}, sibling=theorem]{#2}
}

\nthm{\str@definition}{definition}
\nthm{\str@remark}{remark}
\nthm{\str@example}{example}
\nthm{\str@proposition}{proposition}
\nthm{\str@corollary}{corollary}
\nthm{\str@lemma}{lemma}
\nthm{\str@algorithm}{algorithm}

\declaretheorem[style=custom,name=,sibling=theorem]{para}
\declaretheorem[style=custom,name=]{para*}

\ifwithin
\numberwithin{equation}{section}
\numberwithin{figure}{section}

\numberwithin{theorem}{section}
\numberwithin{definition}{section}
\numberwithin{example}{section}
\numberwithin{corollary}{section}
\numberwithin{lemma}{section}
\numberwithin{proposition}{section}
\numberwithin{remark}{section}
\numberwithin{para}{section}
\numberwithin{algorithm}{section}
\fi
%%fakesection Article and book commands and settings

\newcommand\@code{}
\newcommand\@to{}
\newcommand\dedication[1]{\renewcommand{\@to}{#1}}

\newcommand\unsection[1]{\section*{#1}\addcontentsline{toc}{section}{#1}}
\newcommand\unsubsection[1]{\subsection*{#1}\addcontentsline{toc}{subsection}{#1}}

\subtitle{}


\newcommand\code[1]{\renewcommand{\@code}{#1}}

\renewcommand\thesection{\arabic{section}}
\renewcommand\thechapter{\zeroroman{chapter}}
\renewcommand\thepart{\partname \ \arabic{part}}
\ifzero\setcounter{chapter}{-1}\fi

\newcommand\unchapter[1]{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}\markboth{#1}{}}
\renewcommand\appendix{
\unchapter{\str@appendices}\stepcounter{chapter}\setcounter{section}{0}
\renewcommand\thesection{\Alph{section}}}

\newcommand\@chlabel{}
\AtBeginDocument{
\let\@classiclabel\label
\let\@classicref\ref
\newcommand\chlabel[1]{\renewcommand\@chlabel{#1}\@classiclabel{#1}}
\renewcommand{\label}[1]{\@classiclabel{\@chlabel:#1}}
\renewcommand{\ref}[2][\@compare]{
\IfStrEq{#1}{\@compare}{\@classicref{\@chlabel:#2}}
{\@classicref{#1}-\@classicref{#1:#2}}
}
}

\pagestyle{fancy}
\lhead{}
\chead{\nouppercase{\leftmark}}
\rhead{}
\renewcommand{\headrulewidth}{0pt}

\ifprint

\else
\let\cleardoublepage\clearpage
\fi




%%fakesection Titles and covers


\titleformat{\part}[display]{
\setlength{\parskip}{0pt}\setlength{\parindent}{0pt}
\bfseries\Huge\centering\medskip\vspace*{\fill}
}{\LARGE\bfseries\partname~\arabic{part}
}{0pt}{}[\vspace{200pt}\vspace*{\fill}]

\titlespacing{\part}{0pt}{0pt}{0pt}[0pt]

\titleformat{\chapter}[display]{
\setlength{\parskip}{0pt}\setlength{\parindent}{0pt}
\center\huge
}{\large\bfseries\chaptername~\thechapter
}{0.1em}{}[{\bigskip\bigskip}]

\titlespacing*{\chapter}{0pt}{0pt}{3em}[0pt]



\titleformat{\section}{\center\Large\bfseries}{
\noindent\S\thesection\ }{0pt}{}
\titlespacing*{\section}{0pt}{\title@space}{\head@sep}[0pt]

\titleformat{\subsection}{\bfseries\large}{
\noindent \S\thesubsection \ }{0pt}{}
\titlespacing*{\subsection}{0pt}{\head@sep}{\head@sep}[0pt]


\newcommand{\infopage}[1][]{
\NoBgThispage
\thispagestyle{empty}
\vspace*{\fill}
\textbf{\@title}\\
\textbf{\textit{\@subtitle}}\par
{\longversion}\par
\@code\par
\printcopyright\\\printlicense\par
\@date\bigskip\\
#1\par
\vspace*{\fill}
\newpage
}


\newcommand\@coverfont{\bfseries}

\renewcommand{\maketitle}[1][]{
\frontmatter
\NoBgThispage
\begingroup
\setlength{\parindent}{0pt} \setlength{\parskip}{1em}
\newpage
\thispagestyle{empty}\begingroup\normalfont

\ifafive
\vspace*{1.5em} 
\else
\vspace*{6em}
\fi

\begin{center}
{\@coverfont\Huge\@title{\ifx\Subtitle\empty{\\[0.8em]}\else{\\[0.3em]}\fi}}
{\ifx\@subtitle\@compare\else{\@coverfont\huge\@subtitle\\[0.8em]}\fi}

\textsc{
\LARGE
\@author}

\vspace*{\fill}
\ifx\shortversion\@compare{}\else
{\smallskip \@coverfont
\LARGE
\centerline{\shortversion} \bigskip\bigskip}
\fi

\end{center}

\ifafive
\vspace{3em}
\else
\vspace{6em}
\fi
\endgroup
\newpage

\infopage[#1]


\endgroup

\ifx\@to\@compare{}\else
\vspace*{\fill}\noindent\@to\vspace*{10em}\vspace*{\fill}
\newpage\fi

\tableofcontents
\newpage
}


\endinput
%%
%% End of file `tex/sgcbook.cls'.
