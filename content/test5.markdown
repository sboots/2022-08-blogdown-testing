---
title: Test post DT5
author: ''
date: '2022-08-12'
---

<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="/rmarkdown-libs/datatables-binding/datatables.js"></script>
<script src="/rmarkdown-libs/jquery/jquery-3.6.0.min.js"></script>
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="/rmarkdown-libs/dt-core/js/jquery.dataTables.min.js"></script>
<link href="/rmarkdown-libs/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/crosstalk/js/crosstalk.min.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="/rmarkdown-libs/datatables-binding/datatables.js"></script>
<script src="/rmarkdown-libs/jquery/jquery-3.6.0.min.js"></script>
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="/rmarkdown-libs/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="/rmarkdown-libs/dt-core/js/jquery.dataTables.min.js"></script>
<link href="/rmarkdown-libs/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="/rmarkdown-libs/crosstalk/js/crosstalk.min.js"></script>

## This is a test page.

Testing 4, without visible R code. Now with sourcing from a separate document.

Also adding in a reference to the filename of the page.

Current filename:

``` r
current_filename <- get_current_filename()
current_filename
```

    ## [1] "test5"

``` r
# Comparisons
current_filename == "test4"
```

    ## [1] FALSE

``` r
current_filename == "test5"
```

    ## [1] TRUE

``` r
current_filename == "test6"
```

    ## [1] FALSE

Initial table data below.

Data table here:

<div id="htmlwidget-1" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"filter":"none","vertical":false,"data":[[1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11],["I","I","I","I","I","I","I","I","I","I","I","II","II","II","II","II","II","II","II","II","II","II","III","III","III","III","III","III","III","III","III","III","III","IV","IV","IV","IV","IV","IV","IV","IV","IV","IV","IV"],[10,8,13,9,11,14,6,4,12,7,5,10,8,13,9,11,14,6,4,12,7,5,10,8,13,9,11,14,6,4,12,7,5,8,8,8,8,8,8,8,19,8,8,8],[8.04,6.95,7.58,8.81,8.33,9.96,7.24,4.26,10.84,4.82,5.68,9.14,8.14,8.74,8.77,9.26,8.1,6.13,3.1,9.13,7.26,4.74,7.46,6.77,12.74,7.11,7.81,8.84,6.08,5.39,8.15,6.42,5.73,6.58,5.76,7.71,8.84,8.47,7.04,5.25,12.5,5.56,7.91,6.89]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>observation<\/th>\n      <th>set<\/th>\n      <th>x<\/th>\n      <th>y<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":10,"autoWidth":true,"columnDefs":[{"className":"dt-left","targets":0},{"className":"dt-center","targets":1},{"className":"dt-right","targets":[2,3]}],"order":[],"orderClasses":false}},"evals":[],"jsHooks":[]}</script>

## Part 4.2

Second data table on the same page:

<div id="htmlwidget-2" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"filter":"none","vertical":false,"data":[[3,10,6,6,3,2,7,9,4,8,7,1,3,5,1,1,4,1,8,5],["III","III","II","IV","II","IV","III","II","I","IV","II","II","I","III","I","IV","III","III","II","II"],[13,7,14,8,13,8,6,12,9,19,6,10,13,11,10,8,9,10,4,11],[12.74,6.42,8.1,7.04,8.74,5.76,6.08,9.13,8.81,12.5,6.13,9.14,7.58,7.81,8.04,6.58,7.11,7.46,3.1,9.26]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>observation<\/th>\n      <th>set<\/th>\n      <th>x<\/th>\n      <th>y<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":10,"autoWidth":true,"columnDefs":[{"className":"dt-left","targets":0},{"className":"dt-center","targets":1},{"className":"dt-right","targets":[2,3]}],"order":[],"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
