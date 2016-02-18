\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{edelgas-resume}[2016/02/14 Edelgas Résumé Class]
\LoadClass[10pt]{article}

% Standards
\RequirePackage{xunicode}
\RequirePackage[top=1.5in, bottom=1.25in, left=1.5in, right=1.5in]{geometry}
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{ifmtarg} 
\RequirePackage{csquotes}
\RequirePackage{listings}
\RequirePackage{enumitem}

% Footer
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{
	\sffamily\addfontfeature{LetterSpace=20}\selectfont\MakeUppercase\foot
	}

% Name Section
\DeclareTextFontCommand{\namefont}{\sffamily\addfontfeature{LetterSpace=20}\fontsize{20}{30}\selectfont}
\newcommand*{\namehead}{
	\centering\namefont{
		\MakeUppercase\name}
	\par
	\vspace{1em}
	}

% Address Section
\DeclareTextFontCommand{\addressfont}{\centering\sffamily\addfontfeature{LetterSpace=20}\fontsize{10}{12}\selectfont}
\newenvironment*{address}[3]{
	\addressfont{\MakeUppercase{#1}} %see above
	\par
	\vspace{0.3em}
	\addressfont{\MakeUppercase{#2 \hspace{1em} #3}}
	\par
	\vspace{1.25em}
}

% Section Headings
\DeclareTextFontCommand{\headingfont}{\sffamily\bfseries\addfontfeature{LetterSpace=5}\fontsize{8}{10}\selectfont} 
\newenvironment*{sectionheading}[1]{
	\vspace{-0.75em}
	\raggedright\hrulefill\par
	\vspace{-0.25em}
	\headingfont{\textbf{\MakeUppercase{#1}}}
	\vspace{0.75em}
	\newline\par
}

% Company Name, Location, Dates
\makeatletter
	\newenvironment*{organization}[3]{
		\vspace*{-0.75em}
		\raggedright
		{\Large #1{\@ifmtarg{#2}{}{,}}} 
		#2
		\hfill {\large #3}
		\par
		\vspace{0.5em}
	}
\makeatother

% Position and responsibilites
\makeatletter
	\newenvironment*{position}[2]{
		\vspace{0em}
		{\@ifmtarg{#1}{\empty\vspace*{-0.5em}}{\itshape #1}}
		{\@ifmtarg{#2}{\empty}{#2}}
		\begin{itemize}[leftmargin=*,labelsep=1.5em,itemsep=0em,label=\raisebox{0.2em}{\tiny$\bullet$}]
		\vspace{-0.25em}
	}
	{
		\end{itemize}
		\vspace*{1.25em}
	}
\makeatother
