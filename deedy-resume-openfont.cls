% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1cm, vmargin=2cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{263238}
\definecolor{headings}{HTML}{37474F}
\definecolor{subheadings}{HTML}{006064}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/helvetica/]{HelveticaNeueCyr-Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/helvetica/]{HelveticaNeueCyr-Light}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Medium}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
		\sffamily
		\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\fontsize{30pt}{10cm}\selectfont #1 
		\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\selectfont #2
}
\newcommand{\namesectionright}[1]{
	\vspace{-21pt}
	\color{headings}\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\fontsize{11pt}{14pt}\selectfont #1
	\noindent\makebox[\linewidth]{\rule{2000pt}{0.4pt}}
	\vspace{-5pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Medium}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Medium}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Light}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/helvetica/]{HelveticaNeueCyr-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

\pagenumbering{gobble}