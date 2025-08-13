clear all

use "C:\Users\jjardine\Desktop\MTF\MTF_Stimulant_Trends\data\JAMA\mtf_stimulant_trends.dta"

cd "C:\Users\jjardine\Desktop\MTF\MTF_Stimulant_Trends\data\JAMA\margins\"

svyset id [pweight=weight_new]

local outcomes nonmed_stim_life nonmed_stim_30 med_stim_life med_stim_curr med_nonmed_stim_life med_nonmed_stim_curr

foreach outcome of local outcomes {
    svy: logistic `outcome' year i.pop_dens i.region i.sex i.race i.parent_ed i.grade_level
    margins, at(year = (0(1)18)) post
    esttab using "`outcome'.csv", ci nostar cell(b(fmt(7)) ci(fmt(7))) replace
}