library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Confidence Interval Inputs"),
        sidebarPanel(
                numericInput('x_bar', "Enter the point estimate of a population mean (sample mean):",
                             0, min = 0, max = 10, step = 1),
                numericInput('stdv', "Enter the estimate of the population standard deviation (sample standard deviation):",
                             1, min=0),
                numericInput('size', "Enter the number of observations (n):",
                             10, min=10),
                radioButtons("confLvl", "Select the Confidence Level you'd like:",
                                   c("90%" = 1.645,
                                     "95%" = 1.96,
                                     "99%" = 2.58))
        ),
        mainPanel(
                h3('Confidence Interval Outputs'),
                h4('The Standard Error is:'),
                verbatimTextOutput("sterr"),
                h4('The Margin of Error is:'),
                verbatimTextOutput("me"),
                h4('The lower bound of the confidence interval is:'),
                verbatimTextOutput("lower"),
                h4('The upper bound of the confidence interval is:'),
                verbatimTextOutput("upper")
        )
))


## Confidence Interval
## x_bar +/- z * s/sqrt(n) where s is sample std dev