Developing Data Products Week 4
========================================================
author: 
date: 22/5/2020
autosize: true

Overview
========================================================

This assignment has two parts:

 * First, a Shiny application and deployed on Rstudio's servers
 * Second, reproducible pitch presentation about the application

The files for this project can be found at Github:
<https://github.com/yomnaFathy/DevelopingDataProductsW4>  

The link for this presentation:
<https://yomnafathy.github.io/DevelopingDataProductsW4/pitch.Rpres>


Application 
========================================================

Url for shiny application
<https://yomnafathy.shinyapps.io/DevelopingDataProductsW4/>

This application is built using `USArrests` dataset, available in datasets package.

The app contains 2 tabs:

- *Data tab*
    * Explore the summary or structure of the dataset
    * Print number of observations from the dataset
    
- *Clustring tab*
    * lustring data using K-means algorithm
    * Choose any two variables and number of clusters to cluster the data with
    * Plot that shows clusters of the data is shown

Application
========================================================
![Data tab](pitch-figure/data.png)

R Code
========================================================


```r
str(USArrests)
```

```
'data.frame':	50 obs. of  4 variables:
 $ Murder  : num  13.2 10 8.1 8.8 9 7.9 3.3 5.9 15.4 17.4 ...
 $ Assault : int  236 263 294 190 276 204 110 238 335 211 ...
 $ UrbanPop: int  58 48 80 50 91 78 77 72 80 60 ...
 $ Rape    : num  21.2 44.5 31 19.5 40.6 38.7 11.1 15.8 31.9 25.8 ...
```




