---
knit: "bookdown::render_book"
new_session: TRUE
title: "Marketing Analytics 2022"
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "An Introduction to Data Analytics Using R"
site: bookdown::bookdown_site
documentclass: book
favicon: "favicon.ico"
css: style.css
classoption:
  - twocolumn
---



# (PART) Course outline {-}

# Welcome! {-}

<p style="text-align:center;">
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/logo_wu.jpg" alt="logo_wu" height="140"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="logo_rds.png" alt="logo_rds" height="140"  />
</p>
<br>
Welcome to the course **Marketing Analytics**! This course covers the conceptual foundations of data analysis techniques for marketing managers and applications of these methods to different data sets. The course will be delivered in parts using the **flipped classroom** teaching method. This means that students are required to familiarize themselves with the contents by means of **self-study** *before* each session (i.e., by going through the assigned materials on their own). This website is intended to aid the self-study process by providing you with explanations regarding the relevant concepts and methods in text and video format along with code files and commented outputs that will show you how to implement these methods using the **statistical software R**. 
<br><br>
The self-learning process will be complemented with compulsory in-person **weekly interactive sessions** in the PC lab, which provide ample opportunities to train the acquired knowledge and clarify points that require further discussion. 
<br><br>
The following pages outline the course schedule and explain how to use this tutorial in detail. If you have any questions, feel free to send me a short email.
<br>
<br>
Nils Wlömert
<br>
[nils.wloemert@wu.ac.at](mailto:nils.wloemert@wu.ac.at)
<br>
Daniel Winkler
<br>
[daniel.winkler@wu.ac.at](mailto:daniel.winkler@wu.ac.at)


# Introduction {-}

## Course structure {-}

This course combines asynchronous teaching elements (e.g., texts and pre-recorded videos on this website) with synchronous elements (e.g., weekly in-person interactive sessions in the PC Lab). The syllabus consists of three main parts, as reflected by the structure of this website: 

1. **Lecture notes**: the lecture part will explain the theory behind the concepts and methods and provide you with example applications using the statistical software R.
2. **Individual assignments**: the individual assignments require you to apply the acquired knowledge to new data sets.
3. **Group project**: in the group you will design and conduct your own market research project and transfer the knowledge to a real business setting.

The general approach is that students will first familiarize themselves with the contents by going through the materials on their own. This **self-study** process is complemented with in-person **weekly interactive sessions** in the PC lab, which provide ample opportunities to ask questions and clarify points that require further discussion. The schedule for each of the three parts will be explained below. 

### Schedule {-}

#### In-person lecture {-}

The contents on this website are divided into weekly readings. To be able to follow the curriculum and complete the assignments, you need to read the materials assigned for the respective week. The relevant chapters are indicated in the table below. The weekly readings will be complemented with weekly interactive sessions in the PC lab, which provide you with an opportunity to ask questions about the assigned readings. **Please note that you need to go through the materials on your own in the week before the respective session.** For example, chapters 2, 3 & 4 will be discussed in the second session. The dates and times for the classroom sessions are indicated in the table below for each group separately. It is highly recommended to prepare questions or comments about the materials for these sessions that you think might be interesting and helpful to the class. As a preparation for the in-class discussions, you should go through the **Learning check** section at the end of each chapter. By working through these questions, you may self-assess your progress and identify knowledge gaps regarding the materials that were assigned for the previous week.        

<br>
**Lecture dates - Group A**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Date </th>
   <th style="text-align:left;"> Day </th>
   <th style="text-align:left;"> Time </th>
   <th style="text-align:left;"> Room </th>
   <th style="text-align:left;"> Topics </th>
   <th style="text-align:left;"> Chapters </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Oct. 3 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to the course <br>Basic concepts </td>
   <td style="text-align:left;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 10 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to R &amp; R Markdown </td>
   <td style="text-align:left;"> 2, 3, 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 17 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to inferential statistics <br>Hypothesis testing I </td>
   <td style="text-align:left;"> 5, 6.1, 6.2, 6.3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 24 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.5.03 </td>
   <td style="text-align:left;"> Hypothesis testing II </td>
   <td style="text-align:left;"> 6.4, 6.5, 6.6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 31 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> EA.6.026 </td>
   <td style="text-align:left;"> Regression I </td>
   <td style="text-align:left;"> 7.1, 7.2, 7.3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nov. 7 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Regression II </td>
   <td style="text-align:left;"> 7.4, 7.5, 7.6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nov. 14 </td>
   <td style="text-align:left;"> Monday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Factor analysis <br>Cluster analysis </td>
   <td style="text-align:left;"> 8, 9 </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group A.</td></tr></tfoot>
</table>
<br>
**Lecture dates - Group B**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Date </th>
   <th style="text-align:left;"> Day </th>
   <th style="text-align:left;"> Time </th>
   <th style="text-align:left;"> Room </th>
   <th style="text-align:left;"> Topics </th>
   <th style="text-align:left;"> Chapters </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Oct. 5 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to the course <br>Basic concepts </td>
   <td style="text-align:left;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 12 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to R &amp; R Markdown </td>
   <td style="text-align:left;"> 2, 3, 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 19 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Introduction to inferential statistics <br>Hypothesis testing I </td>
   <td style="text-align:left;"> 5, 6.1, 6.2, 6.3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Oct. 28 </td>
   <td style="text-align:left;"> Friday </td>
   <td style="text-align:left;"> 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.5.03 </td>
   <td style="text-align:left;"> Hypothesis testing II </td>
   <td style="text-align:left;"> 6.4, 6.5, 6.6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nov. 2 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> EA.6.026 </td>
   <td style="text-align:left;"> Regression I </td>
   <td style="text-align:left;"> 7.1, 7.2, 7.3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nov. 9 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Regression II </td>
   <td style="text-align:left;"> 7.4, 7.5, 7.6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nov. 16 </td>
   <td style="text-align:left;"> Wednesday </td>
   <td style="text-align:left;"> 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
   <td style="text-align:left;"> Factor analysis <br>Cluster analysis </td>
   <td style="text-align:left;"> 8, 9 </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group B.</td></tr></tfoot>
</table>

<br>

::: {.infobox_red .caution data-latex="{caution}"}
We understand that the self-study format might pose challenges to the learning process because we cannot troubleshoot in person outside of the classroom sessions. Remember that it is very unlikely that you are the only student encountering a particular problem. So please make use of the forum on Learn\@WU (see below) to interact with your peers or ask us questions so that everyone else will benefit from the answer (there are no stupid questions!). In case you cannot get answers to address a specific problem, we will be available during the in-person classroom sessions for coaching.
:::

#### Individual assignments {-}

There will be 4 individual assignments complemented with optional coaching sessions. Note that the assignments need to be submitted in the [R Markdown format](https://rmarkdown.rstudio.com/) (see chapter 10) via Learn\@wu. There will be a coaching session dedicated to the R Markdown reporting format in the second session, when the first homework is assigned. 

Your main point of contact for the individual assignments will be Daria Yudaeva ([daria.yudaeva@wu.ac.at](mailto:daria.yudaeva@wu.ac.at)). You may contact Daria to schedule individual coaching sessions during the times indicated in the table below. These coaching sessions will be held online. However, please make sure that you have exhausted all other resources to solve a particular problem, such as the online tutorial, the forum on Learn\@wu, and other web resources (see below) before you schedule a coaching session. If you feel that other students might have similar questions and would benefit from an answer to a particular question, you should post the question in the forum on Learn\@wu.

<br>
**Assignment schedule - Group A**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Assignment </th>
   <th style="text-align:left;"> Assigned </th>
   <th style="text-align:left;"> Coaching </th>
   <th style="text-align:left;"> Submission </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Assignment 1: R Basics </td>
   <td style="text-align:left;"> Oct. 10 </td>
   <td style="text-align:left;"> Oct. 14, 09:00AM-01:00PM (online)* </td>
   <td style="text-align:left;"> Oct. 16, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 2: Hypothesis testing </td>
   <td style="text-align:left;"> Oct. 17 </td>
   <td style="text-align:left;"> Oct. 28, 09:00AM-01:00PM (online)* </td>
   <td style="text-align:left;"> Oct. 30, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 3: Regression </td>
   <td style="text-align:left;"> Oct. 31 </td>
   <td style="text-align:left;"> Nov. 11, 09:00AM-01:00PM (online)* </td>
   <td style="text-align:left;"> Nov. 13, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 4: Factor and cluster analysis </td>
   <td style="text-align:left;"> Nov. 14 </td>
   <td style="text-align:left;"> Nov. 25, 09:00AM-01:00PM (online)* </td>
   <td style="text-align:left;"> Nov. 27, 11:59PM </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group A. <br>           Dates indicated with '*' are optional time slots for individual online video coaching sessions with Daria.<br>           If you need to schedule a meeting, please contact Daria at least one day in advance (daria.yudaeva@wu.ac.at).</td></tr></tfoot>
</table>

<br>
**Assignment schedule - Group B**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Assignment </th>
   <th style="text-align:left;"> Assigned </th>
   <th style="text-align:left;"> Coaching </th>
   <th style="text-align:left;"> Submission </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Assignment 1: R Basics </td>
   <td style="text-align:left;"> Oct. 12 </td>
   <td style="text-align:left;"> Oct. 14, 02:00PM-06:00PM (online)* </td>
   <td style="text-align:left;"> Oct. 18, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 2: Hypothesis testing </td>
   <td style="text-align:left;"> Oct. 19 </td>
   <td style="text-align:left;"> Oct. 31, 12:00PM-04:00PM (online)* </td>
   <td style="text-align:left;"> Nov. 01, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 3: Regression </td>
   <td style="text-align:left;"> Nov. 2 </td>
   <td style="text-align:left;"> Nov. 11, 02:00PM-06:00PM (online)* </td>
   <td style="text-align:left;"> Nov. 15, 11:59PM </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assignment 4: Factor and cluster analysis </td>
   <td style="text-align:left;"> Nov. 16 </td>
   <td style="text-align:left;"> Nov. 25, 02:00PM-06:00PM (online)* </td>
   <td style="text-align:left;"> Nov. 29, 11:59PM </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group B. <br>           Dates indicated with '*' are optional time slots for individual online video coaching sessions with Daria.<br>           If you need to schedule a meeting, please contact Daria at least one day in advance (daria.yudaeva@wu.ac.at).</td></tr></tfoot>
</table>

<br>

#### Group project {-}

The marketing research group project consists of multiple consecutive steps: 

* the design of a questionnaire
* data collection using an online survey
* data handling & data analysis
* recording of a video with a presentation of you results

We will offer coaching sessions throughout this process, providing feedback and allowing you to ask questions. The submission dates and the dates and times for the coaching sessions are summarized in the table below. 

Your main point of contact for the group project will be Daniel Winkler ([daniel.winkler@wu.ac.at](mailto:daniel.winkler@wu.ac.at)). You may contact Daniel at least one week in advance to schedule individual coaching sessions for your groups (in-person or online) during the following times:

* Thursdays 09:00AM - 05:00PM
* Fridays 01:00PM - 05:00PM

Again, please make sure that you have exhausted all other resources to solve a particular problem, such as the online tutorial, the forum on Learn\@wu, and other web resources (see below) before you schedule a coaching session. If you feel that other students might have similar questions and would benefit from an answer to a particular question, you should post the question in the forum on Learn\@wu.

<br>
**Group project schedule - Group A**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Component </th>
   <th style="text-align:left;"> Date </th>
   <th style="text-align:left;"> Room </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Intro to Questionnaire design </td>
   <td style="text-align:left;"> Nov. 21, 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Questionnaire coaching* </td>
   <td style="text-align:left;"> Nov. 28, 12:30PM - 04:30PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Data analysis coaching* </td>
   <td style="text-align:left;"> Dec. 12, 01:00PM - 05:00PM </td>
   <td style="text-align:left;"> D4.0.022 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (Pre-recorded) presentation submission </td>
   <td style="text-align:left;"> Jan. 6, 11:59PM </td>
   <td style="text-align:left;"> --- </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group A.<br>           Sessions indicated with '*' are group coaching sessions. Slots of 30 min. are assigned to each group within the indicated times.</td></tr></tfoot>
</table>


<br>
**Group project schedule - Group B**
<br>
<table class=" lightable-paper lightable-hover" style='font-family: "Arial Narrow", arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;'>
 <thead>
  <tr>
   <th style="text-align:left;"> Component </th>
   <th style="text-align:left;"> Date </th>
   <th style="text-align:left;"> Room </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Intro to Questionnaire design </td>
   <td style="text-align:left;"> Nov. 23, 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Questionnaire coaching* </td>
   <td style="text-align:left;"> Nov. 30, 12:00PM - 04:00PM </td>
   <td style="text-align:left;"> TC.-1.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Data analysis coaching* </td>
   <td style="text-align:left;"> Dec. 14, 02:00PM - 06:00PM </td>
   <td style="text-align:left;"> EA.6.032 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> (Pre-recorded) presentation submission </td>
   <td style="text-align:left;"> Jan. 6, 11:59PM </td>
   <td style="text-align:left;"> --- </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Note: </span> <sup></sup> Dates and times are indicated for group B.<br>           Sessions indicated with '*' are group coaching sessions. Slots of 30 min. are assigned to each group within the indicated times.</td></tr></tfoot>
</table>

<br>

### Grading {-}

Grading is based on the following components:

* **Market research group project** (questionnaire design, data collection & analysis, reporting & presentations) [weight: 30%]
* **Individual take-home computer exercises** (statistical analysis of data sets; 4 assignments accounting for 6% (A1), 8% (A2), 8% (A3), and 8% (A4)) [weight: 30%]
* **Final online exam** (concepts & methods) [weight: 30%]
* **Class participation** (quantity & quality of contributions during the weekly Q&A sessions, contributions in the online forum, etc.) [weight: 10%]

These grading components will be weighted with the respective weights to arrive at the final grade percentage.

The **final exam** will take place online at 10:00AM on December 22, 2022. The exam covers questions about the concepts and methods (no coding) and we will provide example exams from the previous years to give you an idea about what type of questions you can expect.   

To ensure an equal contribution of group members for the group assignment, a **peer assessment** will be conducted among group members, which enters into the computation of the individual grades for the project. This means that the members of a group are required to assess other students regarding their relative contribution. 

**To successfully pass this course, your weighted final grade needs to exceed 60%.**

## Course materials {-}

### Main reference {-}

The main reference for this course is this website along with the corresponding slides and the pre-recorded video lectures. The relevant materials for each week are indicated in the tables above. The aim of the materials is to condense the contents and direct your attention to the most relevant aspects. This should enable students to study the materials on their own and we can focus our attention during the classroom sessions on clarifying points that require further discussion. 

At the end of each chapter, you will find a section with references. It is highly recommended that you consult these references for further clarification in case you require additional information on a topic.  

### Further readings {-}

<p style="text-align:center;">
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/R4ds.png" alt="DSUR cover" height="120"  />&nbsp;
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/ISL_cover.jpg" alt="ISL cover" height="120"  />&nbsp;
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/r4mra.jpg" alt="R4mra cover" height="120"  />&nbsp;
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/advr.jpg" alt="advr cover" height="120"  />&nbsp;
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/tmwr.png" alt="tmwr cover" height="120"  />&nbsp;
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/r_packs.png" alt="Rpacks cover" height="120"/>
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/URfIE.png" alt="Rpacks cover" height="120"/>
<img src="https://github.com/IMSMWU/Teaching/raw/master/MRDA2017/Graphics/rgraph.jpg" alt="Rgraph cover" height="120"/>
</p>

In addition to these lecture notes, there are many excellent books available (many of them for free) that focus on different aspects of R. In fact, there are so many free resources available by now that a team of R programmers has set up a website that provides an overview over the available resources by topic. You can find this overview here: [Big Book of R](https://www.bigbookofr.com/).

In case you would like to learn more about the capabilities of R related to the contents of this course, I can particularly recommend the following books:

* __"[R for Data Science](http://r4ds.had.co.nz/)"__ An excellent book by Hadley Wickham, which introduces you to R as a tool for doing data science, focusing on a consistent set of packages known as the tidyverse. [FREE online version]

* __"[An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/)"__ This book provides an introduction to statistical learning methods and covers basic methods (e.g., linear regression) as well as more advanced methods (e.g., Support Vector Machines). [FREE online version]

* __"[R for Marketing Research and Analytics](http://r-marketing.r-forge.r-project.org/)"__ A great book that is designed to teach R to marketing practitioners and data scientists.

* __"[Statistical Inference via Data Science](https://moderndive.com/)"__ Another great book covering topics around Statistical Inference. [FREE online version]

* __"[Text Mining with R](http://tidytextmining.com/)"__ This book explains how you can analyze unstructured data (texts) using R. [FREE online version]

* __"[Advanced R](http://adv-r.had.co.nz/)"__ Another great book written by Hadley Wickham. Explains more advanced R concepts. [FREE online version]

* __"[Hands-On Machine Learning with R](https://bradleyboehmke.github.io/HOML/)"__ A great reference to learn about machine learning methods in R. The book favors a hands-on approach, growing an intuitive understanding of machine learning through concrete examples and little bit of theory.[FREE online version]

* __"[Hands-On Data Science for Marketing](https://github.com/PacktPublishing/Hands-On-Data-Science-for-Marketing)"__ Another good reference regarding Data Science for Marketing. [FREE Code exercises]

* __"[R Markdown](https://bookdown.org/yihui/rmarkdown/)"__ A great book about the reporting format 'R Markdown', which we will also use for the assignments in this course. [FREE Code exercises]

* __"[R Packages](http://r-pkgs.had.co.nz/)"__ A book which teaches you how to make the most of R's fantastic package system. [FREE online version]

* __"[R Graphics Cookbook](https://r-graphics.org/)"__ A practical guide that provides more than 150 recipes to help you generate high-quality graphs quickly. [FREE online version]

* __"[Using R For Introductory Econometrics](http://www.urfie.net/read/index.html)"__ This book covers a nice introduction to R with a focus on the implementation of standard tools and methods used in econometrics. [FREE online version]

* __"[Data Science in a Box](https://datasciencebox.org/)"__ Another book covering topics around Data Science using R. [FREE online version]

* __"[Efficient R Programming](https://csgillespie.github.io/efficientR/)"__ A good reference to learn efficient workflows using R. [FREE online version]

* __"[Discovering Statistics Using R](https://www.amazon.de/Discovering-Statistics-Using-Andy-Field/dp/1446200469)"__ (Field, A., Miles, J., & Field Zoe, 2012, 1st Edtn.) This textbook offers an accessible and comprehensive introduction to statistics. 

### Discussion forum {-}

**We strongly encourage you to ask your questions via the online forum** on the course page on the WU learning platform. The purpose of the forum is to allow you to discuss questions related to the contents with your class mates and us. Please make use of this forum as much as possible and ask questions if something remained unclear. Remember that there are no stupid questions! And if you know the answer to a question that is asked in the forum, it is also a good exercise to explain the concepts to your classmates. 

### DataCamp {-}

<center>

![](./images/logo_datacamp.jpeg){width=50%}

</center>

Please also make use of the abundance of web resources. For students who would like to further train the materials covered in class, we recommend DataCamp, an online platform that offers interactive courses in data science at different levels. To facilitate the learning process you will obtain full access to the entire DataCamp course curriculum for the duration of the course. You will receive and invitation via your WU student email address.   

### Other web-resources {-}

* __"[https://www.r-project.org/](https://www.r-project.org/)"__ official website
  
* __"[http://www.statmethods.net/](http://www.statmethods.net/)"__ R reference by the author of “R in action”

* __"[http://www.rdocumentation.org/](http://adv-r.had.co.nz/)"__ R documentation aggregator

* __"[http://stackoverflow.com/](http://stackoverflow.com/)"__ general discussion forum for programmers incl. R
  
* __"[http://stats.stackexchange.com/](http://stats.stackexchange.com/)"__ discussion forum on statistics and data analytics

* __"[http://www.r-bloggers.com/](http://www.r-bloggers.com/)"__ R blog aggregator

* __"[http://www.cookbook-r.com/](http://www.cookbook-r.com/)"__ useful examples for all kind of R problems

* __"[https://ggplot2.tidyverse.org/reference/index.html](https://ggplot2.tidyverse.org/reference/index.html)"__ reference for data visualization

### Contact {-}

We are happy to answer your questions, so feel free to send us a short email - either to Daniel Winkler ([daniel.winkler\@wu.ac.at](mailto:daniel.winkler\@wu.ac.at)), Daria Yudaeva ([daria.yudaeva@wu.ac.at](mailto:daria.yudaeva@wu.ac.at)), or myself ([nils.wloemert@wu.ac.at](mailto:nils.wloemert@wu.ac.at)). We will be available during the weekly sessions to clarify your questions. Daniel will be your point of contact for questions regarding the group project and Daria will be your point of contact for the individual assignments. **However, please note that before you contact us, you should try to solve problems on your own first (e.g., by using the online tutorial, doing research online, asking questions via the online forum, or discussion with your class mates).** 

### Acknowledgements {-}

This tutorial is supported through Digital Learning Project Funding by WU Vienna. None of the materials covered in this tutorial are new. We intend to provide a summary of existing methods from a marketing research perspective and cite the corresponding sources. If you should have any comments or suggestions, please [contact us through the github page of this course](https://github.com/WU-RDS). 
