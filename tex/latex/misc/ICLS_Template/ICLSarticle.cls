\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ICLSarticle}[2020/03/02 TLC]

%-------------------------------------------%
% Class arranged by		: Tsz Leong Chan	%
% Date             		: Mar, 2020			%
%-------------------------------------------%

\LoadClass[10pt,a4paper]{article}
\setlength{\columnsep}{.75cm}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%no date on \maketitle
\date{}

%single space
\usepackage{setspace}
\singlespacing

%no page number
\pagenumbering{gobble}

%margins%
\usepackage[top=3cm, bottom=4cm, left=1.7cm, right=1cm]{geometry}

%fix quotation environment for abstract%
\usepackage{etoolbox}
\patchcmd{\quotation}{\rightmargin}{\leftmargin 1.2cm \rightmargin}{}{}


%custom abstract environment
\newenvironment{ICLSabstract}
	{\vspace{-5ex}\begin{quotation}\noindent\textbf{Abstract.}
	}
    { 
    \end{quotation}
    }
 
%custom title command
\newcommand{\ICLStitle}[1]{\title{\fontsize{14}{14}\selectfont #1}} 
    
%custom keyword command
\providecommand{\ICLSkeywords}[1]
{\begin{quotation}\noindent\textbf{Keywords:} #1\\\end{quotation}
}

\usepackage{titling}
\posttitle{\par\end{center}}
% 60 pt = 2.116582cm
% \droptitle = 3cm -60pt = 1.116582cm
\setlength{\droptitle}{0cm}


% format sections
 \usepackage{mfirstuc}
\usepackage{titlesec}
\titleformat{\section}
  {\fontsize{11}{11}\selectfont\bfseries\uppercase}{\thesection}{1em}{}
  \titleformat{\subsection}
  {\fontsize{11}{11}\selectfont\bfseries}{\thesubsection}{1em}{}
    \titleformat{\subsubsection}
  {\fontsize{11}{11}\selectfont\bfseries}{\thesubsubsection}{1em}{}
  
% indent first line after section  
\usepackage{indentfirst}

% formatting for affiliations
\RequirePackage[blocks]{authblk}
\renewcommand\Authfont{\fontsize{10}{10}\selectfont\bfseries}
\renewcommand\Affilfont{\fontsize{10}{10}\selectfont\normalfont}