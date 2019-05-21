---
title: "Iris Modeling"
author: <a href='https://github.com/natelangholz'> Nate Langholz</a>
output:
  #pdf_document:
   # toc: yes
    #toc_depth: '3'
  html_document:
    code_folding: hide
    theme: lumen
    toc: yes
    toc_depth: 3
    toc_float:
      collapsed: yes
  github_document: default
---

```{r setup}
knitr::opts_chunk$set(warning = FALSE, message = FALSE)
```

**Project Name**: Compass Canada     
**Knitted Date**: `r Sys.Date()`   

# Intro

This is a Rmarkdown file that shows some exploratory data analysis and model creation of a simple linear model using the Iris data set.  

## Exploratory Data Analysis

### Load Data

```{r data}
# load the dataset
data.iris <- iris
```

### Plot

```{r plot}
#plot the relationship between two variables
plot(data.iris$Petal.Width,data.iris$Petal.Length)
```

### Correlation

This is the correlation between petal width and length. It is quite high!

```{r corr}
#correlation between variables
cor(data.iris$Petal.Width,data.iris$Petal.Length)
```

## Modeling


### Create Models

Let's now create two linear models and select one as a final model to save to use in our API.

```{r model1}
# create a first model
model_1 <- lm(Petal.Length ~ Petal.Width, data = data.iris)
summary(model_1)
```

```{r model1}
# create a second model
model_2 <- lm(Petal.Length ~ Petal.Width + Sepal.Length, data = data.iris)
summary(model_2)
```

### Save Model

```{r model2}
#save the final model
saveRDS(model_2,"../api/scripts/model_1.RDS")
```


