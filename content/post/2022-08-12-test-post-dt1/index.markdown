---
title: Test post DT1
author: ''
date: '2022-08-12'
slug: test-post-dt1
categories: []
tags: []
---

<script src="{{< blogdown/postref >}}index_files/htmlwidgets/htmlwidgets.js"></script>
<link href="{{< blogdown/postref >}}index_files/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/datatables-binding/datatables.js"></script>
<script src="{{< blogdown/postref >}}index_files/jquery/jquery-3.6.0.min.js"></script>
<link href="{{< blogdown/postref >}}index_files/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="{{< blogdown/postref >}}index_files/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/dt-core/js/jquery.dataTables.min.js"></script>
<link href="{{< blogdown/postref >}}index_files/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/crosstalk/js/crosstalk.min.js"></script>

Testing 1.

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(tidyr)
library(DT)
library(ggplot2)

anscombe_tidy <- anscombe %>%
    mutate(observation = seq_along(x1)) %>%
    gather(key, value, -observation) %>%
    separate(key, c("variable", "set"), 1, convert = TRUE) %>%
    mutate(set = as.character(as.roman(set))) %>%
    spread(variable, value) %>%
    arrange(set)
head(anscombe_tidy)
```

    ##   observation set  x    y
    ## 1           1   I 10 8.04
    ## 2           2   I  8 6.95
    ## 3           3   I 13 7.58
    ## 4           4   I  9 8.81
    ## 5           5   I 11 8.33
    ## 6           6   I 14 9.96

Data table here:

``` r
anscombe_tidy %>% 
datatable(rownames = FALSE, 
          options = list(
            pageLength = 11, 
            autoWidth = TRUE, 
            columnDefs = list(list(
              className = 'dt-left', 
              targets = 0),
              list(className = 'dt-center', targets = 1))))
```

<div id="htmlwidget-1" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"filter":"none","vertical":false,"data":[[1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11,1,2,3,4,5,6,7,8,9,10,11],["I","I","I","I","I","I","I","I","I","I","I","II","II","II","II","II","II","II","II","II","II","II","III","III","III","III","III","III","III","III","III","III","III","IV","IV","IV","IV","IV","IV","IV","IV","IV","IV","IV"],[10,8,13,9,11,14,6,4,12,7,5,10,8,13,9,11,14,6,4,12,7,5,10,8,13,9,11,14,6,4,12,7,5,8,8,8,8,8,8,8,19,8,8,8],[8.04,6.95,7.58,8.81,8.33,9.96,7.24,4.26,10.84,4.82,5.68,9.14,8.14,8.74,8.77,9.26,8.1,6.13,3.1,9.13,7.26,4.74,7.46,6.77,12.74,7.11,7.81,8.84,6.08,5.39,8.15,6.42,5.73,6.58,5.76,7.71,8.84,8.47,7.04,5.25,12.5,5.56,7.91,6.89]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>observation<\/th>\n      <th>set<\/th>\n      <th>x<\/th>\n      <th>y<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":11,"autoWidth":true,"columnDefs":[{"className":"dt-left","targets":0},{"className":"dt-center","targets":1},{"className":"dt-right","targets":[2,3]}],"order":[],"orderClasses":false,"lengthMenu":[10,11,25,50,100]}},"evals":[],"jsHooks":[]}</script>
