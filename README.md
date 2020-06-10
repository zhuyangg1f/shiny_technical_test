# Shiny Technical Test
## June 10, 2020

## Intro

Hello Shiny developer! Welcome to the Shiny dojo. Here, you will be completing a series of tasks to demonstrate your Shiny skills. Upon completion of these tasks, you will have completed your very own Shiny application - a mark of a true Shiny ninja!

In this technical test, you will be developing a Shiny app that generates data visualizations for an ad clicks dataset. This Shiny app UI will consist of 1) a control panel for user input, and 2) a plotting area. The goal of this app is to allow your team members to see the web traffic on various ads on your platform.

It is imperative that you carefully read the instructions, as each completion of each stage is required for fully unlocking the next stage. Without further ado, let's begin...


## Stage 1

In this first stage, you will first set up your Git and development environment. 

### Required software

Make sure that you have the following software installed (try to match the described versions, but if they don't match perfectly, you should still be able to complete the test as long as your versions are recent enough):

1. [RStudio](https://rstudio.com/products/rstudio/download/)
2. [R 3.6.x](https://www.r-project.org/)
3. R packages: dplyr, ggplot2, shiny, here, and any necessary dependencies


### GitHub

Once your local development environment is set up, fork this repository (https://github.com/LKS-CHART/shiny_technical_test) to your own GitHub account. After forking the repo, clone the forked repo to your local environment. 

Before you start developing your Shiny app, let's review the files in the directory.


There are a few provided files that you may find helpful for this test:

- **ad_clicks.csv**: this is the sample dataset that you will be using for the Shiny app. You must use this dataset.
- **ggplot.R**: this is a starter plotting function that you may use. Feel free to edit this or create your own plotting function
- **app/**: this directory contains a server.R and a ui.R which comprises of the skeleton of your Shiny app. You may use this as a starter to create the rest of your application.

**To make sure that your environment is set up properly, run the following test:**


```
# 1. Launch RStudio
# 2. Select File -> Open Project -> Select shiny_technical_test.Rproj in the cloned repo
# 3. In the R Console, run `shiny::runApp("app")`
```

If an application launches in your browser without error, then congratulations! You may proceed to Stage 2. In the next stages, you will iteratively improve upon this application.

## Stage 2 - Implementing server-side functionality of the plot type picker

Upon launching the app, you noticed a radio button picker that allowed the user to select one of three types of plots to visualize: line, scatter, or both. However, you also noticed that this feature was not functional, as clicking the various buttons did not update the plot.

To complete this stage, please add the necessary server-side functionality to allow the user to use the plot type picker to update the type of plot that is visualized. Reviewing the provided **ggplot.R** start plotting function may be helpful. **Hint:** the value of the radio button picker can be accessed from Shiny via Shiny's `input` object, in association with the specific input UI element's `inputId`.

Here is the desired functionality:

1. The user can select on any of the three radio buttons, indicating line, scatter, or both.
2. Upon clicking a radio button, the plot will re-render and display the appropriate plot as selected by the user.
3. The default plot type on app launch should be "both".

**Upon completion of this stage, commit your changes to Git, with the commit message "Add plot picker server"**

## Stage 3 - Adding date range input widget

The current application only contains one user input widget in the control panel: a radio button selector the plot type. To better serve your team's needs, you decide to add a date range input widget to allow the user to select the range of data they would like to visualize.  

To complete this stage, please create a date range input widget in the app UI (note: you do not need to implement the server-side functionality yet; simply add the UI element). You may find the `shiny::dateRangeInput` function helpful for this task.

**Upon completion of this stage, commit your changes to Git, with the commit message "Add date range UI".**

## Stage 4 - Implementing server-side functionality of the date range widget

Fantastic! Now you have an app that allows the user to select the type of plot they wish to visualize, as well as an UI element that allows the user to select the date range for the visualization. You just need to implement the server-side functionality of the date range widget so that the plot updates upon user input of a new date range. **Hint:** you may need to edit the code within the `renderPlot({...})` function call within `server.R`.

Here is the desired functionality:

1. The user can enter select any date between May 1st 2019 and June 10 2020.
2. Upon entering a valid date range, the plot re-renders to show only data from the selected range.
3. The upper range of the date range widget must be greater than the lower range (eg. May 15, 2019 to May 10, 2019 is not a valid date, since May 10, 2019 is less than May 15, 2019).

**Upon completion of this stage, commit your changes to Git, with the commit message "Add date range server".**

## Stage 5 - Submit your Shiny app pull request

If you have successfully gotten to this point, congratulations! You are indeed a Shiny ninja. In this last stage, you are required to submit your Shiny app via pull request to the original repository. Here are the steps to accomplish this:

1. Make sure to commit all your local changes to Git, and push them to your forked GitHub repository.
2. Create a new pull request to the master branch of the LKS-CHART/shiny_technical_test base repository. 
3. Submit your pull request, and tag @dwhdai for review.

... and you have defeated the Shiny dojo!