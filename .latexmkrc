#!/usr/bin/env perl
$latex            = 'platex -halt-on-error %B';
$latex_silent     = 'platex -halt-on-error -interaction=batchmode %B';
$bibtex           = 'pbibtex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %B';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$pvc_view_file_via_temporary = 0;