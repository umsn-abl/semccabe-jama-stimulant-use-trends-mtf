# semccabe-jama-stimulant-use-trends-mtf

## description

This code combines several public-use datasets (2005-2023) from the Monitoring the Future (MTF) study and uses logistic regression to estimate linear trends in medical and nonmedical prescription stimulant use among US adolescents.

## files

[MTF_Stimulant_Trends.Rmd](MTF_Stimulant_Trends.Rmd) is an R Markdown script that performs the data munging and analysis.  
[MTF_Stimulant_Trends.do](MTF_Stimulant_Trends.do) is a Stata script that calculates yearly model-adjusted prevalence estimates using the margins command, which are then used by the R Markdown script in creating a figure.  
[Var_Names_8_10.csv](Var_Names_8_10.csv) is a CSV file that contains the original names of the variables from the grade 8 and 10 datasets used in the analysis.  
[Var_Names_12.csv](Var_Names_12.csv) is a CSV file that contains the original names of the variables from the grade 12 datasets used in the analysis.

## doi

Please refer to the following link for the accompanying manuscript: [https://doi.org/10.1001/jama.2025.11260](https://doi.org/10.1001/jama.2025.11260)

## data

The data used for this analysis came from the Monitoring the Future (MTF) study and were accessed from the following link (this link is not continuously updated and may break over time):
- [https://www.icpsr.umich.edu/web/NAHDAP/series/35](https://www.icpsr.umich.edu/web/NAHDAP/series/35)
