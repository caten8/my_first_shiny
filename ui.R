shinyUI(pageWithSidebar(
        headerPanel("BMI Calculator (Body Mass Index)"),
        sidebarPanel(
                numericInput('ht', 'Enter your height in inches', 70, min = 60, max = 80, step = 1),
                numericInput('wt', 'Enter your weight in pounds', 200, min = 100, max = 300, step = 5)
        ),
        mainPanel(
                h3('Results'),
                h4('Your height is:'),
                verbatimTextOutput("oht"),
                h4('Your weight is:'),
                verbatimTextOutput("owt"),
                h4('Your BMI is:'),
                verbatimTextOutput("prediction"),
                h6(em('Reactive output displayed as a result of server calculations.'))
        )
))


