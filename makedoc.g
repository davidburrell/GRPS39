# AutoDoc: Generate documentation from GAP source code
#
# Copyright of AutoDoc belongs to its developers.
# Please refer to the COPYRIGHT file for details.
#
# SPDX-License-Identifier: GPL-2.0-or-later

LoadPackage("AutoDoc");

# bib:=ParseBibFiles("manual.bib");
# WriteBibXMLextFile("manualbib.xml",bib);

AutoDoc( rec( 
    autodoc := true,
    gapdoc := rec(
        LaTeXOptions := rec( EarlyExtraPreamble := """
            \usepackage{a4wide}
            \newcommand{\bbZ}{\mathbb{Z}}
        """ )
    ),
    scaffold := rec(
        # includes := [ "overview.xml"],
        bib := "manualbib.xml"
    )
));
QUIT;
