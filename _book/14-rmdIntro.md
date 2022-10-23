



# (PART) Assignments {-}

# R Markdown 


## Introduction to R Markdown

::: {.infobox .download data-latex="{download}"}
[You can download the example markdown file here](./Code/rmarkdown_example.Rmd)
:::

This page will guide you through creating and editing R Markdown documents. This is a useful tool for reporting your analysis (e.g. for homework assignments). Of course, there is also [a cheat sheet for R-Markdown](https://www.rstudio.org/links/r_markdown_cheat_sheet) and [this book](https://bookdown.org/yihui/rmarkdown/) contains a comprehensive discussion of the format. 

The following video contains a short introduction to the R Markdown format.

<br>
<div align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/o8FdyMAR-g4" frameborder="0" allowfullscreen></iframe>
</div>
<br>

### Creating a new R Markdown document {-}

In addition to the video, the following text contains a short description of the most important formatting options.  

Let's start to go through the steps of creating and .Rmd file and outputting the content to an HTML file. 

0. If an R-Markdown file was provided to you, open it with R-Studio and skip to [step 4](#step4) after adding your answers.

1. Open R-Studio

2. Create a new R-Markdown document
![](./rmdExplain/start.PNG)
![](./rmdExplain/openDoc.PNG)
![](./rmdExplain/enterName.PNG)
![](./rmdExplain/template.PNG)

3. Save with appropriate name
![](./rmdExplain/saving.PNG)

    3.1. Add your answers

    3.2. Save again

 <a name="step4"></a>
 
4. "Knit" to HTML 
![](./rmdExplain/knit.PNG)

5. Hand in appropriate file (ending in `.html`) on learn\@WU
![](./rmdExplain/handin.PNG)

### Text and Equations {-}

R-Markdown documents are plain text files that include both text and R-code. Using RStudio they can be converted ('knitted') to HTML or PDF files that include both the text and the results of the R-code. In fact this website is written using R-Markdown and RStudio. In order for RStudio to be able to interpret the document you have to use certain characters or combinations of characters when formatting text and including R-code to be evaluated. By default the document starts with the options for the text part. You can change the title, date, author and a few more advanced options. 

![First lines of an R-Markdown document](./rmdExplain/rmdHead.PNG)

The default is text mode, meaning that lines in an Rmd document will be interpreted as text, unless specified otherwise.

#### Headings {-}

Usually you want to include some kind of heading to structure your text. A heading is created using `#` signs. A single `#` creates a first level heading, two `##` a second level and so on. 

![](./rmdExplain/headings.PNG)

It is important to note here that the ```#``` symbol means something different within the code chunks as opposed to outside of them. If you continue to put a ```#``` in front of all your regular text, it will all be interpreted as a first level heading, making your text very large.

#### Lists {-}

Bullet point lists are created using `*`, `+` or `-`. Sub-items are created by indenting the item using 4 spaces or 2 tabs. 

````
* First Item
* Second Item
    + first sub-item
        - first sub-sub-item
    + second sub-item
````
* First Item
* Second Item
    + first sub-item
        - first sub-sub-item
    + second sub-item


Ordered lists can be created using numbers and letters. If you need sub-sub-items use `A)` instead of `A.` on the third level. 

````
1. First item
    a. first sub-item
        A) first sub-sub-item 
     b. second sub-item
2. Second item
````

1. First item
    a. first sub-item
        A) first sub-sub-item
    b. second sub-item
2. Second item


#### Text formatting {-}

Text can be formatted in *italics* (`*italics*`) or **bold** (`**bold**`). In addition, you can ad block quotes with `>`

````
> Lorem ipsum dolor amet chillwave lomo ramps, four loko green juice messenger bag raclette forage offal shoreditch chartreuse austin. Slow-carb poutine meggings swag blog, pop-up salvia taxidermy bushwick freegan ugh poke.
````
> Lorem ipsum dolor amet chillwave lomo ramps, four loko green juice messenger bag raclette forage offal shoreditch chartreuse austin. Slow-carb poutine meggings swag blog, pop-up salvia taxidermy bushwick freegan ugh poke.

### R-Code {-}

R-code is contained in so called "chunks". These chunks always start with three backticks and ```r``` in curly braces (``` ```{r} ```) and end with three backticks (``` ``` ```). Optionally, parameters can be added after the ```r``` to influence how a chunk behaves. Additionally, you can also give each chunk a name. Note that these have to be **unique**, otherwise R will refuse to knit your document.

#### Global and chunk options {-}

The first chunk always looks as follows


    ```{r setup, include = FALSE}
    knitr::opts_chunk$set(echo = TRUE)
    ```

It is added to the document automatically and sets options for all the following chunks. These options can be overwritten on a per-chunk basis. 

Keep `knitr::opts_chunk$set(echo = TRUE)` to print your code to the document you will hand in. Changing it to `knitr::opts_chunk$set(echo = FALSE)` will not print your code by default. This can be changed on a per-chunk basis.




    ```{r cars, echo = FALSE}
    summary(cars)

    plot(dist~speed, cars)
    ```



```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

<img src="14-rmdIntro_files/figure-html/cars-1.png" width="672" />

 
    ```{r cars2, echo = TRUE}
    summary(cars)

    plot(dist~speed, cars)
    ```



```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

```r
plot(dist ~ speed, cars)
```

<img src="14-rmdIntro_files/figure-html/cars2-1.png" width="672" />

A good overview of all available global/chunk options can be found [here](https://yihui.name/knitr/options/#chunk_options).

### LaTeX Math {-}

Writing well formatted mathematical formulas is done the same way as in [LaTeX](https://en.wikipedia.org/wiki/LaTeX). Math mode is started and ended using `$$`. 
````
$$
 f_1(\omega) = \frac{\sigma^2}{2 \pi},\ \omega \in[-\pi, \pi]
$$
````

$$
 f_1(\omega) = \frac{\sigma^2}{2 \pi},\ \omega \in[-\pi, \pi]
$$

(for those interested this is the spectral density of [white noise](https://en.wikipedia.org/wiki/White_noise))

Including inline mathematical notation is done with a single ```$``` symbol. 

````
${2\over3}$ of my code is inline.

````
${2\over3}$ of my code is inline.

<br>

Take a look at [this wikibook on Mathematics in LaTeX](https://en.wikibooks.org/wiki/LaTeX/Mathematics#Symbols) and [this list of Greek letters and mathematical symbols](https://www.sharelatex.com/learn/List_of_Greek_letters_and_math_symbols) if you are not familiar with LaTeX.

In order to write multi-line equations in the same math environment, use `\\` after every line. In order to insert a space use a single `\`. To render text inside a math environment use `\text{here is the text}`. In order to align equations start with `\begin{align}` and place an `&` in each line at the point around which it should be aligned. Finally end with `\end{align}`

````
$$
\begin{align}
\text{First equation: }\ Y &= X \beta + \epsilon_y,\ \forall X \\
\text{Second equation: }\ X &= Z \gamma + \epsilon_x
\end{align}
$$
````

$$
\begin{align}
\text{First equation: }\ Y &= X \beta + \epsilon_y,\ \forall X \\
\text{Second equation: }\ X &= Z \gamma + \epsilon_x
\end{align}
$$

#### Important symbols {-}

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Symbol </th>
   <th style="text-align:left;"> Code </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> $a^{2} + b$ </td>
   <td style="text-align:left;"> ```a^{2} + b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a^{2+b}$ </td>
   <td style="text-align:left;"> ```a^{2+b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a_{1}$ </td>
   <td style="text-align:left;"> ```a_{1}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \leq b$ </td>
   <td style="text-align:left;"> ```a \leq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \geq b$ </td>
   <td style="text-align:left;"> ```a \geq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \neq b$ </td>
   <td style="text-align:left;"> ```a \neq b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \approx b$ </td>
   <td style="text-align:left;"> ```a \approx b``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \in (0,1)$ </td>
   <td style="text-align:left;"> ```a \in (0,1)``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a \rightarrow \infty$ </td>
   <td style="text-align:left;"> ```a \rightarrow \infty``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\frac{a}{b}$ </td>
   <td style="text-align:left;"> ```\frac{a}{b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\frac{\partial a}{\partial b}$ </td>
   <td style="text-align:left;"> ```\frac{\partial a}{\partial b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sqrt{a}$ </td>
   <td style="text-align:left;"> ```\sqrt{a}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_{i = 1}^{b} a_i$ </td>
   <td style="text-align:left;"> ```\sum_{i = 1}^{b} a_i``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\int_{a}^b f(c) dc$ </td>
   <td style="text-align:left;"> ```\int_{a}^b f(c) dc``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\prod_{i = 0}^b a_i$ </td>
   <td style="text-align:left;"> ```\prod_{i = 0}^b a_i``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $c \left( \sum_{i=1}^b a_i \right)$ </td>
   <td style="text-align:left;"> ```c \left( \sum_{i=1}^b a_i \right)``` </td>
  </tr>
</tbody>
</table>

The `{}` after `_` and `^` are not strictly necessary if there is only one character in the sub-/superscript. However, in order to place multiple characters in the sub-/superscript they are necessary. 
e.g.


<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Symbol </th>
   <th style="text-align:left;"> Code </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> $a^b = a^{b}$ </td>
   <td style="text-align:left;"> ```a^b = a^{b}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $a^b+c \neq a^{b+c}$ </td>
   <td style="text-align:left;"> ```a^b+c \neq a^{b+c}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_i a_i = \sum_{i} a_{i}$ </td>
   <td style="text-align:left;"> ```\sum_i a_i = \sum_{i} a_{i}``` </td>
  </tr>
  <tr>
   <td style="text-align:left;"> $\sum_{i=1}^{b+c} a_i \neq \sum_i=1^b+c a_i$ </td>
   <td style="text-align:left;"> ```\sum_{i=1}^{b+c} a_i \neq \sum_i=1^b+c a_i``` </td>
  </tr>
</tbody>
</table>

#### Greek letters {-}

[Greek letters](https://en.wikipedia.org/wiki/Greek_alphabet#Letters) are preceded by a `\` followed by their name (`$\beta$` = $\beta$). In order to capitalize them simply capitalize the first letter of the name (`$\Gamma$` = $\Gamma$).


## Assignment 1: Solution

**Load libraries and data**


```r
library(tidyverse)
music_data <- read.csv2("https://short.wu.ac.at/ma22_musicdata")
str(music_data)
```

```
## 'data.frame':	66796 obs. of  31 variables:
##  $ isrc                       : chr  "BRRGE1603547" "USUM71808193" "ES5701800181" "ITRSE2000050" ...
##  $ artist_id                  : int  3679 5239 776407 433730 526471 1939 210184 212546 4938 119985 ...
##  $ streams                    : num  11944813 8934097 38835 46766 2930573 ...
##  $ weeks_in_charts            : int  141 51 1 1 7 226 13 1 64 7 ...
##  $ n_regions                  : int  1 21 1 1 4 8 1 1 5 1 ...
##  $ danceability               : num  50.9 35.3 68.3 70.4 84.2 35.2 73 55.6 71.9 34.6 ...
##  $ energy                     : num  80.3 75.5 67.6 56.8 57.8 91.1 69.6 24.5 85 43.3 ...
##  $ speechiness                : num  4 73.3 14.7 26.8 13.8 7.47 35.5 3.05 3.17 6.5 ...
##  $ instrumentalness           : num  0.05 0 0 0.000253 0 0 0 0 0.02 0 ...
##  $ liveness                   : num  46.3 39 7.26 8.91 22.8 9.95 32.1 9.21 11.4 10.1 ...
##  $ valence                    : num  65.1 43.7 43.4 49.5 19 23.6 58.4 27.6 36.7 76.8 ...
##  $ tempo                      : num  166 191.2 99 91 74.5 ...
##  $ song_length                : num  3.12 3.23 3.02 3.45 3.95 ...
##  $ song_age                   : num  228.3 144.3 112.3 50.7 58.3 ...
##  $ explicit                   : int  0 0 0 0 0 0 0 0 1 0 ...
##  $ n_playlists                : int  450 768 48 6 475 20591 6 105 547 688 ...
##  $ sp_popularity              : int  51 54 32 44 52 81 44 8 59 68 ...
##  $ youtube_views              : num  1.45e+08 1.32e+07 6.12e+06 0.00 0.00 ...
##  $ tiktok_counts              : int  9740 358700 0 13 515 67300 0 0 653 3807 ...
##  $ ins_followers_artist       : int  29613108 3693566 623778 81601 11962358 1169284 1948850 39381 9751080 343 ...
##  $ monthly_listeners_artist   : int  4133393 18367363 888273 143761 15551876 16224250 2683086 1318874 4828847 3088232 ...
##  $ playlist_total_reach_artist: int  24286416 143384531 4846378 156521 90841884 80408253 7332603 24302331 8914977 8885252 ...
##  $ sp_fans_artist             : int  3308630 465412 23846 1294 380204 1651866 214001 10742 435457 1897685 ...
##  $ shazam_counts              : int  73100 588550 0 0 55482 5281161 0 0 39055 0 ...
##  $ artistName                 : chr  "Luan Santana" "Alessia Cara" "Ana Guerra" "Claver Gold feat. Murubutu" ...
##  $ trackName                  : chr  "Eu, VocÃª, O Mar e Ela" "Growing Pains" "El Remedio" "Ulisse" ...
##  $ release_date               : chr  "2016-06-20" "2018-06-14" "2018-04-26" "2020-03-31" ...
##  $ genre                      : chr  "other" "Pop" "Pop" "HipHop/Rap" ...
##  $ label                      : chr  "Independent" "Universal Music" "Universal Music" "Independent" ...
##  $ top10                      : int  1 0 0 0 0 1 0 0 0 0 ...
##  $ expert_rating              : chr  "excellent" "good" "good" "poor" ...
```

```r
# head(music_data, 2)
```

First, you should convert the variables to the correct types:  

```r
library(magrittr)
music_data %<>% mutate(release_date = as.Date(release_date), # convert to date
                explicit = factor(explicit, levels = 0:1, labels = c("not explicit", "explicit")), # convert to factor w. new labels
                label = as.factor(label), # convert to factor with values as labels
                genre = as.factor(genre),
                top10 = as.logical(top10),
                expert_rating = factor(expert_rating, 
                                       levels = c("poor", "fair", "good", "excellent", "masterpiece"), 
                                       ordered = TRUE))
head(music_data, 2)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["fct"],"align":["left"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["date"],"align":["right"]},{"label":["genre"],"name":[28],"type":["fct"],"align":["left"]},{"label":["label"],"name":[29],"type":["fct"],"align":["left"]},{"label":["top10"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["ord"],"align":["right"]}],"data":[{"1":"BRRGE1603547","2":"3679","3":"11944813","4":"141","5":"1","6":"50.9","7":"80.3","8":"4.0","9":"0.05","10":"46.3","11":"65.1","12":"166.018","13":"3.11865","14":"228.2857","15":"not explicit","16":"450","17":"51","18":"145030723","19":"9740","20":"29613108","21":"4133393","22":"24286416","23":"3308630","24":"73100","25":"Luan Santana","26":"Eu, VocÃª, O Mar e Ela","27":"2016-06-20","28":"other","29":"Independent","30":"TRUE","31":"excellent"},{"1":"USUM71808193","2":"5239","3":"8934097","4":"51","5":"21","6":"35.3","7":"75.5","8":"73.3","9":"0.00","10":"39.0","11":"43.7","12":"191.153","13":"3.22800","14":"144.2857","15":"not explicit","16":"768","17":"54","18":"13188411","19":"358700","20":"3693566","21":"18367363","22":"143384531","23":"465412","24":"588550","25":"Alessia Cara","26":"Growing Pains","27":"2018-06-14","28":"Pop","29":"Universal Music","30":"FALSE","31":"good"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>


**Task 1**

1. Determine the most popular song by the artist "Billie Eilish".
2. Create a new `data.frame` that only contains songs by "Billie Eilish" (Bonus: Also include songs that feature both Billie Eilish and other artists, see e.g., "lovely (with Khalid)")
3. Save the `data.frame` sorted by success (number of streams) with the most popular songs occurring first.


There might be multiple ways of tackling this task. For example, you could start from question 3 and first create the complete data frame with only Billie's songs, ordered by popularity:  

```r
billie_eilish <- music_data |>
    filter(artistName == "Billie Eilish") |>
    arrange(desc(streams))  #arrange by number of streams (in descending order)
head(billie_eilish, 4)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["fct"],"align":["left"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["date"],"align":["right"]},{"label":["genre"],"name":[28],"type":["fct"],"align":["left"]},{"label":["label"],"name":[29],"type":["fct"],"align":["left"]},{"label":["top10"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["ord"],"align":["right"]}],"data":[{"1":"USUM71900764","2":"5596","3":"1459149566","4":"724","5":"35","6":"70.1","7":"42.5","8":"37.50","9":"13.0","10":"10.0","11":"56.2","12":"135.128","13":"3.234800","14":"103.28571","15":"not explicit","16":"10226","17":"87","18":"1070192329","19":"140000","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"15967622","25":"Billie Eilish","26":"bad guy","27":"2019-03-28","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"USUM71922577","2":"5596","3":"594991676","4":"491","5":"35","6":"70.4","7":"22.5","8":"9.94","9":"65.7","10":"10.6","11":"24.3","12":"120.006","13":"4.090433","14":"70.57143","15":"not explicit","16":"5459","17":"86","18":"210598263","19":"71500","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"7180495","25":"Billie Eilish","26":"everything i wanted","27":"2019-11-13","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"USUM71900770","2":"5596","3":"298707880","4":"382","5":"35","6":"90.5","7":"38.9","8":"33.20","9":"16.2","10":"10.6","11":"19.6","12":"120.046","13":"3.219050","14":"103.28571","15":"not explicit","16":"4261","17":"79","18":"399709135","19":"8511","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"2755292","25":"Billie Eilish","26":"bury a friend","27":"2019-01-30","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"USUM72021500","2":"5596","3":"269394372","4":"129","5":"35","6":"88.9","7":"34.0","8":"6.97","9":"13.0","10":"5.5","11":"71.6","12":"94.009","13":"2.905350","14":"18.42857","15":"not explicit","16":"2692","17":"91","18":"141648329","19":"3100000","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"2185476","25":"Billie Eilish","26":"Therefore I Am","27":"2020-11-12","28":"Rock","29":"Universal Music","30":"TRUE","31":"masterpiece"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
  
In that data frame, you could filter out and display the most popular song, using `max()` function:  

```r
filter(billie_eilish, streams == max(streams)) |>
    select(trackName)  #print top-1 song
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["trackName"],"name":[1],"type":["chr"],"align":["left"]}],"data":[{"1":"bad guy"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
  
OR, as long as this data frame is already saved with the most popular song on top, you can simply take the first element of the data frame:  

```r
billie_eilish[1, "trackName"]
```

```
## [1] "bad guy"
```
  
  
**Bonus:** For finding all songs featuring Billie Eilish, you could use `str_detect()` function from `stringr` package. It searches for all variables in `artistName`, containing the string "Billie Eilish". The rest stays the same:  

```r
billie_eilish_full <- filter(music_data, str_detect(artistName, "Billie Eilish")) |> #filter all Billie's appearances
                      arrange(desc(streams)) #arrange by number of streams (in descending order)

#filter(billie_eilish_full, streams == max(streams)) |> select(trackName) #print the top-1 song
head(billie_eilish_full, 3) 
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["fct"],"align":["left"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["date"],"align":["right"]},{"label":["genre"],"name":[28],"type":["fct"],"align":["left"]},{"label":["label"],"name":[29],"type":["fct"],"align":["left"]},{"label":["top10"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["ord"],"align":["right"]}],"data":[{"1":"USUM71900764","2":"5596","3":"1459149566","4":"724","5":"35","6":"70.1","7":"42.5","8":"37.50","9":"13.0","10":"10.0","11":"56.2","12":"135.128","13":"3.234800","14":"103.28571","15":"not explicit","16":"10226","17":"87","18":"1070192329","19":"140000","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"15967622","25":"Billie Eilish","26":"bad guy","27":"2019-03-28","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"USUM71804190","2":"5596","3":"736917003","4":"906","5":"35","6":"35.1","7":"29.6","8":"3.33","9":"0.0","10":"9.5","11":"12.0","12":"115.284","13":"3.336433","14":"152.42857","15":"not explicit","16":"6074","17":"88","18":"86414365","19":"24100","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"5983153","25":"Billie Eilish feat. Khalid","26":"lovely (with Khalid)","27":"2018-04-19","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"USUM71922577","2":"5596","3":"594991676","4":"491","5":"35","6":"70.4","7":"22.5","8":"9.94","9":"65.7","10":"10.6","11":"24.3","12":"120.006","13":"4.090433","14":"70.57143","15":"not explicit","16":"5459","17":"86","18":"210598263","19":"71500","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"7180495","25":"Billie Eilish","26":"everything i wanted","27":"2019-11-13","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

**Task 2**

Create a new `data.frame` containing the 100 most streamed songs. 

Here you could simply arrange the whole data set by streams and then take 100 first rows using `slice_head()`:

```r
top_100 <- arrange(music_data, desc(streams)) |>
    slice_head(n = 100)
head(top_100)
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["isrc"],"name":[1],"type":["chr"],"align":["left"]},{"label":["artist_id"],"name":[2],"type":["int"],"align":["right"]},{"label":["streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["weeks_in_charts"],"name":[4],"type":["int"],"align":["right"]},{"label":["n_regions"],"name":[5],"type":["int"],"align":["right"]},{"label":["danceability"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["energy"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["speechiness"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["instrumentalness"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["liveness"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["valence"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["tempo"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["song_length"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["song_age"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["explicit"],"name":[15],"type":["fct"],"align":["left"]},{"label":["n_playlists"],"name":[16],"type":["int"],"align":["right"]},{"label":["sp_popularity"],"name":[17],"type":["int"],"align":["right"]},{"label":["youtube_views"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["tiktok_counts"],"name":[19],"type":["int"],"align":["right"]},{"label":["ins_followers_artist"],"name":[20],"type":["int"],"align":["right"]},{"label":["monthly_listeners_artist"],"name":[21],"type":["int"],"align":["right"]},{"label":["playlist_total_reach_artist"],"name":[22],"type":["int"],"align":["right"]},{"label":["sp_fans_artist"],"name":[23],"type":["int"],"align":["right"]},{"label":["shazam_counts"],"name":[24],"type":["int"],"align":["right"]},{"label":["artistName"],"name":[25],"type":["chr"],"align":["left"]},{"label":["trackName"],"name":[26],"type":["chr"],"align":["left"]},{"label":["release_date"],"name":[27],"type":["date"],"align":["right"]},{"label":["genre"],"name":[28],"type":["fct"],"align":["left"]},{"label":["label"],"name":[29],"type":["fct"],"align":["left"]},{"label":["top10"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["expert_rating"],"name":[31],"type":["ord"],"align":["right"]}],"data":[{"1":"GBAHS1600463","2":"3648","3":"2165692479","4":"1532","5":"35","6":"82.5","7":"65.2","8":"8.02","9":"0.00","10":"9.31","11":"93.1","12":"95.977","13":"3.895217","14":"211.28571","15":"not explicit","16":"28754","17":"86","18":"5225251113","19":"780900","20":"31799118","21":"54645910","22":"333851354","23":"16312741","24":"1137483","25":"Ed Sheeran","26":"Shape of You","27":"2017-01-06","28":"Pop","29":"Warner Music","30":"TRUE","31":"fair"},{"1":"QZES71982312","2":"1410939","3":"1909947000","4":"649","5":"35","6":"82.5","7":"59.3","8":"9.88","9":"0.02","10":"17.00","11":"54.0","12":"98.078","13":"3.495917","14":"97.28571","15":"not explicit","16":"11330","17":"88","18":"1527998214","19":"6700000","20":"689914","21":"23941476","22":"128533003","23":"431389","24":"38107895","25":"Tones and I","26":"Dance Monkey","27":"2019-05-09","28":"Rock","29":"Warner Music","30":"TRUE","31":"excellent"},{"1":"USUM71900764","2":"5596","3":"1459149566","4":"724","5":"35","6":"70.1","7":"42.5","8":"37.50","9":"13.00","10":"10.00","11":"56.2","12":"135.128","13":"3.234800","14":"103.28571","15":"not explicit","16":"10226","17":"87","18":"1070192329","19":"140000","20":"78388337","21":"47632687","22":"223834163","23":"4355854","24":"15967622","25":"Billie Eilish","26":"bad guy","27":"2019-03-28","28":"Rock","29":"Universal Music","30":"TRUE","31":"good"},{"1":"DEUM71807062","2":"550208","3":"1419867299","4":"674","5":"35","6":"50.1","7":"40.5","8":"3.19","9":"0.00","10":"10.50","11":"44.6","12":"109.891","13":"3.036017","14":"96.28571","15":"not explicit","16":"9248","17":"90","18":"346557905","19":"1500000","20":"5581593","21":"29822533","22":"146074472","23":"593695","24":"894017","25":"Lewis Capaldi","26":"Someone You Loved","27":"2018-11-08","28":"Rock","29":"Universal Music","30":"TRUE","31":"excellent"},{"1":"USUM71911283","2":"4934","3":"1156206588","4":"604","5":"35","6":"75.9","7":"54.8","8":"2.90","9":"0.00","10":"8.28","11":"74.9","12":"116.967","13":"3.180000","14":"91.57143","15":"not explicit","16":"9109","17":"83","18":"1215405738","19":"5700000","20":"59448876","21":"42568761","22":"257192162","23":"5613129","24":"12124023","25":"Shawn Mendes feat. Camila Cabello","26":"SeÃ±orita","27":"2019-06-19","28":"Pop","29":"Universal Music","30":"TRUE","31":"excellent"},{"1":"USUG11800208","2":"74419","3":"1103693478","4":"1099","5":"35","6":"74.0","7":"61.3","8":"14.50","9":"0.37","10":"12.30","11":"47.3","12":"75.023","13":"2.776767","14":"157.28571","15":"not explicit","16":"9537","17":"86","18":"1028957267","19":"1700000","20":"18761684","21":"27692936","22":"59707763","23":"2547427","24":"2906121","25":"XXXTENTACION","26":"SAD!","27":"2018-03-02","28":"Pop","29":"Universal Music","30":"TRUE","31":"excellent"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



**Task 3**

1. Determine the most popular genres. 
- Group the data by genre and calculate the total number of streams within each genre. 
- Sort the result to show the most popular genre first.
2. Create a bar plot in which the heights of the bars correspond to the total number of streams within a genre (Bonus: order the bars by their height)

The correct order of the `dplyr` functions would be as follows: you first group the observations by genre, then summarize the streams using `sum()`, and finally arrange the sums of streams. If you create an object, don't forget to print it to show the result:

```r
genres_popularity <- music_data |>
    group_by(genre) |>
    summarize(streams = sum(streams)) |>
    arrange(desc(streams))
genres_popularity
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["genre"],"name":[1],"type":["fct"],"align":["left"]},{"label":["streams"],"name":[2],"type":["dbl"],"align":["right"]}],"data":[{"1":"Pop","2":"173713597202"},{"1":"HipHop/Rap","2":"143116357087"},{"1":"other","2":"65952433233"},{"1":"Electro/Dance","2":"33815774273"},{"1":"Rock","2":"29085255798"},{"1":"R&B","2":"28843269808"},{"1":"Country","2":"7575073860"},{"1":"Soundtrack","2":"4132622529"},{"1":"German Folk","2":"1521744994"},{"1":"Reggae","2":"775976707"},{"1":"Classics/Jazz","2":"58854804"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>


Ideally, you should provide some **textual conclusion**, e.g., "as can be seen, Pop is the most popular genre when the total number of streams is considered".

To create a bar plot, you need the data frame with the sums of streams by labels. Then you should use `ggplot()` function as follows:

```r
genres_popularity <- as.data.frame(genres_popularity)
# head(genres_popularity)

library(colorspace)
ggplot(genres_popularity, aes(x = genre, y = streams)) +
    geom_col(aes(fill = streams)) + ylab("Total streams") +
    xlab("Genre") + theme_minimal() + scale_fill_continuous_sequential(palette = "Purple-Orange") +
    theme(axis.text.x = element_text(angle = 45, vjust = 0.6),
        legend.title = element_blank())
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-4-1.png" alt="Total streams by genre" width="672" />
<p class="caption">(\#fig:unnamed-chunk-4)Total streams by genre</p>
</div>


**Bonus:** if you want to reorder the bars to clearly show the most/least popular genres, use function `fct_reorder()` from the package `forcats` (part of `tidyverse`):

```r
ggplot(genres_popularity, aes(x = genre, y = streams)) +
    geom_col(aes(x = fct_reorder(genre, streams), fill = streams)) +
    ylab("Total streams") + xlab("Genre") + theme_minimal() +
    scale_fill_continuous_sequential(palette = "Purple-Orange") +
    theme(axis.text.x = element_text(angle = 45, vjust = 0.6),
        legend.title = element_blank())
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-5-1.png" alt="Total streams by genre, ordered" width="672" />
<p class="caption">(\#fig:unnamed-chunk-5)Total streams by genre, ordered</p>
</div>


**Task 4**

1. Rank the music labels by their success (total number of streams of all their songs)
2. Show the total number of streams as well as the average and the median of all songs by label. (Bonus: Also add the artist and track names and the number of streams of each label's top song to the result)

Just like in the previous task, it would be enough to group the observations (in this case, by labels), get the sums of streams, and arrange them:

```r
music_data |>
    group_by(label) |>
    summarize(total_streams = sum(streams)) |>
    arrange(desc(total_streams))
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["label"],"name":[1],"type":["fct"],"align":["left"]},{"label":["total_streams"],"name":[2],"type":["dbl"],"align":["right"]}],"data":[{"1":"Universal Music","2":"197499391883"},{"1":"Sony Music","2":"108111852495"},{"1":"Independent","2":"94289773362"},{"1":"Warner Music","2":"88689942555"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

Again, you need to report the result of sorting, e.g., Universal Music is the leader by number of streams of their songs.

To add more descriptive statistics (mean and median), you should also use `summarize()`:

```r
music_data |>
    group_by(label) |>
    summarize(total_streams = sum(streams), avg_streams = mean(streams),
        median_streams = median(streams)) |>
    arrange(desc(total_streams))
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["label"],"name":[1],"type":["fct"],"align":["left"]},{"label":["total_streams"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["avg_streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["median_streams"],"name":[4],"type":["dbl"],"align":["right"]}],"data":[{"1":"Universal Music","2":"197499391883","3":"9129964","4":"434943.0"},{"1":"Sony Music","2":"108111852495","3":"8725735","4":"355898.5"},{"1":"Independent","2":"94289773362","3":"4177659","4":"238884.0"},{"1":"Warner Music","2":"88689942555","3":"8691684","4":"347152.5"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

Here, you can compare labels by means: for example, it's already clear that Independent label(s) have more songs than Warner Music, thus it has more total streams; however, Warner Music's songs are more successful than Independent's in average streams.

**Bonus:** to add most popular artists' names and their hit songs, create three more columns using `first()` function from `dplyr` (you need to use `dplyr::first()` because the `first()` function exists in some other R packages):

```r
music_data |>
    group_by(label) |>
    summarize(total_streams = sum(streams), avg_streams = mean(streams),
        median_streams = median(streams), artist = dplyr::first(artistName,
            order_by = desc(streams)), song = dplyr::first(trackName,
            order_by = desc(streams)), song_streams = dplyr::first(streams,
            order_by = desc(streams))) |>
    arrange(desc(total_streams))
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["label"],"name":[1],"type":["fct"],"align":["left"]},{"label":["total_streams"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["avg_streams"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["median_streams"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["artist"],"name":[5],"type":["chr"],"align":["left"]},{"label":["song"],"name":[6],"type":["chr"],"align":["left"]},{"label":["song_streams"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"Universal Music","2":"197499391883","3":"9129964","4":"434943.0","5":"Billie Eilish","6":"bad guy","7":"1459149566"},{"1":"Sony Music","2":"108111852495","3":"8725735","4":"355898.5","5":"Travis Scott","6":"SICKO MODE","7":"1032407145"},{"1":"Independent","2":"94289773362","3":"4177659","4":"238884.0","5":"XXXTENTACION","6":"Jocelyn Flores","7":"936906948"},{"1":"Warner Music","2":"88689942555","3":"8691684","4":"347152.5","5":"Ed Sheeran","6":"Shape of You","7":"2165692479"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>


**Task 5**

1. How do genres differ in terms of song features (audio features + song length + explicitness + song age)?
- Select appropriate summary statistics for each of the variables and highlight the differences between genres using the summary statistics.
- Create an appropriate plot showing the differences of "energy" across genres.
   
All audio features, song length and song age are variables measured on a **ratio scale**, which means that we can evaluate their **average values**. We can use `describeBy()` function, which displays mean by default alongside with median and range values. Let's have a look at some of the features:

```r
library(psych)
describeBy(select(music_data, danceability, energy,
    speechiness, song_length, song_age), music_data$genre)
```

```
## 
##  Descriptive statistics by group 
## group: Classics/Jazz
##              vars  n   mean     sd median trimmed    mad   min     max   range
## danceability    1 80  46.00  18.34  46.60   46.05  20.39  7.33   83.70   76.37
## energy          2 80  30.85  19.51  28.10   29.00  18.46  0.26   85.00   84.74
## speechiness     3 80   6.11   6.55   3.92    4.53   1.15  2.46   46.70   44.24
## song_length     4 80   3.69   1.29   3.46    3.65   1.14  0.82    7.98    7.16
## song_age        5 80 819.66 780.21 590.93  689.94 572.28 17.29 4255.29 4238.00
##               skew kurtosis    se
## danceability -0.05    -0.74  2.05
## energy        0.72    -0.03  2.18
## speechiness   3.89    18.08  0.73
## song_length   0.45     0.53  0.14
## song_age      1.78     4.00 87.23
## ------------------------------------------------------------ 
## group: Country
##              vars   n   mean     sd median trimmed   mad   min     max   range
## danceability    1 504  59.67  11.98  59.70   59.64  9.49 19.20   92.20   73.00
## energy          2 504  69.71  18.71  75.00   71.50 17.12  4.84   97.70   92.86
## speechiness     3 504   5.16   4.10   3.78    4.28  1.30  2.48   35.10   32.62
## song_length     4 504   3.35   0.54   3.27    3.31  0.48  1.69    5.40    3.70
## song_age        5 504 244.21 437.55 109.29  133.08 99.33  2.29 2755.14 2752.86
##               skew kurtosis    se
## danceability -0.05     0.40  0.53
## energy       -0.85     0.16  0.83
## speechiness   3.97    20.41  0.18
## song_length   0.81     1.18  0.02
## song_age      3.51    12.80 19.49
## ------------------------------------------------------------ 
## group: Electro/Dance
##              vars    n   mean     sd median trimmed   mad   min     max   range
## danceability    1 2703  66.55  11.87  67.40   67.09 11.42 22.40   97.30   74.90
## energy          2 2703  74.51  13.99  76.20   75.58 13.49  2.62   99.90   97.28
## speechiness     3 2703   7.82   6.33   5.38    6.46  2.59  2.37   47.40   45.03
## song_length     4 2703   3.36   0.74   3.25    3.28  0.49  0.56    9.83    9.27
## song_age        5 2703 187.77 194.72 157.29  154.42 84.51  3.14 2285.57 2282.43
##               skew kurtosis   se
## danceability -0.45     0.22 0.23
## energy       -0.85     1.08 0.27
## speechiness   2.52     7.77 0.12
## song_length   2.59    13.64 0.01
## song_age      4.48    28.86 3.75
## ------------------------------------------------------------ 
## group: German Folk
##              vars   n   mean     sd median trimmed   mad   min     max   range
## danceability    1 539  63.03  15.36  65.20   63.81 15.57 20.60   96.40   75.80
## energy          2 539  61.73  22.56  66.60   63.03 25.06  5.48   99.90   94.42
## speechiness     3 539   9.80  10.20   4.91    7.57  2.67  2.45   49.90   47.45
## song_length     4 539   3.65   0.97   3.63    3.64  0.76  0.72    6.93    6.22
## song_age        5 539 436.39 552.94 212.29  301.88 70.53  3.29 2985.57 2982.29
##               skew kurtosis    se
## danceability -0.42    -0.40  0.66
## energy       -0.44    -0.85  0.97
## speechiness   1.77     2.18  0.44
## song_length  -0.06     1.23  0.04
## song_age      2.44     5.37 23.82
## ------------------------------------------------------------ 
## group: HipHop/Rap
##              vars     n   mean    sd median trimmed   mad  min     max   range
## danceability    1 21131  73.05 12.30  74.80   73.86 11.86 8.39   98.00   89.61
## energy          2 21131  65.10 13.28  65.70   65.41 13.49 0.54   99.00   98.46
## speechiness     3 21131  20.92 13.55  19.00   19.74 15.72 2.54   96.60   94.06
## song_length     4 21131   3.22  0.81   3.14    3.17  0.61 0.50   29.78   29.28
## song_age        5 21131 109.30 96.83  96.29  100.31 75.40 0.29 1837.57 1837.29
##               skew kurtosis   se
## danceability -0.63     0.16 0.08
## energy       -0.31     0.20 0.09
## speechiness   0.84     0.97 0.09
## song_length   5.28   125.03 0.01
## song_age      5.37    55.22 0.67
## ------------------------------------------------------------ 
## group: other
##              vars    n   mean     sd median trimmed    mad  min     max   range
## danceability    1 5228  64.53  15.39  67.00   65.81  14.53 7.83   96.70   88.87
## energy          2 5228  63.91  20.46  67.70   65.58  20.76 3.32   98.80   95.48
## speechiness     3 5228   9.30  10.38   5.58    7.12   3.39 2.36   95.50   93.14
## song_length     4 5228   3.43   0.96   3.35    3.38   0.72 0.53   22.17   21.64
## song_age        5 5228 395.45 651.78 142.43  230.38 130.68 0.43 4268.43 4268.00
##               skew kurtosis   se
## danceability -0.75     0.35 0.21
## energy       -0.65    -0.29 0.28
## speechiness   4.09    24.16 0.14
## song_length   3.47    50.56 0.01
## song_age      2.80     8.07 9.01
## ------------------------------------------------------------ 
## group: Pop
##              vars     n   mean     sd median trimmed   mad  min     max   range
## danceability    1 30069  63.74  14.46  65.10   64.39 14.53 0.00   98.30   98.30
## energy          2 30069  62.91  18.62  65.00   63.97 19.13 0.00  100.00  100.00
## speechiness     3 30069   9.85  10.20   5.37    7.58  3.28 0.00   95.60   95.60
## song_length     4 30069   3.52   0.84   3.43    3.47  0.65 0.02   29.35   29.34
## song_age        5 30069 238.36 374.54 143.29  150.48 99.12 0.29 6325.00 6324.71
##               skew kurtosis   se
## danceability -0.42    -0.09 0.08
## energy       -0.49    -0.22 0.11
## speechiness   2.36     7.21 0.06
## song_length   3.02    52.35 0.00
## song_age      4.28    25.68 2.16
## ------------------------------------------------------------ 
## group: R&B
##              vars    n   mean     sd median trimmed   mad  min     max   range
## danceability    1 1881  67.97  13.43  70.10   69.07 12.60 8.66   97.00   88.34
## energy          2 1881  61.25  15.80  62.30   61.92 15.86 2.46   96.10   93.64
## speechiness     3 1881  12.34  10.10   8.38   10.59  6.33 2.29   85.60   83.31
## song_length     4 1881   3.46   0.72   3.43    3.43  0.63 0.89    8.53    7.64
## song_age        5 1881 229.74 460.38 109.71  118.87 82.39 2.29 3277.00 3274.71
##               skew kurtosis    se
## danceability -0.77     0.42  0.31
## energy       -0.42     0.01  0.36
## speechiness   1.69     3.64  0.23
## song_length   0.85     3.31  0.02
## song_age      4.43    20.72 10.62
## ------------------------------------------------------------ 
## group: Reggae
##              vars   n   mean     sd median trimmed    mad   min     max   range
## danceability    1 121  75.06   9.33  76.70   75.55   7.71 40.40   94.40   54.00
## energy          2 121  67.61  14.91  69.60   68.47  14.83 14.50   91.10   76.60
## speechiness     3 121  11.96   8.69   7.85   10.58   5.49  2.62   36.30   33.68
## song_length     4 121   3.50   0.57   3.44    3.43   0.52  2.48    5.37    2.89
## song_age        5 121 343.68 530.67 152.29  219.77 126.02 13.29 2307.14 2293.86
##               skew kurtosis    se
## danceability -0.66     0.89  0.85
## energy       -0.66     0.52  1.36
## speechiness   1.16     0.44  0.79
## song_length   1.00     0.98  0.05
## song_age      2.67     6.75 48.24
## ------------------------------------------------------------ 
## group: Rock
##              vars    n   mean     sd median trimmed    mad  min     max   range
## danceability    1 4214  54.75  13.98  55.00   55.05  13.79 6.28   98.00   91.72
## energy          2 4214  67.77  21.37  70.85   69.41  23.35 1.37   99.80   98.43
## speechiness     3 4214   6.19   5.22   4.32    5.03   1.82 2.22   54.60   52.38
## song_length     4 4214   3.85   0.99   3.72    3.78   0.73 0.66   15.73   15.06
## song_age        5 4214 356.17 531.81 160.29  223.63 112.68 1.29 3309.71 3308.43
##               skew kurtosis   se
## danceability -0.21     0.02 0.22
## energy       -0.58    -0.44 0.33
## speechiness   3.34    14.68 0.08
## song_length   2.11    15.15 0.02
## song_age      2.52     6.17 8.19
## ------------------------------------------------------------ 
## group: Soundtrack
##              vars   n   mean     sd median trimmed   mad   min     max   range
## danceability    1 326  52.82  16.25  54.10   52.84 17.79 15.00   91.50   76.50
## energy          2 326  52.05  21.96  50.20   52.24 22.98  1.26   97.90   96.64
## speechiness     3 326   6.82   7.51   3.99    5.17  1.46  2.42   81.80   79.38
## song_length     4 326   3.55   0.99   3.50    3.54  0.80  0.77    8.84    8.07
## song_age        5 326 230.16 318.20 147.29  162.42 81.54  3.43 3068.29 3064.86
##               skew kurtosis    se
## danceability -0.03    -0.70  0.90
## energy       -0.05    -0.58  1.22
## speechiness   4.59    33.21  0.42
## song_length   0.50     3.06  0.05
## song_age      4.73    28.67 17.62
```

**Please note that it is not enough to simply print the means.** You should always explain (a.k.a. "highlight") the differences between genres in terms of song features:

* on average, Reggae and HipHop are the most danceable genres (their mean danceabilities are 75.06 and 73.05, respectively);
+ Rock songs have the longest average song duration across all genres (3.85 min);
+ Classic and Jazz songs are the oldest (average song age is 819.66 weeks);
+ etc.


However, explicitness is a **categorical (nominal) variable**, i.e., **we cannot use mean or median** to describe genres by explicitness. To describe genres by it, we should get and examine the frequencies of explicit and not explicit songs:

```r
# table(select(music_data, genre, explicit))
# #absolute frequencies
prop.table(table(select(music_data, genre, explicit)),
    1) |>
    round(3)  #relative frequencies
```

```
##                explicit
## genre           not explicit explicit
##   Classics/Jazz        0.825    0.175
##   Country              0.980    0.020
##   Electro/Dance        0.660    0.340
##   German Folk          0.701    0.299
##   HipHop/Rap           0.948    0.052
##   other                0.922    0.078
##   Pop                  0.845    0.155
##   R&B                  0.922    0.078
##   Reggae               0.909    0.091
##   Rock                 0.828    0.172
##   Soundtrack           0.868    0.132
```

This can also be visualized with a grouped bar chart:

```r
#genres_explicit <- as.data.frame(table(select(music_data, genre, explicit)))  #absolute frequencies
genres_explicit_rel <- as.data.frame(prop.table(table(select(music_data, genre, explicit)), 1))  #relative frequencies

library(colorspace)
ggplot(genres_explicit_rel, 
       aes(x = genre, y = Freq, fill = explicit)) + #use "fill" argument for different colors
  geom_col(position = "dodge") + #use "dodge" to display bars next to each other (instead of stacked on top)
  geom_text(aes(label = sprintf("%.0f%%", Freq * 100)), position = position_dodge(width = 0.9), vjust = -0.25) + #labels in %
  scale_fill_discrete_qualitative(palette = "Dynamic") +
  labs(x = "Genre", y = "Relative frequency") + 
  theme_minimal() +
  scale_fill_discrete_sequential(palette = "PurpOr") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1.1, hjust = 1)) 
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-6-1.png" alt="Explicit lyrics share by genre" width="672" />
<p class="caption">(\#fig:unnamed-chunk-6)Explicit lyrics share by genre</p>
</div>

From the plot above it can be concluded, that Electro/Dance has the greatest share of explicit songs across all genres (34%); Country, in contrast, has the least share of explicit songs (only 2%).

For showing the differences in energy in songs across genres, it would make sense to plot the means of all genres' songs' energy using boxplot:

```r
ggplot(music_data, aes(x = fct_reorder(genre, energy),
    y = energy)) + geom_boxplot(coef = 3, fill = "lavenderblush3",
    color = "thistle4") + labs(x = "Genre", y = "Energy") +
    theme_minimal() + theme(axis.text.x = element_text(angle = 45,
    vjust = 1.1, hjust = 1), legend.position = "none")
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-7-1.png" alt="Boxplot of energy by genre" width="672" />
<p class="caption">(\#fig:unnamed-chunk-7)Boxplot of energy by genre</p>
</div>


Also, you could have a look at the plot of means:

```r
library(Rmisc)
mean_data <- summarySE(music_data, measurevar = "energy",
    groupvars = "genre")
# mean_data

ggplot(mean_data, aes(x = fct_reorder(genre, energy),
    y = energy)) + geom_bar(position = position_dodge(0.9),
    fill = "lavenderblush3", stat = "identity", width = 0.55) +
    geom_errorbar(position = position_dodge(0.9), width = 0.15,
        aes(ymin = energy - ci, ymax = energy + ci)) +
    theme_minimal() + labs(x = "Genre", y = "Average energy of songs") +
    theme(axis.text.x = element_text(angle = 45, vjust = 0.8,
        hjust = 1))
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-8-1.png" alt="Average energy of songs by genre" width="672" />
<p class="caption">(\#fig:unnamed-chunk-8)Average energy of songs by genre</p>
</div>


**Task 6**

Visualize the number of songs by label. 

"Visualize" means "create a plot". Thus, you should create a bar plot (to show differences in sum of streams by labels, where labels are categorical variables).
It is enough to visualize count of all observations by labels, i.e., it was not necessary to drop duplicates or repeated ISRCs. However, both solutions are correct.

```r
labels_songs <- as.data.frame(table(music_data$label))  # frequencies
labels_songs <- dplyr::rename(labels_songs, label = Var1,
    number_of_songs = Freq)
# labels_songs
```


```r
ggplot(labels_songs, aes(x = label, y = number_of_songs)) +
    geom_col(width = 0.55, fill = "lavenderblush3") +
    ylab("Number of songs") + xlab("Label") + theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-9-1.png" alt="Count of songs by label" width="672" />
<p class="caption">(\#fig:unnamed-chunk-9)Count of songs by label</p>
</div>
Here we can see a confirmation of one of our previous conclusions about the difference in songs count between Warner Music and Independent labels, which resulted in the lower average streams of the latter.

**Task 7**

Visualize the share/relative frequency of songs by genre.

Again, you need to build an appropriate plot. It is a bar plot again, but it illustrates the relative frequencies between number of songs by genres. First, create a data frame with relative frequencies:

```r
genres_songs_rel <- as.data.frame(prop.table(table(music_data$genre)))  #relative frequencies
genres_songs_rel <- dplyr::rename(genres_songs_rel,
    genre = Var1, share = Freq)
# head(genres_songs_rel)
```

Then create the bar plot as usual:

```r
ggplot(genres_songs_rel, aes(x = genre, y = share)) +
    geom_col(aes(fill = share)) + ylab("Share of songs") +
    xlab("Label") + geom_text(aes(label = sprintf("%.0f%%",
    share * 100)), vjust = -0.2) + theme_minimal() +
    scale_fill_continuous_sequential(palette = "Purple-Orange") +
    theme(axis.text.x = element_text(angle = 45, vjust = 0.75))
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-10-1.png" alt="Share of songs by genre" width="672" />
<p class="caption">(\#fig:unnamed-chunk-10)Share of songs by genre</p>
</div>


**Task 8**

Create a histogram of the variable "valence".

This is a simple plot of valence distribution across all songs in your data (we can see that it follows normal distribution):

```r
music_data |>
    ggplot(aes(valence)) + geom_histogram(binwidth = 4,
    col = "white", fill = "lavenderblush3") + labs(x = "Valence",
    y = "Frequency") + theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-11-1.png" alt="Distribution of valence" width="672" />
<p class="caption">(\#fig:unnamed-chunk-11)Distribution of valence</p>
</div>

**Task 9**

Create a scatter plot showing "valence" and "speechiness" (Bonus: add a regression line).

Finally, we can visualize the relationship between valence and speechiness of songs in our data:

```r
ggplot(music_data, aes(speechiness, valence)) + geom_point(shape = 1) +
    labs(x = "Speechiness", y = "Valence") + labs(x = "Speechiness",
    y = "Valence") + theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-12-1.png" alt="Scatterplot of speechiness and valence" width="672" />
<p class="caption">(\#fig:unnamed-chunk-12)Scatterplot of speechiness and valence</p>
</div>

**Bonus:** to add regression line, use `geom_smooth()` function:

```r
ggplot(music_data, 
       aes(speechiness, valence)) +
    geom_point(shape = 1) + labs(x = "Speechiness", y = "Valence") +
    geom_smooth(method = "lm", color = "lavenderblush4", alpha = 0.1) + #add regression line
    labs(x = "Speechiness", y = "Valence") +
    theme_minimal()
```

<div class="figure" style="text-align: center">
<img src="14-rmdIntro_files/figure-html/unnamed-chunk-13-1.png" alt="Scatterplot of speechiness and valence" width="672" />
<p class="caption">(\#fig:unnamed-chunk-13)Scatterplot of speechiness and valence</p>
</div>
The slope of the regression line suggests that there is positive relationship between valence and speechiness.

