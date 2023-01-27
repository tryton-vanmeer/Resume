\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Resume Class]

\LoadClass[11pt]{article}

% variables
\def\name#1{\def\@name{#1}}
\def\website#1{\def\@website{#1}}
\def\email#1{\def\@email{#1}}
\def\github#1{\def\@github{#1}}

% paper size and margins
\RequirePackage[letterpaper, margin=1in]{geometry}

% font
\RequirePackage{fontspec}
\setmainfont{JetBrains Mono}

% no page numbers
\pagenumbering{gobble}

% hyperlinks
\RequirePackage{hyperref}
\hypersetup{
    pdfborder = {0 0 0}
}

% header & footer
\RequirePackage{fancyhdr}
\fancypagestyle{resume} {
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \setlength{\headheight}{26pt}

    \fancyhead[C] {
        \textbf{\@name} \\
        \href{https://\@website}{\@website} •
        \href{mailto:\@email}{\@email} •
        \href{https://github.com/\@github}{github.com/\@github}
    }

    \fancyfoot[L] {
        \href{https://github.com/\@github/resume}{Source}
    }
}
\pagestyle{resume}

% sections
\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\Large\bfseries}{}{0.5ex}{}[\titlerule]

% commands
\newcommand{\jobheader}[4]{
    \noindent \textbf{#3} \hfill #1 — #2 \\ #4
}
