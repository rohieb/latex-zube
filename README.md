<!-- SPDX-License-Identifier: LPPL-1.3c -->

Note for international users: This LaTeX package lets you create and fill out
templates of German tax-related forms, its package documentation is therefore
only available in German.

----

*zube*: typesetting of Zuwendungsbestätigungen according to § 10b ESt
=====================================================================

* Author:  Roland Hieber, <rohieb+latex-zube-Ua2thei6@rohieb.name>
* Version: 0.1 (unrelased)
* Maintenance Status: actively maintained (as of 2020-01-23)

The *zube* LaTeX package allows you to typeset Zuwendungsbestätigungen (donation
acknowledgements) according to § 10b ESt (the German income tax law).  It uses
the original templates provided by the Bundesfinanzverwaltung, and the form data
provided by the user is filled in by absolutely positioning text snippets on
top of the template.  It is therefore suited for scripting the process of
issuing such acknowledgements.

This package is maintained on GitHub at <https://github.com/rohieb/latex-zube>.
Issues and patches are welcome!


Installation
------------

This package consists of the following files:

    fm034122.pdf      -- original PDF of form 034122 "Bestätigung über
                         Sachzuwendung / steuerbegünstigte Einrichtung / Verein"
    Makefile          -- a GNU Makefile to build everything
    README            -- this README
    zube.ins          -- LaTeX installation file for the zube package
    zube.dtx          -- LaTeX code for the zube package
    zubexmpl.tex      -- examples for using the zube package

You can create `zube.sty` from `zube.dtx` by running

    $ make

or

    $ latex zube.ins

Then copy `zube.sty` and `fm*.pdf` into your TEXMF tree. Refer to the
documentation of your TeX distribution for where this folder is located, and
whether you need to update any package databases.  On most recent distributions,
dropping the files into `$HOME/texmf/tex/latex/` should work.

You can also create the (German) documentation for this package by running

    $ make

or

    $ pdflatex zube.dtx

The documentation is then accessible in PDF format in the file `zube.pdf`.


License
-------

Copyright (C) 2020 Roland Hieber

*zube* may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.3c of this license or (at your option)
any later version.  The latest version of this license is available at
<http://www.latex-project.org/lppl.txt> and version 1.3 or later is part of all
distributions of LaTeX version 2005/12/01 or later.

See the file `LICENSE` in this repository for more information.
