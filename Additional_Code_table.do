* Clear the workspace and set more off
clear all
set more off

* Load your data
use "/Users/bielecki/Desktop/Desktop/Lung_Plot_Final.dta", clear


* Drop observations with missing values
drop if missing(nosc10d_b) | missing(nosc10d_a) | ///
         missing(sc10d_b) | missing(sc10d_a) | ///
         missing(scpos_b) | missing(scpos_a) | ///
         missing(scnocanc_b) | missing(scnocanc_a) | ///
         missing(ovther_b) | missing(ovther_a)

* For each variable, calculate mean, SD, median before and after intervention
foreach var in nosc10d sc10d scpos scnocanc ovther {
    * Before intervention
    summarize `var'_b, detail
    local mean_b = r(mean)
    local sd_b = r(sd)
    local median_b = r(p50)
    
    * After intervention
    summarize `var'_a, detail
    local mean_a = r(mean)
    local sd_a = r(sd)
    local median_a = r(p50)
    
    * Display results
    di "Variable: `var'"
    di "Before Intervention: Mean=`mean_b', SD=`sd_b', Median=`median_b'"
    di "After Intervention: Mean=`mean_a', SD=`sd_a', Median=`median_a'"
}
