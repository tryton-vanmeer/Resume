\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Resume Class]

\LoadClass[11pt]{article}

% paper size and margins
\RequirePackage[letterpaper, margin=1in, top=0.5in]{geometry}

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

\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\Large\bfseries}{}{0.5ex}{}[\titlerule]

% variables
\newcommand\name[1]{\renewcommand\@name{#1}}
\newcommand\@name{\ClassError{resume}{No \noexpand\name given}\@ehc}

\newcommand\website[1]{\renewcommand\@website{#1}}
\newcommand\@website{\ClassError{resume}{No \noexpand\website given}\@ehc}

\newcommand\email[1]{\renewcommand\@email{#1}}
\newcommand\@email{\ClassError{resume}{No \noexpand\email given}\@ehc}

\newcommand\github[1]{\renewcommand\@github{#1}}
\newcommand\@github{\ClassError{resume}{No \noexpand\github given}\@ehc}

% commands
\renewcommand{\maketitle}{
    \begin{center}
        \textbf{\@name}

        \href{https://\@website}{\@website} •
        \href{mailto:\@email}{\@email} •
        \href{https://github.com/\@github}{github.com/\@github}
    \end{center}
}
