clear
* Load your data
. import excel "/Users/bielecki/Desktop/Add_code_ct.xlsx", sheet("Sheet1") firstrow

* Ensure necessary variables are present
label define CT_Empf_label 0 "No" 1 "Yes", modify
label values CT_Empf_ja_nein CT_Empf_label

* Drop observations with missing values
drop if missing(CT_Empf_ja_nein) | missing(nosc10d_b) | missing(nosc10d_a)

* Loop over each group
foreach grp in 0 1 {
    di "Group: `grp' (0=Not Recommend, 1=Recommend)"
    
    preserve
    keep if CT_Empf_ja_nein == `grp'
    
    * For each variable, analyze changes
    foreach var in nosc10d sc10d scpos scnocanc ovther {
        * Calculate mean before and after
        summarize `var'_b, detail
        local mean_b = r(mean)
        local median_b = r(p50)
        
        summarize `var'_a, detail
        local mean_a = r(mean)
        local median_a = r(p50)
        
        * Perform paired t-test or Wilcoxon Signed-Rank test
        signrank `var'_a = `var'_b
        
        * Output results
        di "Variable: `var'"
        di "Mean Before: `mean_b', Median Before: `median_b'"
        di "Mean After: `mean_a', Median After: `median_a'"
        di "Paired Test p-value: " %6.4f r(p)
    }
    
    restore
}

* Compare the magnitude of changes between groups
* For example, use regression with interaction
foreach var in nosc10d sc10d scpos scnocanc ovther {
    gen diff_`var' = `var'_a - `var'_b
}

* Run regression with interaction term
foreach var in nosc10d sc10d scpos scnocanc ovther {
    regress diff_`var' CT_Empf_ja_nein
    di "Variable: diff_`var'"
    di "Coefficient for CT_Empf_ja_nein: " _b[CT_Empf_ja_nein] ", p-value: " %6.4f _p[CT_Empf_ja_nein]
}
