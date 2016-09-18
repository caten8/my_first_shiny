---
title: "README"
author: "Marc Durbin"
date: "September 18, 2016"
output: html_document
---

# Shiny app to calculate Body Mass Index (BMI)

For direct access to this Shiny app, click [here](https://caten8.shinyapps.io/my_first_shiny/)

This README file constitutes the entire supporting documentation accompagning this Shiny app. It includes three parts: 

1. Instructions given for this course assignment
2. A description of this Shiny app
3. Directions on how to use this app in RStudio or on Shiny servers

### 1. Instructions given for this course assignment

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application. 
2. Deploy the application on Rstudio's shiny server.
3. Share the application link by pasting it into the text box below. 
4. Share your server.R and ui.R code on github. 

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...).
2. Some operation on the ui input in sever.R.
3. Some reactive output displayed as a result of server calculations.
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.  

### 2. A description of this Shiny app

This Shiny app (my_first_shiny) acquires input values from the user to calculate Body Mass Index for a variety of heights and weights. My interest in physical fitness and weight-to-height ratios motivated me to create this app. A user can check his or her index as their weight changes. 

my_first_shiny contains two inputs, one for height in inches and one for weight in pounds, and calculates BMI based on the following formula:
``` {r}
BMI = function(height,weight){
        return(0.45455*weight/(.0254*height)^2)
}
```
The function takes two arguments, height and weight, and returns a numerical value based on a simple formula.


### 3. Directions on how to use this app in RStudio or on Shiny servers

Option 1: Direct link: click [here](https://caten8.shinyapps.io/my_first_shiny/)

Option 2: Download the `server.R` and `ui.R` files and place them in a directory named 'my_first_shiny'. Open an R session and set the working directory to the folder that contains the directory 'my_first_shiny'. Then run the following commands:

```
library(shiny)
runApp('my_first_shiny')
```