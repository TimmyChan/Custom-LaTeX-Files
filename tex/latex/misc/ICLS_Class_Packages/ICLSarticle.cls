\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ICLSarticle}[2019/11/12 TLC]

%---------------------------------------%
% Class arranged by		: Timmy Chan	%
% Date             		: Dec, 2019		%
%---------------------------------------%
\LoadClass[10pt,a4paper,twocolumn]{article}
\setlength{\columnsep}{.75cm}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
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
%custom keyword command
\providecommand{\ICLSkeywords}[1]
{\begin{quotation}\noindent\textbf{Keywords:} #1\\\end{quotation}
}

\usepackage{titling}
\posttitle{\par\end{center}}
% 60 pt = 2.116582cm
% \droptitle = 3cm -60pt = 1.116582cm
\setlength{\droptitle}{0cm}


% change sections

 \usepackage{mfirstuc}
\usepackage{titlesec}
\titleformat{\section}
  {\fontsize{11}{11}\selectfont\bfseries\uppercase}{\thesection}{1em}{}
  \titleformat{\subsection}
  {\fontsize{11}{11}\selectfont\bfseries}{\thesubsection}{1em}{}
    \titleformat{\subsubsection}
  {\fontsize{11}{11}\selectfont\bfseries}{\thesubsubsection}{1em}{}
  
\usepackage{indentfirst}

\RequirePackage{graphicx} 	% include graphics
\DeclareGraphicsExtensions{.pdf,.png,.jpg,.jpeg,.svg,.gif} % common file types