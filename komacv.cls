%%
%% This is file `komacv.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% komacv.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2014-2021 by Salome Södergran (salome.soedergran@gmx.ch)
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{komacv}
    [2021/02/12 v1.1.2 komacv class]

\providecommand*\mycolor{blue}
\RequirePackage{ifthen,kvoptions,calc,xparse,xstring}
\SetupKeyvalOptions{%
family=komacv,%
prefix=komacv@,%
setkeys=\kvsetkeys%
}
\DeclareStringOption[mycolor]{color}[mycolor]
\DeclareStringOption[x11names]{xcolor}[x11names]
\DeclareStringOption[classic]{style}[classic]
\DeclareStringOption[below]{acadtitleposition}[below] % options: below, before, after
\DeclareBoolOption[true]{fontawesome}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessKeyvalOptions{komacv} % evaluate keyval options
\LoadClass[a4paper,headings=normal,fontsize=11pt]{scrartcl}
\RequirePackage[\komacv@xcolor]{xcolor}
\RequirePackage{%
  etoolbox,%
  ifpdf,%
  ifluatex,%
  ifxetex,%
  scrlayer-scrpage,%
  marvosym,%
  array,%
  graphicx,%
  microtype,%
  enumitem,
  hyperref%
}
\ifkomacv@fontawesome
\RequirePackage{fontawesome}
\fi
\RequirePackage[raggedrightboxes]{ragged2e}
\AtEndPreamble{%
  \renewcommand\familydefault{\sfdefault}% without this, pdflatex produces error messages; WHY?
}
\definecolor{myblue}{rgb}{0.2,0.3,0.65}
\colorlet{mycolor}{myblue}
\AtEndPreamble{%
 \renewcommand*\mycolor{\komacv@color}
  \colorlet{colortheme}{\mycolor}% specified in documentclass option
  \@ifundefinedcolor{headlinecolor}{%
    \colorlet{@headlinecolor}{black}}{%
    \colorlet{@headlinecolor}{headlinecolor}}
  \@ifundefinedcolor{firstnamecolor}{%
    \colorlet{@firstnamecolor}{black}}{%
    \colorlet{@firstnamecolor}{firstnamecolor}}
  \@ifundefinedcolor{familynamecolor}{%
    \colorlet{@familynamecolor}{@firstnamecolor}}{%
    \colorlet{@familynamecolor}{familynamecolor}}
  \@ifundefinedcolor{acadtitlecolor}{%
    \colorlet{@acadtitlecolor}{@firstnamecolor}}{%
    \colorlet{@acadtitlecolor}{acadtitlecolor}}
  \@ifundefinedcolor{addresscolor}{%
    \colorlet{@addresscolor}{@firstnamecolor}}{%
    \colorlet{@addresscolor}{addresscolor}}
  \@ifundefinedcolor{quotecolor}{%
    \colorlet{@quotecolor}{@firstnamecolor}}{%
    \colorlet{@quotecolor}{quotecolor}}
  \@ifundefinedcolor{secbarcolor}{%
    \colorlet{@secbarcolor}{colortheme}}{%
    \colorlet{@secbarcolor}{secbarcolor}}
  \@ifundefinedcolor{seccolor}{%
    \colorlet{@seccolor}{colortheme}}{%
    \colorlet{@seccolor}{seccolor}}
  \@ifundefinedcolor{subseccolor}{%
    \colorlet{@subseccolor}{colortheme}}{%
    \colorlet{@subseccolor}{subseccolor}}
  \@ifundefinedcolor{hintcolor}{%
    \colorlet{@hintcolor}{black}}{%
    \colorlet{@hintcolor}{hintcolor}}
  \@ifundefinedcolor{framecolor}{%
    \colorlet{@framecolor}{colortheme}}{%
    \colorlet{@framecolor}{framecolor}}
  \@ifundefinedcolor{framebackcolor}{%
    \colorlet{@framebackcolor}{white}}{%
    \colorlet{@framebackcolor}{framebackcolor}}
} % end AtEndPreamble
\ifboolexpr{bool{xetex} or bool{luatex}}{%
  \RequirePackage{fontspec}%
}{%
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}%
}
\newkomafont{headlinefont}{\fontsize{30}{32}\mdseries\upshape}
\newkomafont{firstnamefont}{\Huge\mdseries\upshape}
\newkomafont{familynamefont}{\usefontofkomafont{firstnamefont}}
\newkomafont{acadtitlefont}{\LARGE\mdseries\itshape}
\newkomafont{addressfont}{\normalsize\mdseries\itshape}
\newkomafont{quotefont}{\large\itshape}
\newkomafont{hintfont}{}
\newkomafont{linkfont}{}
\newkomafont{httplinkfont}{}
\newkomafont{httpslinkfont}{}
\newkomafont{emaillinkfont}{}
\newkomafont{commentmainfont}{\bfseries} % in \cvitemwithcomment
\newkomafont{commentfont}{\footnotesize\itshape} % in \cvitemwithcomment
\providecommand\sectionfont{\Large\sffamily\mdseries\upshape}
\providecommand\subsectionfont{\large\sffamily\mdseries\upshape}
\setkomafont{section}{\sectionfont}
\setkomafont{subsection}{\subsectionfont}
\setlength\parindent{0pt}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\newlength\@komacvtextwidth
\newlength\@hintscolwidth
\newlength\hintscolwidth
\setlength\hintscolwidth{0pt}
\newlength\@sepcolwidth
\newlength\sepcolwidth
\setlength\sepcolwidth{0pt}
\newlength\@maincolwidth
\newlength\maincolwidth
\setlength\maincolwidth{0pt}
\newlength\@quotewidth
\newlength\quotewidth
\setlength\quotewidth{0pt}
\newlength\@dbitemmaincolwidth
\newlength\dbitemmaincolwidth
\setlength\dbitemmaincolwidth{0pt}
\newlength\@listitemsymbolwidth
\newlength\listitemsymbolwidth
\setlength\listitemsymbolwidth{0pt}
\newlength\@listitemmaincolwidth
\newlength\listitemmaincolwidth
\setlength\listitemmaincolwidth{0pt}
\newlength\@listdbitemmaincolwidth
\newlength\listdbitemmaincolwidth
\setlength\listdbitemmaincolwidth{0pt}
\newlength\@titlepicwidth
\newlength\@titlesepwidth
\setlength\@titlesepwidth{0pt}
\newlength\titlesepwidth
\setlength\titlesepwidth{0pt}
\newlength\@mframepicshift
\newlength\mframepicshift
\setlength\mframepicshift{0pt}
\newlength\@commentmainlength
\newlength\@commentlength
\newlength\@titlenamewidth
\newlength\@titlenamemaxwidth
\newlength\titlenamemaxwidth
\setlength\titlenamemaxwidth{0pt}
\newlength\@titlenamefullwidth
\newlength\@titledetailswidth
\newlength\@infocolwidth
\newlength\infocolwidth
\setlength\infocolwidth{0pt}
\newlength\@sepinfocolwidth
\newlength\sepinfocolwidth
\setlength\sepinfocolwidth{0pt}
\newlength\komacvinfocolextrawidth % witout @ for use inside document (addmargin)
\newlength\@footerwidth
\setlength\@footerwidth{.6\textwidth}
\newlength\@fboxwidth
\newlength\footerwidth
\setlength\footerwidth{0pt}
\newlength\@aftertitlevspace
\newlength\aftertitlevspace
\setlength\aftertitlevspace{0pt}
\newlength\@afterquotevspace
\newlength\afterquotevspace
\setlength\afterquotevspace{0pt}
\newlength\@afterelementsvspace
\newlength\afterelementsvspace
\newlength\@beforesecvspace
\newlength\beforesecvspace
\setlength\beforesecvspace{0pt}
\newlength\@aftersecvspace
\newlength\aftersecvspace
\setlength\aftersecvspace{0pt}
\newlength\@beforesubsecvspace
\newlength\beforesubsecvspace
\setlength\beforesubsecvspace{0pt}
\newlength\@aftersubsecvspace
\newlength\aftersubsecvspace
\setlength\aftersubsecvspace{0pt}
\newlength\beforesigvspace
\setlength\beforesigvspace{3cm}
\AtEndPreamble{%
  % infocol (oldstyle)
  \setlength{\@infocolwidth}{\infocolwidth}
  \setlength{\@sepinfocolwidth}{\sepinfocolwidth}
\setlength\komacvinfocolextrawidth{\@infocolwidth+\@sepinfocolwidth}
  \setlength\@komacvtextwidth{\textwidth-\komacvinfocolextrawidth}
  % fboxextra (picture frame)
  \newlength\@fboxextra
  \setlength\@fboxextra{\fboxsep+\fboxrule}
  % hintscolumn
  \ifdimequal{\hintscolwidth}{0pt}{%
    \setlength\@hintscolwidth{.2\@komacvtextwidth}
  }{%
    \setlength{\@hintscolwidth}{\hintscolwidth}%
  }
  % separatorcolumn
  \ifdimequal{\sepcolwidth}{0pt}{%
    \setlength\@sepcolwidth{2em}%
  }{%
    \setlength{\@sepcolwidth}{\sepcolwidth}%
  }
  % maincolumn
  \ifdimequal{\maincolwidth}{0pt}{%
\setlength{\@maincolwidth}{\@komacvtextwidth-\@sepcolwidth-\@hintscolwidth}%
  }{%
    \setlength{\@maincolwidth}{\maincolwidth}%
  }
  % doubleitem
  \ifdimequal{\dbitemmaincolwidth}{0pt}{%
    \setlength{\@dbitemmaincolwidth}{%
    \@maincolwidth-\@hintscolwidth-2\@sepcolwidth}%
    \setlength{\@dbitemmaincolwidth}{0.5\@dbitemmaincolwidth}%
  }{%
    \setlength{\@dbitemmaincolwidth}{\dbitemmaincolwidth}%
  }
  % listitem
  \ifdimequal{\listitemsymbolwidth}{0pt}{%
    \settowidth{\@listitemsymbolwidth}{\listitemsymbol{}~}%
  }{%
    \setlength{\@listitemsymbolwidth}{\listitemsymbolwidth}%
  }
\setlength{\@listitemmaincolwidth}{\@maincolwidth-\@listitemsymbolwidth}%
  % listdoubleitem
  \ifdimequal{\listdbitemmaincolwidth}{0pt}{%
\setlength{\@listdbitemmaincolwidth}{\@maincolwidth-\@sepcolwidth-\@listitemsymbolwidth}%
\setlength{\@listdbitemmaincolwidth}{0.475\@listdbitemmaincolwidth}% %
  }{%
    \setlength{\@listdbitemmaincolwidth}{\listdbitemmaincolwidth}%
\setlength{\@listdbitemmaincolwidth}{0.475\@listdbitemmaincolwidth}% %
  }
  % quote
  \ifdimequal{\quotewidth}{0pt}{%
    \setlength{\@quotewidth}{0.65\textwidth}%
  }{%
    \setlength{\@quotewidth}{\quotewidth}%
  }
  \ifdimequal{\afterquotevspace}{0pt}{%
   \setlength\@afterquotevspace{2\baselineskip}%
  }{%
    \setlength\@afterquotevspace{\afterquotevspace}%
  }
  % title
  \ifundef{\@photoname}{% without picture:
    \setlength\@aftertitlevspace{\aftertitlevspace}
  }{% with picture:
    \ifthenelse{%
      \equal{\@photoframe}{frame} \OR
      \equal{\@photoframe}{mframe}
    }{% with frame:
      \ifdimequal{\aftertitlevspace}{0pt}{%
        \setlength\@aftertitlevspace{1.5\@fboxextra}
      }{%
        \setlength\@aftertitlevspace{\aftertitlevspace}
      }
    }{% without frame:
      \setlength\@aftertitlevspace{\aftertitlevspace}
    }%
  }%
  \ifundef{\@photoname}{}{%
    \ifdimequal{\titlesepwidth}{0pt}{%
      \setlength\@titlesepwidth{\@sepcolwidth}
    }{%
      \setlength{\@titlesepwidth}{\titlesepwidth}
    }
  }
  % afterelementsvspace
  \ifdimequal{\afterelementsvspace}{0pt}{%
    \setlength{\@afterelementsvspace}{0.25em}%
  }{%
    \setlength{\@afterelementsvspace}{\afterelementsvspace}%
  }
  % beforesecvspace
  \ifdimequal{\beforesecvspace}{0pt}{%
    \setlength{\@beforesecvspace}{3.5ex \@plus -1ex \@minus -.2ex}%
  }{%
    \setlength{\@beforesecvspace}{\beforesecvspace}%
  }
  % aftersecvspace
  \ifdimequal{\aftersecvspace}{0pt}{%
    \setlength{\@aftersecvspace}{2.3ex \@plus.2ex}%
  }{%
    \setlength{\@aftersecvspace}{\aftersecvspace}%
  }
  % beforesubsecvspace
  \ifdimequal{\beforesubsecvspace}{0pt}{%
    \setlength{\@beforesubsecvspace}{3.25ex\@plus -1ex \@minus -.2ex}%
  }{
    \setlength{\@beforesubsecvspace}{\beforesubsecvspace}%
  }
  % aftersubsecvspace
  \ifdimequal{\aftersubsecvspace}{0pt}{%
    \setlength{\@aftersubsecvspace}{1.5ex \@plus .2ex}%
  }{%
    \setlength{\@aftersubsecvspace}{\aftersubsecvspace}%
  }
} % end AtEndPreamble
\providecommand*\@addresssymbol{}
\providecommand*\addresssymbol{}
\providecommand*\@mobilesymbol{\upshape{\Mobilefone}~}
\providecommand*\mobilesymbol{}
\providecommand*\@phonesymbol{\upshape{\Telefon}~}
\providecommand*\phonesymbol{}
\providecommand*\@faxsymbol{\upshape{\FAX}~}
\providecommand*\faxsymbol{}
\providecommand*\@emailsymbol{\upshape{\Letter}~}
\providecommand*\emailsymbol{}
\providecommand*\@homepagesymbol{}
\providecommand*\homepagesymbol{}
\ifkomacv@fontawesome
\providecommand*\@twittersymbol{\upshape{\faTwitter}~}
\providecommand*\@githubsymbol{\upshape{\faGithub}~}
\providecommand*\@facebooksymbol{\upshape{\faFacebook}~}
\providecommand*\@linkedinsymbol{\upshape{\faLinkedin}~}
\else
\providecommand*\@twittersymbol{}
\providecommand*\@githubsymbol{}
\providecommand*\@facebooksymbol{}
\providecommand*\@linkedinsymbol{}
\fi
\providecommand*\twittersymbol{}
\providecommand*\githubsymbol{}
\providecommand*\facebooksymbol{}
\providecommand*\linkedinsymbol{}
\providecommand*\@fsymbol{~~~\textbullet~~~}
\providecommand*\fsymbol{}
\providecommand*\@listitemsymbol{\textcolor{colortheme}{\Neutral}~}
\providecommand*\listitemsymbol{}
\AtEndPreamble{%
  \ifdefempty{\addresssymbol}{}{%
\renewcommand*\@addresssymbol{\addresssymbol}
}
  \ifdefempty{\mobilesymbol}{}{%
\renewcommand*\@mobilesymbol{\mobilesymbol}
}
  \ifdefempty{\phonesymbol}{}{%
\renewcommand*\@phonesymbol{\phonesymbol}
}
  \ifdefempty{\faxsymbol}{}{%
\renewcommand*\@faxsymbol{\faxsymbol}
}
  \ifdefempty{\emailsymbol}{}{%
\renewcommand*\@emailsymbol{\emailsymbol}
}
  \ifdefempty{\homepagesymbol}{}{%
\renewcommand*\@homepagesymbol{\homepagesymbol}
}
  \ifdefempty{\twittersymbol}{}{%
\renewcommand*\@twittersymbol{\twittersymbol}
}
  \ifdefempty{\githubsymbol}{}{%
\renewcommand*\@githubsymbol{\githubsymbol}
}
  \ifdefempty{\facebooksymbol}{}{%
\renewcommand*\@facebooksymbol{\facebooksymbol}
}
  \ifdefempty{\linkedinsymbol}{}{%
\renewcommand*\@linkedinesymbol{\linkedinsymbol}
}
  \ifdefempty{\fsymbol}{}{%
\renewcommand*\@fsymbol{\fsymbol}
}
  \ifdefempty{\listitemsymbol}{}{%
\renewcommand*\@listitemsymbol{\listitemsymbol}
}
} % end \AtEndPreamble
\providecommand*{\firstname}{}
\providecommand*{\familyname}{}
\providecommand*{\acadtitle}{}
\providecommand*{\addressstreet}{}
\providecommand*{\addresscity}{}
\providecommand*{\address}[2]{\addressstreet{#1}\addresscity{#2}}
\providecommand*{\mobile}{}
\providecommand*{\phonenr}{}
\providecommand*{\faxnr}{}
\providecommand*{\email}{}
\providecommand*{\homepage}{}
\providecommand*{\twitter}{}
\providecommand*{\github}{}
\providecommand*{\facebook}{}
\providecommand*{\linkedin}{}
\providecommand*{\extrainfo}{}
\providecommand*{\cvquote}{}
\newlist{compactitem}{itemize}{3}
\newlist{compactenum}{enumerate}{3}
\newlist{compactdesc}{description}{3}
\setlist[compactitem,compactenum,compactdesc]{%
  topsep=0pt,%
  partopsep=0pt,%
  itemsep=0pt,%
  parsep=0pt,%
  leftmargin=*%
} % end setlist
\AtEndPreamble{%
\setlist[compactitem,1]{label=\@listitemsymbol}
\setlist[compactitem,2]{label={\textcolor{colortheme}\textendash}}
\setlist[compactitem,3]{label={\textcolor{colortheme}\textperiodcentered}}
\setlist[compactenum,1]{label={\textcolor{colortheme}{\arabic*.}}}
\setlist[compactenum,2]{label={\textcolor{colortheme}{\alph*.}}}
\setlist[compactenum,3]{label={\textcolor{colortheme}{\roman*.}}}
} % end AtEndPreamble
\newlength\@photowidth
\providecommand{\photo}[3][]{%
  \providecommand{\@photoframe}{#1}%
  \setlength{\@photowidth}{#2}%
  \providecommand{\@photoname}{#3}}
\providecommand\@headlinealignment{}
\providecommand\@headlinetype{none}
\providecommand\@headlinecontent{}
\ProvideDocumentCommand{\headline}{O{c} m o}
{
  \renewcommand\@headlinealignment{#1}
  \renewcommand\@headlinetype{#2}
  \renewcommand\@headlinecontent{
    \IfNoValueTF {#3}
    {
      \ifstrequal{#2}{title}{\par\headlinestyle{Curriculum Vitae}}{}
      \ifstrequal{#2}{name}{\par\firstnamestyle{\firstname}\ \familynamestyle{\familyname}\par\bigskip\acadtitlestyle{\acadtitle}}{}
      }{\headlinestyle{#3}}
}
}
\providecommand\setheadlinealignment{%
    \ifdefstring{\@headlinealignment}{l}{\RaggedRight}{%
      \ifdefstring{\@headlinealignment}{r}{\RaggedLeft}{\Centering}}
}
\providecommand\setheadlinetypename{%
\ifdefstring{\@headlinetype}{name}{%
    \setheadlinealignment
    \headlinestyle{\@headlinecontent}
}{}
}
\providecommand\setheadlinetypetitle{%
  \ifdefstring{\@headlinetype}{title}{%
    \setheadlinealignment
    \headlinestyle{\@headlinecontent}
}{}
}
\providecommand\setheadline{%
  \setheadlinetypename
  \setheadlinetypetitle
}
\newif\if@firstdetailselement\@firstdetailselementtrue
\providecommand*{\@titledetailsnewline}{
  \if@firstdetailselement%
    \@firstdetailselementfalse%
  \else%
    \\[.4ex]
  \fi%
}
\renewcommand\maketitle{\csexpandonce{@cvtitle\komacv@style}}
\RequirePackage{lastpage}
\providecommand*{\totalpagemark}{% page and pagetotal
\usefontofkomafont{pagenumber}\pageref{LastPage}%
}
\providecommand*\headlinestyle[1]{{%
    \usefontofkomafont{headlinefont}%
    \textcolor{@headlinecolor}{#1}}}
  \providecommand*{\firstnamestyle}[1]{{%
      \usefontofkomafont{firstnamefont}%
      \textcolor{@firstnamecolor}{#1}}}
  \providecommand*{\familynamestyle}[1]{{%
      \usefontofkomafont{familynamefont}%
      \textcolor{@familynamecolor}{#1}}}
  \providecommand*{\acadtitlestyle}[1]{{%
      \usefontofkomafont{acadtitlefont}%
      \textcolor{@acadtitlecolor}{#1}}}
  \providecommand*{\addressstyle}[1]{{%
      \usefontofkomafont{addressfont}%
      \textcolor{@addresscolor}{#1}}}
  \providecommand*{\quotestyle}[1]{{%
      \usefontofkomafont{quotefont}%
      \textcolor{@quotecolor}{#1}}}
  \providecommand*{\hintstyle}[1]{{%
      \usefontofkomafont{hintfont}%
      \textcolor{@hintcolor}{#1}}}
  \providecommand*{\sectionstyle}[1]{%
    \usefontofkomafont{section}%
    \textcolor{@seccolor}{#1}}
  \providecommand*{\subsectionstyle}[1]{%
    \usefontofkomafont{subsection}%
    \textcolor{@subseccolor}{#1}}
\providecommand*{\cvitem}[3][\@afterelementsvspace]{%
  \begin{tabular}{%
      @{}>{\raggedleft\arraybackslash}p{\@hintscolwidth}%
      @{\hspace{\@sepcolwidth}}p{\@maincolwidth}@{}%
    }%
    \hintstyle{#2} & {\@minipagetrue #3}%
  \end{tabular}\\[#1]%
}
\providecommand*{\cvdoubleitem}[5][\@afterelementsvspace]{%
 \cvitem[#1]{#2}{%
   \begin{minipage}[t]{\@dbitemmaincolwidth}#3\end{minipage}%
   \hspace*{\@sepcolwidth}%
   \begin{minipage}[t]{\@hintscolwidth}%
     \noindent\raggedleft\hintstyle{#4}
   \end{minipage}%
   \hspace*{\@sepcolwidth}%
   \begin{minipage}[t]{\@dbitemmaincolwidth}%
     \noindent #5
   \end{minipage}%
 }%
}
\providecommand*{\cvlistitem}[2][\@afterelementsvspace]{%
   \cvitem[#1]{}{%
     \@listitemsymbol%
     \hfill %
     \begin{minipage}[t]{.95\@listitemmaincolwidth}%
       #2%
     \end{minipage}%
   }%
 }
\providecommand*{\cvlistdoubleitem}[3][\@afterelementsvspace]{%
  \cvitem[#1]{}{%
    \@listitemsymbol%
    \hfill %
    \begin{minipage}[t]{.9\@listdbitemmaincolwidth}%
      #2%
    \end{minipage}%
    \hspace*{.9\@sepcolwidth}
    \ifstrempty{#3}{}{%
      \@listitemsymbol%
      \hfill %
      \begin{minipage}[t]{.9\@listdbitemmaincolwidth}%
        #3%
      \end{minipage}
    }%
  }%
}
\providecommand*{\cventry}[7][\@afterelementsvspace]{%
  \cvitem[#1]{#2}{%
    {\bfseries#3}%
    \ifstrempty{#4}{}{, {\itshape#4}}%
    \ifstrempty{#5}{}{, #5}%
    \ifstrempty{#6}{}{, #6}%
    .%
    \ifx&#7&%
    \else{%
      \newline{}\begin{minipage}[t]{\linewidth}%
        \small#7%
      \end{minipage}%
    }%
    \fi%
  }%
}
\providecommand\cventryflexA{\bfseries}
\providecommand\cventryflexB{}
\providecommand\cventryflexC{}
\providecommand\cventryflexD{}
\providecommand\cventryflexE{\small}
\providecommand*{\cventryflex}[7][\@afterelementsvspace]{%
  \cvitem[#1]{#2}{%
    {\cventryflexA #3}%
    \ifstrempty{#4}{}{\cventryflexB #4}%
    \ifstrempty{#5}{}{\cventryflexC #5}%
    \ifstrempty{#6}{}{\cventryflexD #6}%
        \ifx&#7&%
    \else{%
      \newline{}\begin{minipage}[t]{\linewidth}%
        \cventryflexE #7%
      \end{minipage}%
    }%
    \fi%
  }%
}

\newbox{\@commentmainbox}
\providecommand*{\cvitemwithcomment}[4][\@afterelementsvspace]{%
  \savebox{\@commentmainbox}{{\usefontofkomafont{commentmainfont} #3}}%
  \settowidth\@commentmainlength{\usebox{\@commentmainbox}}%
  \setlength{\@commentlength}{%
    \@maincolwidth-\@sepcolwidth-\@commentmainlength%
  }%
  \cvitem[#1]{#2}{%
    \begin{minipage}[t]{\@commentmainlength}%
      \usefontofkomafont{commentmainfont} #3%
    \end{minipage}%
    \hfill%
   \begin{minipage}[t]{\@commentlength}%
     \raggedleft\usefontofkomafont{commentfont} #4%
   \end{minipage}%
 }%
}
  \providecommand*{\link}[2][]{%
    \ifstrempty{#1}{%
      \href{#2}{\usefontofkomafont{linkfont}#2}}{%
      \href{#2}{\usefontofkomafont{linkfont}#1}}%
  }
  \providecommand*\croplink{}
  \providecommand*{\httplink}[2][]{%
    \renewcommand\croplink{\StrDel{#2}{http://}}
    \ifstrempty{#1}{%
      \IfSubStr{#2}{http:}{\href{#2}}{\href{http://#2}}{%
        \usefontofkomafont{httplinkfont}\croplink}%
      }{%
      \IfSubStr{#2}{http:}{\href{#2}}{\href{http://#2}}{%
        \usefontofkomafont{httplinkfont}#1}}
    }
  \providecommand*{\httpslink}[2][]{%
    \renewcommand\croplink{\StrDel{#2}{https://}}
    \ifstrempty{#1}{%
      \IfSubStr{#2}{https:}{\href{#2}}{\href{https://#2}}{%
        \usefontofkomafont{httpslinkfont}\croplink}%
      }{%
      \IfSubStr{#2}{https:}{\href{#2}}{\href{https://#2}}{%
        \usefontofkomafont{httpslinkfont}#1}}
    }
  \providecommand*{\emaillink}[2][]{%
    \ifstrempty{#1}{%
      \href{mailto:#2}{\usefontofkomafont{emaillinkfont}#2}}{%
      \href{mailto:#2}{\usefontofkomafont{emaillinkfont}#1}}%
  }
\providecommand*\signaturecity{}
\providecommand\Signature[1][0.382\textwidth]{%
  \par
  \begin{tabular}{@{}p{#1}@{}}
    \rule{0pt}{\beforesigvspace}\\\hline
    \signaturecity, \today\hfill
  \end{tabular}}

\hypersetup{
  breaklinks,
  unicode,
  colorlinks    = false,
  pdfborder     = {0 0 .3},
  pdfstartview  = FitH,
  pdfstartpage  = 1,
  pdfcreator    = \LaTeX{},
  pdfproducer   = \LaTeX{}
}
\urlstyle{same}
\providecommand*\@citebordercolor{}
\providecommand*\citebordercolor{\@citebordercolor}
\providecommand*\@filebordercolor{}
\providecommand*\filebordercolor{\@filebordercolor}
\providecommand*\@linkbordercolor{}
\providecommand*\linkbordercolor{\@linkbordercolor}
\providecommand*\@menubordercolor{}
\providecommand*\menubordercolor{\@menubordercolor}
\providecommand*\@runbordercolor{}
\providecommand*\runbordercolor{\@runbordercolor}
\providecommand*\@urlbordercolor{}
\providecommand*\urlbordercolor{\@urlbordercolor}
\providecommand*\allbordercolors{}
\providecommand*\pdfauthor{}
\providecommand*\pdfsubject{}
\providecommand*\pdftitle{}
\providecommand*\pdfkeywords{}
\AtEndPreamble{%
\providecommand*\@allbordercolors{colortheme}
\ifdefempty{\allbordercolors}{}{\renewcommand*\@allbordercolors{\allbordercolors}}
\providecommand*\@pdfauthor{\firstname~\familyname}
\ifdefempty{\pdfauthor}{}{\renewcommand*\@pdfauthor{\pdfauthor}}
\providecommand*\@pdfsubject{\firstname~\familyname}
\providecommand*\pdfsubject{\@pdfsubject}
\providecommand*\@pdftitle{\title~\firstname~\familyname}
\providecommand*\pdftitle{\@pdftitle}
\providecommand*\@pdfkeywords{\firstname~\familyname{} curriculum~vit\ae{} CV{}}
\providecommand*\pdfkeywords{\@pdfkeywords}
  \hypersetup{%
    allbordercolors = \@allbordercolors,
    citebordercolor = \citebordercolor,
    filebordercolor = \filebordercolor,
    linkbordercolor = \linkbordercolor,
    menubordercolor = \menubordercolor,
    runbordercolor  = \runbordercolor,
    urlbordercolor  = \urlbordercolor,
    pdfauthor       = \@pdfauthor,
    pdfsubject      = \pdfsubject,
    pdftitle        = \pdftitle,
    pdfkeywords     = \pdfkeywords,
  }
} % end AtEndPreamble
\AtBeginDocument{%
  \raggedbottom
} % End AtBeginDocument
\clearpairofpagestyles
\RequirePackage{komacv-\komacv@style}
\endinput
%%
%% End of file `komacv.cls'.
