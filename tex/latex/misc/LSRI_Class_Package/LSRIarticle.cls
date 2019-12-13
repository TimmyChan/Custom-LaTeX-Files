\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LSRIarticle}[2016/11/12 TC]

%----------------------------------------%
% Class arranged by		: Tsz Timmy Chan %
% Date             		: Dec, 2019		 %
%----------------------------------------%
\LoadClass[12pt,letterpaper]{article}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%length properties%
\hoffset=0in 
\voffset=-.5in
\oddsidemargin=0in 	% for books
\evensidemargin=0in % for books
\topmargin=0in  	%top margins are unnecessary
\textwidth=6.5in	% assuming lettersize paper, 8.5-2 = 6.5
\textheight=9in		



