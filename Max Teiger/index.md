---
title       : First Shiny App
subtitle    : US Census 2010
author      : TEIGER MAUNICK HALBEHER
job         : Data Analytics
logo        : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : solarized_light      # 
widgets     : [interactive, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
<!-- Limit image width and height -->
<style type='text/css'>
img {
    max-height: 560px;
    max-width: 964px;
}
</style>

<!-- Center image on slide -->
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type='text/javascript'>
$(function() {
    $("p:has(img)").addClass('centered');
});
</script>
---
## Idea

> The idea is to have an impact on the distribution of the population in the United States according to the ethnic origins of the inhabitants. 

---
## Datas


```r
library(xtable)
print(xtable(counties[1:6,1:6]), type = "html")
```

<!-- html table generated in R 3.5.2 by xtable 1.8-4 package -->
<!-- Thu Nov 28 09:01:15 2019 -->
<table border=1>
<tr> <th>  </th> <th> name </th> <th> total.pop </th> <th> white </th> <th> black </th> <th> hispanic </th> <th> asian </th>  </tr>
  <tr> <td align="right"> 1 </td> <td> alabama,autauga </td> <td align="right"> 54571.00 </td> <td align="right"> 77.20 </td> <td align="right"> 19.30 </td> <td align="right"> 2.40 </td> <td align="right"> 0.90 </td> </tr>
  <tr> <td align="right"> 2 </td> <td> alabama,baldwin </td> <td align="right"> 182265.00 </td> <td align="right"> 83.50 </td> <td align="right"> 10.90 </td> <td align="right"> 4.40 </td> <td align="right"> 0.70 </td> </tr>
  <tr> <td align="right"> 3 </td> <td> alabama,barbour </td> <td align="right"> 27457.00 </td> <td align="right"> 46.80 </td> <td align="right"> 47.80 </td> <td align="right"> 5.10 </td> <td align="right"> 0.40 </td> </tr>
  <tr> <td align="right"> 4 </td> <td> alabama,bibb </td> <td align="right"> 22915.00 </td> <td align="right"> 75.00 </td> <td align="right"> 22.90 </td> <td align="right"> 1.80 </td> <td align="right"> 0.10 </td> </tr>
  <tr> <td align="right"> 5 </td> <td> alabama,blount </td> <td align="right"> 57322.00 </td> <td align="right"> 88.90 </td> <td align="right"> 2.50 </td> <td align="right"> 8.10 </td> <td align="right"> 0.20 </td> </tr>
  <tr> <td align="right"> 6 </td> <td> alabama,bullock </td> <td align="right"> 10914.00 </td> <td align="right"> 21.90 </td> <td align="right"> 71.00 </td> <td align="right"> 7.10 </td> <td align="right"> 0.20 </td> </tr>
   </table>

<img src='https://upload.wikimedia.org/wikipedia/commons/b/b1/ECE_PARIS_ssvilles.png'>

--- &radio

## Quizz

What is the most populated countie in USA ?

1. _California, Los Angeles_
2. New York, Queens
3. Florida, Miami
4. Texas, Dallas

*** .hint
The weather is good there

*** .explanation
Slidify marche pas bien

---
## Answer 

```r
m_countie <- counties[order(-counties$total.pop),][1,]
print(xtable(m_countie), type = 'html')
```

<!-- html table generated in R 3.5.2 by xtable 1.8-4 package -->
<!-- Thu Nov 28 09:01:15 2019 -->
<table border=1>
<tr> <th>  </th> <th> name </th> <th> total.pop </th> <th> white </th> <th> black </th> <th> hispanic </th> <th> asian </th>  </tr>
  <tr> <td align="right"> 175 </td> <td> california,los angeles </td> <td align="right"> 9818605.00 </td> <td align="right"> 27.80 </td> <td align="right"> 13.20 </td> <td align="right"> 47.70 </td> <td align="right"> 13.70 </td> </tr>
   </table>



