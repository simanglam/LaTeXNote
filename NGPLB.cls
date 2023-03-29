\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{NGPLB}[基於LaTeX Class: report and 交大論文格式]
\LoadClassWithOptions{report}
\PassOptionsToClass{\CurrentOption}{report}
\input{trans.def}
\RequirePackage[center]{titlesec}
\RequirePackage{titletoc}
\RequirePackage[encoding=UTF8,style={Traditional}]{zhnumber}%Financial
\RequirePackage[]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xpatch}
\RequirePackage{tocloft}
\RequirePackage{xcolor}

\definecolor{STRUCTURECOLOR}{HTML}{3c71b7}
\definecolor{structurecolor}{HTML}{3c71b7}
\definecolor{main}{HTML}{00a652}%
\definecolor{second}{HTML}{ff8618}%
\definecolor{third}{HTML}{00aef7}%

%\geometry{top=1.5cm,left=2cm,right=2cm,bottom=2.5cm}
\fancypagestyle{myplain}{%
\fancyhf{}%
\fancyhead[LO, RE]{\leftmark}
\fancyhead[RO, LE]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}% Line at the header invisible
\fancyheadoffset[RO, LE]{-0.5cm} 
}
\pagestyle{myplain}
%\RequirePackage{}
\xpatchcmd{\@chapter}{\addcontentsline{toc}{chapter}%
{\protect\numberline{\thechapter}#1}%
}{ 
\addcontentsline{toc}{chapter}%
{\protect\numberline{第\thechapter 章} #1}%
}{ }{ }
%\xpatchcmd{\chapter}{\thispagestyle{plain}}{ }{ }{ }
\xpatchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{ }{ }{ }
\xpatchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{ }{ }{ }

\newcommand{\xthepart}{第\@zhnum\c@part 部}
%重新定義標題的計數器
\renewcommand \thepart {第\@zhnum\c@part 部}
\newcommand \mythechapter {\ifnum\value{chapter}<10 0\fi\arabic{chapter}}
\newcommand{\xchaptertitle}{Chapter}
\renewcommand \thechapter {\@zhnum\c@chapter}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand \thesubsection {\thesection.\@arabic\c@subsection}
\renewcommand \thefigure {\@arabic\c@chapter.\@arabic\c@figure }
\counterwithout{equation}{chapter}
\counterwithout{table}{chapter}
\counterwithout{figure}{chapter}

\renewcommand{\partname}{\thispagestyle{empty}\color{structurecolor}}
\renewcommand{\chaptermark}[1]{\markboth{\xchaptertitle\, #1}{}}

%重新定義標題的樣式
\titleformat{\part}{\thispagestyle{empty}\Huge\centering\bfseries\color{structurecolor}}{\noindent\xthepart}{0em}{\\}
\titleformat{\chapter}{\Huge\linespread{1}\selectfont\raggedright\bfseries\color{structurecolor}}{\hskip6.25pt\normalsize\xchaptertitle}{.1em}{\\{\fontsize{50}{55}\selectfont\mythechapter}\\}
\titleformat{\section}{\LARGE\bfseries\color{structurecolor}}{\thesection}{.1em}{\hskip24pt}
\titleformat{\subsection}{\Large\color{structurecolor}}{\thesubsection}{1em}{\hskip12pt}

\renewcommand{\cftfigpresnum}{圖}
\renewcommand{\cfttabpresnum}{圖}


\RequirePackage{enumerate}
\RequirePackage[shortlabels,inline]{enumitem}

%重新定義chapter後的空間
%\titlespacing*{⟨command⟩}{⟨left⟩}{⟨beforesep⟩}{⟨aftersep⟩}[⟨right⟩]
\titlespacing*{\chapter}{0pt}{0.01\textheight}{24pt}
\titlespacing*{\section}{0pt}{-3pt}{3pt}

%定義目錄中的縮進
%\titlecontents{section}[left]{above}{before with label}{before without label}{filler and page}[after]
\titlecontents{part}[20mm]{ }{\contentslabel{50pt}}{\hspace{-50pt}}{\titlerule*[10pt]{.}\contentspage}[\vskip6pt{\pagebreak[3]}]
\titlecontents{chapter}[20mm]{ }{\contentslabel{50pt}}{\hspace{-50pt}}{\titlerule*[10pt]{.}\contentspage}[\vskip6pt{\pagebreak[1]}]
\titlecontents{section}[20mm]{ }{\contentslabel{36pt}}{\hspace{-36pt}}{\titlerule*[10pt]{.}\contentspage} [\vskip6pt{\pagebreak[1]}]
\titlecontents{subsection}[20mm]{ }{\contentslabel{36pt}}{\hspace*{-8mm}}{\titlerule*[10pt]{.}\contentspage}[\vskip6pt{\pagebreak[1]}]
\pagenumbering{roman}

\endinput