# Custom LaTeX-Files
A collection of custom LaTeX files.

## Getting Started

### Prerequsites
  - LaTeX https://www.latex-project.org/get/
  - The "User Tags" are written specifically for TexMaker, and can also be used in TeXStudio as Macros:  
    - TeXMaker: http://www.xm1math.net/texmaker/  
    - TeXStudio: http://www.texstudio.org/

### Installation
Use the instructions in the following link to install these packages in a centralized location, so that these files can be accessed from any LaTeX files that you write in the future. 

```https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages#Manual_installation ```


## Description of Files
Note that the file structure of this github follows the specifications described above, and no changes are necessary.

### tex/latex/misc/MyPackages
This folder houses all the .sty files. The structure is TCshort.sty ⊂ TCbasic.sty ⊂ TCcommon.sty
#### LSRIshort.sty 
Contains shortcuts commonly used in mathematics typesetting.
#### LSRIbasic.sty
Builds on top of LSRIshort.sty, and contains packages often used in writing and includes TCshort, but definitions and packages that conflict with Beamer are in TCcommon.sty
#### LSRIcommon.sty
Builds on top of LSRIbasic.sty, and Contains graphics packages, definitions for theorem enviornments, custom enviornments:
  - SAGE: Modified version of verbatium with Python option.
  ```
  \begin{SAGE} 
    blah blah blah 
  \end{SAGE}
  ```
  - problemset: Custom enumerate enviornment useful for writing homework, with custom command "\problem{filename}". This command serves as \item" and \input{"filename.tex"}. The file name is displayed for each problem. Note that spaces are okay in filenames.
  ```
  \begin{problemset}
    \problem{4B.6 part 1}
    \problem{4B.6 part 2}
  \end{problemset}
  ```
  - questionset: Custom enumerate enviornment useful for writing quizzes, with custom command "\question{filename}". This command serves as \item" and \input{"filename.tex"}. The enumeration follows standard numbering.
   ```
  \begin{questionset}
    \question{Parabola Word Question}
    \question{Parabola Graphing}
  \end{questionset}
  ```

### Flashcards
See the following for examples:
  - https://mathwithtimmy.com/2017/09/09/real-analysis-i-ii/
  - https://mathwithtimmy.com/2017/02/06/precalculus-resources-intro-review-of-functions/

#### avery5388.cfg, avery5911cfg
Files needed for making DOUBLE SIDED NOTECARDS

#### CopyrightCard.tex
Template for a custom copyright card used for making flashcard resources.
