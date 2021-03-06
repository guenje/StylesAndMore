% \CheckSum{172}
% \changes{v1.0}{April 2001}{Erstellt von Vorlage}
%    \IndexPrologue
%      {\section*{Index}
%          Unterstrichene Seitenzahlen
%          verweisen auf die Definition, alle anderen auf die Verwendung.
%
%          Die folgenden vier Anweisungen erzeugen einen Index:
%
%          latex hanserbuchdoc
%
%          makeindex -g -s german.ist hanserbuchdoc
%
%          makeindex -s gglo.ist -o hanserbuchdoc.gls hanserbuchdoc.glo
%
%          latex hanserbuchdoc
%      }
%    \GlossaryPrologue{\section*{�nderungen}}
%
% \changes{v1.4}{20.03.2003}{ Kleinere Layoutanpassungen, LE-TeX GbR}
% \changes{v1.5}{01.06.2003}{ Texth�he erh�ht in Absprache mit Frau Weilhart}
%
% \MakeShortVerb{\|}
% \title{hanserbuch.cls -- Eine \LaTeX{}-Klasse}
% \author{Version 1.5\\Manfred Brill}
% \maketitle
% \section{Einleitung}
%
% Der \LaTeX-class-file \emph{hanserbuch.cls} ist auf der Basis eines vorliegenden class-files entstanden,
% der von den
% Autoren Holzmann und Plate f�r das bei Hanser erschienene Buch \cite{holzmannplate}
% erstellt wurde.
%
% In einem weiteren Schritt wurden alle Makros und Umgebungen in die Package-Dateien
% |hanser.sty| und |mbmath.sty| verlagert. Dadurch wird es m�glich, andere Dokumente, die nachwievor
% in DIN A4 gesetzt werden, mit dem gleichen Layout wie ein Buch zu setzen.
%
% Die vorliegende class-Datei definiert vor allem die Texth�he und -breite,
% die f�r Hanserb�cher deutlich kleiner ist als DIN A4, und die grundlegende class-Datei
% book geladen. \emph{Alle} Optionen werden intern an |book| weitergegeben.
%
% In einer �berarbeitung durch die LE-TeX GbR wurden kleinere �nderungen von
% Layoutparametern vorgenommen. Diese �nderungen sind durch die Versionsnummer 1.4
% gekennzeichnet.
%
% Diese Datei wurde mit der class |article| und den packages |hanser.sty| und |mbmath.sty| gesetzt.
%
% \section{Der Initialisierungsteil}
% Der class-file benutzt die \LaTeX-Klasse \emph{book}, mit den Default-Optionen
%\begin{itemize}
% \item \emph{a4paper},
% \item \emph{10pt},
% \item \emph{twoside},
% \item \emph{german}.
% \end{itemize}
% Es wird grunds�tzlich neue deutsche Rechtschreibung
% verwendet!
%
% \section{Postscript und PDF mit Type-1 Fonts}
% Mit Hilfe der Pakete |palatino| und |mathpple| enthalten die erzeugten Postscript-Dateien ausschliesslich
% Postscript Type--1 Fonts. Dazu m�ssen die BaKoMa oder Blue Sky Fonts installiert sein, oder eine andere Fontfamilie,
% die in der Lage ist, Type--1 Fonts zu erzeugen.
%
% Ob noch Type--3 Fonts in der erzeugten PDF-Datei enthalten sind kann
% im \emph{Adobe Acrobat} durch |Datei -> Eigenschaften -> Fonts|
% �berpr�ft werden. Dort werden die in der aktuellen PDF-Datei enthaltenen Fonts aufgelistet und angegebenen,
% welchen Typ sie haben. Type--3 Fonts sind insbesondere am Bildschirm sofort zu bemerken, da sie nicht
% skalierbar sind, und deshalb am Monitor eine schlechte Darstellungsqualit�t besiten.
%
% |dvips| ben�tigt eine Druckerkonfigurationsdatei, die definiert, welche Fonts benutzt werden sollen. Insbesondere
% werden |map-Dateien| geladen. Ein m�glicher Druckertreiber mit dem Namen |config.bakoma| f�r die |BaKoMa|-Fonts
% ist:
%
% \begin{center}
% |p +bakomaextra.map|
%
% |p +psfonts.cmz|
%
% |p +psfonts.amz|
% \end{center}
%
% Dann f�hrt ein Aufruf von
%
% \begin{center}|dvips -P bakoma dvifile|\end{center}
%
% dazu, dass die richtigen Type--1 Fonts beim Erstellen der Postscript Datei geladen werden.
% Mehr Informationen dazu findet man in \cite{companion} und auf der Adobe Website.
% \section{Seitenabmessungen}
% B�cher des Hanser-Verlags sind in ihren Abmessungen kleiner als DIN A4.
% Als Textbreite ist $126$ mm, als Texth�he $191$ mm eingestellt. Gedruckt wird auf DIN A4.
%
% F�r die R�nder sind ebenfalls entsprechende Einstellungen vorgenommen worden. Die L�ngen |\textfloatsep|
% und |\intextsep| sind beide auf den Wert $10pt \pm 2pt $
% gesetzt. Dadurch wird ein kleinerer Abstand zwischen Gleitobjekten und Text erreicht.
% Mit |raggedbottom| wird verhindert, dass \LaTeX{} innerhalb Seitenende vertikalen Raum einf�gt.
%
% Die Kopf- und Fu�zeilen werden mit dem Paket |\fancyhf| gesetzt. Der Font ist |\small|, die Fu�noten
% werden abschnittsweise nummeriert.  Auf den ungeraden Seiten steht das Kapitel, auf geraden Seiten
% der Abschnitt, immer verbunden mit der Seitenzahl.
%
% \clearpage
% \section{theorem-Umgebungen}
% \DescribeEnv{satz}
% \DescribeEnv{definition}
% F�r S�tze und Definitionen werden die beiden theorem-Umgebungen |satz| und |definition| eingef�hrt. Sie
% werden kapitelweise nummeriert. Einzelheiten �ber die Verwendung k�nnen
% in \cite{companion} eingesehen werden. Die Definitionen setzen das Paket |theorem| voraus!
%
% \StopEventually{
% \begin{thebibliography}{9}
%   \bibitem{companion} M. ~Goossens, F. ~Mittelbach, und A. ~Samarin:
%   \emph{Der \LaTeX{} Begleiter}, 2000, Addison-Wesley.
%   \bibitem{holzmannplate} J. ~Holzmann und J. ~Plate:
%   \emph{Linux-Server f�r Intranet und Internet}, 2002, Hanser.
%   \bibitem{mathebuch} M. ~Brill: \emph{Mathematik f�r Informatiker},
%   2001, Hanser.
% \end{thebibliography}
% }
%
% \section{Die Class-Datei}
% \subsection{Die Kenndaten}
%    Zun�chst identifizieren wir das Paket und dessen aktuelle Version:
%    \begin{macrocode}
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{hanserbuch}[2002/06/04, (MB)]
\typeout{Hanser book class, V1.3, (c) Manfred Brill}
%    \end{macrocode}
% \subsection{Ausf�hren von Optionen}
% Dann werden alle im \LaTeX{} Dokument angegebenen Optionen an |book| weitergegeben.
%    \begin{macrocode}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
%    \end{macrocode}
% Abschlie�end wird das Paket |book| geladen und die Optionen
% |a4paper|, |10pt|, |twoside| und |german| werden als Default definiert.
%    \begin{macrocode}
\LoadClass{book}
\PassOptionsToClass{a4paper, 10pt, twoside, german}{book}
%    \end{macrocode}
% \subsection{Der Initialisierungsteil}
% Wir laden die folgenden Pakete:
% \changes{v1.2}{4. Juni 2002}{Mathematik Makros jetzt in mbmath.sty}
% \changes{v1.3}{5. Juni 2002}{Der Gro�teil der Funktionalit�t wurde in hanser.sty verlagert}
%    \begin{macrocode}
\RequirePackage{hanser}
\RequirePackage{mbmath}
%    \end{macrocode}
%
% \subsection{Seitenabmessungen}
% Wir drucken auf DIN A4 aus, allerdings wird \emph{nicht} die ganze H�he ausgenutzt, um sp�ter

% auf die Druckgr��e gehen zu k�nnen. |raggedbottom| sorgt daf�r, dass kein zus�tzlicher
% vertikaler Raum innerhalb der Seite eingef�gt wird.
% \changes{v1.3}{04.06.2002}{Papierma�e werden jetzt von A4 benutzt}
% \changes{v1.4}{20.03.2003}{parskip auf 3pt festgelegt}
% \changes{v1.5}{01.06.2003}{Texth�he vergr��ert (1 Zeile) von 187 mm auf 191 mm; dies entspricht nun $49$ Zeilen bei $10$pt Schrift}
%    \begin{macrocode}
\setlength\textheight                 {196mm}
\setlength\textwidth                  {128mm}
\setlength\headsep                {17pt}
\setlength\marginparwidth         {32mm}
\setlength\marginparsep            {3mm}
\setlength\oddsidemargin           {4.6mm}
\setlength\evensidemargin         {4.6mm}
\setlength\topmargin                  {-11.9mm}
\setlength{\textfloatsep}{10pt plus 2pt minus 2pt}
\setlength{\intextsep}{10pt plus 2pt minus 2pt}
\parskip 3pt
\parindent 0pt
\raggedbottom
%    \end{macrocode}
%
% Kopf- und Fu�zeilen werden mit dem Pakete |fancyhdr| gesetzt. Einzelheiten dazu
% findet man in \cite{companion}, Seite $96$. Auf geraden Seiten steht der Kapitelname,
% auf ungeraden die Abschnitts�berschrift. Als Font wird |\small| verwendet.
%    \begin{macrocode}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
\fancyhead[LE,RO]{\small \thepage}
\fancyhead[LO]{\small \nouppercase  \rightmark}
\fancyhead[RE]{\small \nouppercase  \leftmark}
\fancypagestyle{plain}{%
   \fancyhead{} %
   \renewcommand{\headrulewidth}{0pt} %
}
%    \end{macrocode}
%
% Fu�zeilen werden in |\scriptsize| gesetzt. Die Nummerierung erfolgt abschnittsweise, im
% Gegensatz zum \LaTeX{} Default, der kapitelweise nummeriert.
% Der Text ist linksb�ndig.
%    \begin{macrocode}
\fancyfoot{\scriptsize}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\@addtoreset{footnote}{section}
\renewcommand\@makefntext[1]{%
    \noindent
    \makebox[0.6em][l]{\@makefnmark}#1
}
%    \end{macrocode}
% Die Fu�notenlinie ist k�rzer als der \LaTeX{} Default, der f�r die Klasse |book| $0.4\cdot $|\columnwidth|
% betr�gt.
% \changes{v1.4}{20.03.2003}{Fu�noten immer an der Seitenunterkante stehen,
%   auch wenn die Seite nicht gef�llt ist.}
%    \begin{macrocode}
\renewcommand\footnoterule{%
  \vfill%
  \hrule\@width.2\columnwidth%
  \kern2.6\p@}
%    \end{macrocode}
%
% \changes{v1.4}{20.03.2003}{Abst�nde zwischen den Eintr�gen in itemize und
%   enumerate reduziert.}
%
% \subsection{itemize und enumerate}
%
% Die Abst�nde zwischen den einzelnen Punkten soll gegen�ber
% gegen�ber der \LaTeX-Book-Klasse reduizert werden. Dazu m�ssen
% |itemsep| und |parsep| beim Aufruf von |list| angepasst werden.
% Die folgenden Definitionen stammen aus latex.ltx und
% enthalten die erforderlichen Anpassungen.
%
%    \begin{macrocode}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\itemsep0pt\parsep1.5mm\usecounter\@enumctr
         \def\makelabel##1{\hss\llap{##1}}}%
  \fi}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\itemsep0pt\parsep1.5mm%
       \def\makelabel##1{\hss\llap{##1}}}%
  \fi}
%    \end{macrocode}
%
% \subsection{Inhaltsverzeichnis}
%
% Gegen�ber der book.cls sollen Kapitel�berschriften ausgepunktet werden.
% Anpassung der Definition aus book.cls.
%   \begin{macrocode}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \@dottedtocline{0}{0pt}{1.5em}{\bfseries#1}{\bfseries#2}%
      \penalty\@highpenalty
    \endgroup
  \fi}
%    \end{macrocode}
% \subsection{theorem-Umgebungen}
% \begin{environment}{satz}
% \begin{environment}{definition}
% Es werden die theorem-Umgebungen \emph{satz} und \emph{definition} definiert. Sie
% werden kapitelweise nummeriert.
% \end{environment}
%    \begin{macrocode}
\newtheorem{satz}{Satz}[chapter]
\newtheorem{definition}{Definition}[chapter]
%    \end{macrocode}
% Der Abstand davor und danach wird neu gesetzt. Der Default im |theorem|-Paket ist
%
% |\setlength\theorempreskipamount{12pt plus 5pt minus 3pt}|
%
% und
%
% |\setlength\theorempostskipamount{8pt plus 3pt minus 1.5pt}|.
%    \begin{macrocode}
\setlength\theorempreskipamount{8pt plus 3pt minus 1.5pt}
\setlength\theorempostskipamount{5pt plus 1pt minus 1pt}
%    \end{macrocode}
% \end{environment}
%
% Insgesamt wird \LaTeX{} mit |\sloppy| aufgefordert, nicht so pingelig zu sein.
%    \begin{macrocode}
\sloppy
%    \end{macrocode}
%
% \Finale
\endinput
