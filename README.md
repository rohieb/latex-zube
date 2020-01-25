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
    README            -- this README
    zube.ins          -- LaTeX installation file for the zube package
    zube.dtx          -- LaTeX code for the zube package
    zubexmpl.tex      -- examples for using the zube package

You can create `zube.sty` from `zube.dtx` by running

    $ latex zube.ins

Then copy `zube.sty` and `fm*.pdf` into your TEXMF tree. Refer to the
documentation of your TeX distribution for where this folder is located, and
whether you need to update any package databases.  On most recent distributions,
dropping the files into `$HOME/texmf/tex/latex/` should work.

You can also create the (German) documentation for this package by running

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

This work has the LPPL maintenance status “maintained”, and the Current
Maintainer of this work is Roland Hieber.

This work consists of the files `README.md`, `zube.dtx` and `zube.ins`, as well
as the derived files `zube.sty` and `zube.pdf`.

The examples in `zubexmpl.tex` are licensed under CC-0 (Public Domain), see
<https://creativecommons.org/publicdomain/zero/1.0/>.

The forms (`fm*.pdf`) provided by the Bundesfinanzverwaltung are Amtliche
Werke (“official works”) in Germany and are therefore not coprightable
according to §5 Urheberrechtsgesetz.  They can be obtained at
<https://www.formulare-bfinv.de>, path „Formularcenter“ → „Steuerformulare“ →
„Gemeinnützigkeit“.
