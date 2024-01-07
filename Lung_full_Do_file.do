******
nosc10d: doctor's guesses about mortality over the next decade without screening 
sc10d: doctor's guesses about mortality over the next decade with screening
scpod: doctor's guesses about positive screening result in the chest CT screening
scnocanc: doctor's guesses about how many men will require a further procedure like CT or biopsy due to screening
ovther: doct'rs guesses about how many ppl will receive unnecessary treatment 
*****3


generate within_range_nosc10d_b = (nosc10d_b >= true_1 * 0.85 & nosc10d_b <= true_1 * 1.15)
generate within_range_nosc10d_a = (nosc10d_a >= true_1 * 0.85 & nosc10d_a <= true_1 * 1.15)

generate within_range_sc10d_b = (sc10d_b >= true_2 * 0.85 & sc10d_b <= true_2 * 1.15)
generate within_range_sc10d_a = (sc10d_a >= true_2 * 0.85 & sc10d_a <= true_2 * 1.15)

generate within_range_scpod_b = (scpod_b >= true_3 * 0.85 & scpod_b <= true_3 * 1.15)
generate within_range_scpod_a = (scpod_a >= true_3 * 0.85 & scpod_a <= true_3 * 1.15)

generate within_range_scnocanc_b = (scnocanc_b >= true_4 * 0.85 & scnocanc_b <= true_4 * 1.15)
generate within_range_scnocanc_a = (scnocanc_a >= true_4 * 0.85 & scnocanc_a <= true_4 * 1.15)

generate within_range_ovther_b = (ovther_b >= true_5 * 0.85 & ovther_b <= true_5 * 1.15)
generate within_range_ovther_a = (ovther_a >= true_5 * 0.85 & ovther_a <= true_5 * 1.15)

label variable within_range_nosc10d_b "Tolerance range nosc10d before"
label variable within_range_nosc10d_a "Tolerance range nosc10d after"

label variable within_range_sc10d_b "Tolerance range sc10d before"
label variable within_range_sc10d_a "Tolerance range sc10d after"

label variable within_range_scpod_b "Tolerance range scpod_c before"
label variable within_range_scpod_a "Tolerance range scpod_c after"

label variable within_range_scnocanc_b "Tolerance range scnocanc_c before"
label variable within_range_scnocanc_a "Tolerance range scnocanc_c after"

label variable within_range_ovther_b "Tolerance range ovther_c before"
label variable within_range_ovther_a "Tolerance range ovther_c after"

*******3

tabulate within_range_nosc10d_b within_range_nosc10d_a, matcell(cells)
matrix list cells
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

tabulate within_range_sc10d_b within_range_sc10d_a, matcell(cells)
matrix list cells
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

tabulate within_range_scpod_b within_range_scpod_a, matcell(cells)
matrix list cells
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

tabulate within_range_scnocanc_b within_range_scnocanc_a, matcell(cells)
matrix list cells
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

tabulate within_range_ovther_b within_range_ovther_a, matcell(cells)
matrix list cells
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

*********


. tabulate within_range_nosc10d_b within_range_nosc10d_a, matcell(cells)

 Tolerance |
     range |    Tolerance range
   nosc10d |     nosc10d after
    before |         0          1 |     Total
-----------+----------------------+----------
         0 |        84         17 |       101 
         1 |         3        166 |       169 
-----------+----------------------+----------
     Total |        87        183 |       270 

. matrix list cells

cells[2,2]
     c1   c2
r1   84   17
r2    3  166

. local a = cells[1,1]

. local b = cells[1,2]

. local c = cells[2,1]

. local d = cells[2,2]

. mcci `a' `b' `c' `d'

                 |        Controls        |
Cases            |   Exposed   Unexposed  |      Total
-----------------+------------------------+-----------
         Exposed |        84          17  |        101
       Unexposed |         3         166  |        169
-----------------+------------------------+-----------
           Total |        87         183  |        270

McNemar's chi2(1) =      9.80    Prob > chi2 = 0.0017
Exact McNemar significance probability       = 0.0026

Proportion with factor
        Cases       .3740741
        Controls    .3222222     [95% conf. interval]
                   ---------     --------------------
        difference  .0518519       .016279   .0874248
        ratio        1.16092      1.057286   1.274711
        rel. diff.  .0765027      .0304739   .1225315

        odds ratio  5.666667      1.639032   30.18088   (exact)

. 
. tabulate within_range_sc10d_b within_range_sc10d_a, matcell(cells)

 Tolerance |
     range | Tolerance range sc10d
     sc10d |         after
    before |         0          1 |     Total
-----------+----------------------+----------
         0 |        85         17 |       102 
         1 |         3        165 |       168 
-----------+----------------------+----------
     Total |        88        182 |       270 

. matrix list cells

cells[2,2]
     c1   c2
r1   85   17
r2    3  165

. local a = cells[1,1]

. local b = cells[1,2]

. local c = cells[2,1]

. local d = cells[2,2]

. mcci `a' `b' `c' `d'

                 |        Controls        |
Cases            |   Exposed   Unexposed  |      Total
-----------------+------------------------+-----------
         Exposed |        85          17  |        102
       Unexposed |         3         165  |        168
-----------------+------------------------+-----------
           Total |        88         182  |        270

McNemar's chi2(1) =      9.80    Prob > chi2 = 0.0017
Exact McNemar significance probability       = 0.0026

Proportion with factor
        Cases       .3777778
        Controls    .3259259     [95% conf. interval]
                   ---------     --------------------
        difference  .0518519       .016279   .0874248
        ratio       1.159091      1.056666   1.271444
        rel. diff.  .0769231      .0306519   .1231943

        odds ratio  5.666667      1.639032   30.18088   (exact)

. 
. tabulate within_range_scpod_b within_range_scpod_a, matcell(cells)

 Tolerance |
     range |    Tolerance range
   scpod_c |     scpod_c after
    before |         0          1 |     Total
-----------+----------------------+----------
         0 |        81         19 |       100 
         1 |         4        166 |       170 
-----------+----------------------+----------
     Total |        85        185 |       270 

. matrix list cells

cells[2,2]
     c1   c2
r1   81   19
r2    4  166

. local a = cells[1,1]

. local b = cells[1,2]

. local c = cells[2,1]

. local d = cells[2,2]

. mcci `a' `b' `c' `d'

                 |        Controls        |
Cases            |   Exposed   Unexposed  |      Total
-----------------+------------------------+-----------
         Exposed |        81          19  |        100
       Unexposed |         4         166  |        170
-----------------+------------------------+-----------
           Total |        85         185  |        270

McNemar's chi2(1) =      9.78    Prob > chi2 = 0.0018
Exact McNemar significance probability       = 0.0026

Proportion with factor
        Cases       .3703704
        Controls    .3148148     [95% conf. interval]
                   ---------     --------------------
        difference  .0555556      .0176748   .0934363
        ratio       1.176471      1.062437   1.302744
        rel. diff.  .0810811      .0323755   .1297867

        odds ratio      4.75       1.57857    19.1989   (exact)

. 
. tabulate within_range_scnocanc_b within_range_scnocanc_a, matcell(cells)

 Tolerance |
     range |    Tolerance range
scnocanc_c |   scnocanc_c after
    before |         0          1 |     Total
-----------+----------------------+----------
         0 |        81         20 |       101 
         1 |         4        165 |       169 
-----------+----------------------+----------
     Total |        85        185 |       270 

. matrix list cells

cells[2,2]
     c1   c2
r1   81   20
r2    4  165

. local a = cells[1,1]

. local b = cells[1,2]

. local c = cells[2,1]

. local d = cells[2,2]

. mcci `a' `b' `c' `d'

                 |        Controls        |
Cases            |   Exposed   Unexposed  |      Total
-----------------+------------------------+-----------
         Exposed |        81          20  |        101
       Unexposed |         4         165  |        169
-----------------+------------------------+-----------
           Total |        85         185  |        270

McNemar's chi2(1) =     10.67    Prob > chi2 = 0.0011
Exact McNemar significance probability       = 0.0015

Proportion with factor
        Cases       .3740741
        Controls    .3148148     [95% conf. interval]
                   ---------     --------------------
        difference  .0592593      .0207028   .0978157
        ratio       1.188235      1.071264   1.317978
        rel. diff.  .0864865      .0368799   .1360931

        odds ratio         5      1.674929   20.11771   (exact)

. 
. tabulate within_range_ovther_b within_range_ovther_a, matcell(cells)

 Tolerance |
     range |    Tolerance range
  ovther_c |    ovther_c after
    before |         0          1 |     Total
-----------+----------------------+----------
         0 |        79         17 |        96 
         1 |         7        167 |       174 
-----------+----------------------+----------
     Total |        86        184 |       270 

. matrix list cells

cells[2,2]
     c1   c2
r1   79   17
r2    7  167

. local a = cells[1,1]

. local b = cells[1,2]

. local c = cells[2,1]

. local d = cells[2,2]

. mcci `a' `b' `c' `d'

                 |        Controls        |
Cases            |   Exposed   Unexposed  |      Total
-----------------+------------------------+-----------
         Exposed |        79          17  |         96
       Unexposed |         7         167  |        174
-----------------+------------------------+-----------
           Total |        86         184  |        270

McNemar's chi2(1) =      4.17    Prob > chi2 = 0.0412
Exact McNemar significance probability       = 0.0639

Proportion with factor
        Cases       .3555556
        Controls    .3185185     [95% conf. interval]
                   ---------     --------------------
        difference   .037037     -.0019535   .0760276
        ratio       1.116279      1.004336   1.240699
        rel. diff.  .0543478      .0036019   .1050938

        odds ratio  2.428571       .957147    6.92694   (exact)
		
		
****** MCNEMAR SECOND TRY 
import excel "/Users/bielecki/Desktop/McNemar_Data_raw_no_c.xlsx", sheet("Sheet1") firstrow

drop if missing(nosc10d_b) | missing(nosc10d_a)
gen within_range_nosc10d_b = (nosc10d_b >=25 & nosc10d_b <=40)
gen within_range_nosc10d_a = (nosc10d_a >=25 & nosc10d_a <=40)

tabulate within_range_nosc10d_b within_range_nosc10d_a, matcell(cells)

// Assign the cell counts to a, b, c, and d
local a = cells[1,1] // No event before, no event after
local b = cells[1,2] // No event before, event after
local c = cells[2,1] // Event before, no event after
local d = cells[2,2] // Event before, event after

// Perform the McNemar test
mcci `a' `b' `c' `d'



generate within_range_nosc10d_b_correct = 1 - within_range_nosc10d_b
generate within_range_nosc10d_a_correct = 1 - within_range_nosc10d_a


tabulate within_range_nosc10d_b_correct within_range_nosc10d_a_correct, matcell(cells)

matrix list cells

local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]

mcci `a' `b' `c' `d'



******* MCNEMAR FINAL using square root method 

// true values
local true_1 = 32
local true_2 = 24
local true_3 = 385
local true_4 = 355
local true_5 = 6

// nosc10d variables
gen within_range_nosc10d_b = (nosc10d_b >= (true_1 - sqrt(true_1)) & nosc10d_b <= (true_1 + sqrt(true_1)))
gen within_range_nosc10d_a = (nosc10d_a >= (true_1 - sqrt(true_1)) & nosc10d_a <= (true_1 + sqrt(true_1)))

// sc10d variables
gen within_range_sc10d_b = (sc10d_b >= (true_2 - sqrt(true_2)) & sc10d_b <= (true_2 + sqrt(true_2)))
gen within_range_sc10d_a = (sc10d_a >= (true_2 - sqrt(true_2)) & sc10d_a <= (true_2 + sqrt(true_2)))

// scpos variables
gen within_range_scpos_b = (scpos_b >= (true_3 - sqrt(true_3)) & scpos_b <= (true_3 + sqrt(true_3)))
gen within_range_scpos_a = (scpos_a >= (true_3 - sqrt(true_3)) & scpos_a <= (true_3 + sqrt(true_3)))

// scnocanc variables
gen within_range_scnocanc_b = (scnocanc_b >= (true_4 - sqrt(true_4)) & scnocanc_b <= (true_4 + sqrt(true_4)))
gen within_range_scnocanc_a = (scnocanc_a >= (true_4 - sqrt(true_4)) & scnocanc_a <= (true_4 + sqrt(true_4)))

// ovther variables
gen within_range_ovther_b = (ovther_b >= (true_5 - sqrt(true_5)) & ovther_b <= (true_5 + sqrt(true_5)))
gen within_range_ovther_a = (ovther_a >= (true_5 - sqrt(true_5)) & ovther_a <= (true_5 + sqrt(true_5)))


// mcnemar test for nosc10d
tabulate within_range_nosc10d_b within_range_nosc10d_a, matcell(cells)
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

// mcnemar test for sc10d
tabulate within_range_sc10d_b within_range_sc10d_a, matcell(cells)
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

// mcnemar test for scpos
tabulate within_range_scpos_b within_range_scpos_a, matcell(cells)
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

// mcnemar test for scnocanc
tabulate within_range_scnocanc_b within_range_scnocanc_a, matcell(cells)
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'

// mcnemar test for ovther
tabulate within_range_ovther_b within_range_ovther_a, matcell(cells)
local a = cells[1,1]
local b = cells[1,2]
local c = cells[2,1]
local d = cells[2,2]
mcci `a' `b' `c' `d'



******* MCNEMAR FINAL using tolerance of 15 above and below 
import excel "/Users/bielecki/Desktop/McNemar_Data_raw_no_c.xlsx", sheet("Sheet1") firstrow

// Defining true values
local true_1 = 32
local true_2 = 24
local true_3 = 385
local true_4 = 355
local true_5 = 6

// Creating binary variables using an absolute tolerance of 15
gen within_range_nosc10d_b = (nosc10d_b >= (true_1 - 5) & nosc10d_b <= (true_1 + 5))
gen within_range_nosc10d_a = (nosc10d_a >= (true_1 - 5) & nosc10d_a <= (true_1 + 5))

gen within_range_sc10d_b = (sc10d_b >= (true_2 - 15) & sc10d_b <= (true_2 + 15))
gen within_range_sc10d_a = (sc10d_a >= (true_2 - 15) & sc10d_a <= (true_2 + 15))

gen within_range_scpos_b = (scpos_b >= (true_3 - 15) & scpos_b <= (true_3 + 15))
gen within_range_scpos_a = (scpos_a >= (true_3 - 15) & scpos_a <= (true_3 + 15))

gen within_range_scnocanc_b = (scnocanc_b >= (true_4 - 15) & scnocanc_b <= (true_4 + 15))
gen within_range_scnocanc_a = (scnocanc_a >= (true_4 - 15) & scnocanc_a <= (true_4 + 15))

gen within_range_ovther_b = (ovther_b >= (true_5 - 15) & ovther_b <= (true_5 + 15))
gen within_range_ovther_a = (ovther_a >= (true_5 - 15) & ovther_a <= (true_5 + 15))

// Adjusting binary coding to traditional (0 for 'incorrect' and 1 for 'correct')
gen within_range_nosc10d_b_correct = 1 - within_range_nosc10d_b
gen within_range_nosc10d_a_correct = 1 - within_range_nosc10d_a

gen within_range_sc10d_b_correct = 1 - within_range_sc10d_b
gen within_range_sc10d_a_correct = 1 - within_range_sc10d_a

gen within_range_scpos_b_correct = 1 - within_range_scpos_b
gen within_range_scpos_a_correct = 1 - within_range_scpos_a

gen within_range_scnocanc_b_correct = 1 - within_range_scnocanc_b
gen within_range_scnocanc_a_correct = 1 - within_range_scnocanc_a

gen within_range_ovther_b_correct = 1 - within_range_ovther_b
gen within_range_ovther_a_correct = 1 - within_range_ovther_a

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b_correct within_range_`var'_a_correct, matcell(cells)
    local a = cells[1,1]
    local b = cells[1,2]
    local c = cells[2,1]
    local d = cells[2,2]
    mcci `a' `b' `c' `d'
}


***************
**************

import excel "/Users/bielecki/Desktop/McNemar_Data_raw_no_c.xlsx", sheet("Sheet1") firstrow

// Creating binary variables using an absolute tolerance of 15
gen within_range_nosc10d_b = (nosc10d_b >=20 & nosc10d_b <=45)
gen within_range_nosc10d_a = (nosc10d_a >=20 & nosc10d_a <=45)

gen within_range_sc10d_b = (sc10d_b >=9 & sc10d_b <=39)
gen within_range_sc10d_a = (sc10d_a >=9 & sc10d_a <=39)

gen within_range_scpos_b = (scpos_b >=310 & scpos_b <=410)
gen within_range_scpos_a = (scpos_a >=310 & scpos_a <=410)

gen within_range_scnocanc_b = (scnocanc_b >=310 & scnocanc_b <=400)
gen within_range_scnocanc_a = (scnocanc_a >=310 & scnocanc_a <=400)

gen within_range_ovther_b = (ovther_b >=-9 & ovther_b <=21)
gen within_range_ovther_a = (ovther_a >=-9 & ovther_a <=21)

// Adjusting binary coding to traditional (0 for 'incorrect' and 1 for 'correct')
gen within_range_nosc10d_b_correct = 1 - within_range_nosc10d_b
gen within_range_nosc10d_a_correct = 1 - within_range_nosc10d_a

gen within_range_sc10d_b_correct = 1 - within_range_sc10d_b
gen within_range_sc10d_a_correct = 1 - within_range_sc10d_a

gen within_range_scpos_b_correct = 1 - within_range_scpos_b
gen within_range_scpos_a_correct = 1 - within_range_scpos_a

gen within_range_scnocanc_b_correct = 1 - within_range_scnocanc_b
gen within_range_scnocanc_a_correct = 1 - within_range_scnocanc_a

gen within_range_ovther_b_correct = 1 - within_range_ovther_b
gen within_range_ovther_a_correct = 1 - within_range_ovther_a

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b_correct within_range_`var'_a_correct, matcell(cells)
    local a = cells[1,1]
    local b = cells[2,1]
    local c = cells[1,2]
    local d = cells[2,2]
    mcci `a' `b' `c' `d'
}
******

import excel "/Users/bielecki/Desktop/McNemar_Data_raw_no_c.xlsx", sheet("Sheet1") firstrow

// Creating binary variables using an absolute tolerance of 15
gen within_range_nosc10d_b = (nosc10d_b >=20 & nosc10d_b <=45)
gen within_range_nosc10d_a = (nosc10d_a >=20 & nosc10d_a <=45)

gen within_range_sc10d_b = (sc10d_b >=9 & sc10d_b <=39)
gen within_range_sc10d_a = (sc10d_a >=9 & sc10d_a <=39)

gen within_range_scpos_b = (scpos_b >=310 & scpos_b <=410)
gen within_range_scpos_a = (scpos_a >=310 & scpos_a <=410)

gen within_range_scnocanc_b = (scnocanc_b >=310 & scnocanc_b <=400)
gen within_range_scnocanc_a = (scnocanc_a >=310 & scnocanc_a <=400)

gen within_range_ovther_b = (ovther_b >= 0 & ovther_b <=21)
gen within_range_ovther_a = (ovther_a >= 0 & ovther_a <=21)

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b within_range_`var'_a, matcell(cells)
    local a = cells[1,1]
    local b = cells[1,2]
    local c = cells[2,1]
    local d = cells[2,2]
    mcci `a' `b' `c' `d'
}


// Assign the cell counts to a, b, c, and d
local a = cells[1,1] // No event before, no event after
local b = cells[1,2] // No event before, event after
local c = cells[2,1] // Event before, no event after
local d = cells[2,2] // Event before, event after

// Perform the McNemar test
mcci `a' `b' `c' `d'


****** MCNEMAR FINALLY CORRECT 

import excel "/Users/bielecki/Desktop/McNemar_Data_raw_no_c.xlsx", sheet("Sheet1") firstrow

// First we drop rows with missing values 
drop if missing(nosc10d_b) | missing(nosc10d_a) | missing(sc10d_b) | missing(sc10d_a) | missing(scpos_b) | missing(scpos_a) | missing(scnocanc_b) | missing(scnocanc_a) | missing(ovther_b) | missing(ovther_a)

// Creating binary variables using an absolute tolerance of 15
gen within_range_nosc10d_b = (nosc10d_b >=20 & nosc10d_b <=45)
gen within_range_nosc10d_a = (nosc10d_a >=20 & nosc10d_a <=45)

gen within_range_sc10d_b = (sc10d_b >=9 & sc10d_b <=39)
gen within_range_sc10d_a = (sc10d_a >=9 & sc10d_a <=39)

gen within_range_scpos_b = (scpos_b >=310 & scpos_b <=410)
gen within_range_scpos_a = (scpos_a >=310 & scpos_a <=410)

gen within_range_scnocanc_b = (scnocanc_b >=250 & scnocanc_b <=440)
gen within_range_scnocanc_a = (scnocanc_a >=250 & scnocanc_a <=440)

gen within_range_ovther_b = (ovther_b >= 0 & ovther_b <=21)
gen within_range_ovther_a = (ovther_a >= 0 & ovther_a <=21)

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b within_range_`var'_a, matcell(cells)
    
    // Assign the cell counts to a, b, c, and d
    local a = cells[1,1] // No event before, no event after
    local b = cells[1,2] // No event before, event after
    local c = cells[2,1] // Event before, no event after
    local d = cells[2,2] // Event before, event after

    // Perform the McNemar test
    mcci `a' `b' `c' `d'
}


******* COMPARISON FACT BOX + CATES VS ONLY FACT BOX 

**** CATES 
use "/Users/bielecki/Desktop/McNemar_Cates .dta"
// First we drop rows with missing values 
drop if missing(nosc10d_b) | missing(nosc10d_a) | missing(sc10d_b) | missing(sc10d_a) | missing(scpos_b) | missing(scpos_a) | missing(scnocanc_b) | missing(scnocanc_a) | missing(ovther_b) | missing(ovther_a)

drop if cates == 0

gen within_range_nosc10d_b = (nosc10d_b >=20 & nosc10d_b <=45)
gen within_range_nosc10d_a = (nosc10d_a >=20 & nosc10d_a <=45)

gen within_range_sc10d_b = (sc10d_b >=9 & sc10d_b <=39)
gen within_range_sc10d_a = (sc10d_a >=9 & sc10d_a <=39)

gen within_range_scpos_b = (scpos_b >=310 & scpos_b <=410)
gen within_range_scpos_a = (scpos_a >=310 & scpos_a <=410)

gen within_range_scnocanc_b = (scnocanc_b >=250 & scnocanc_b <=440)
gen within_range_scnocanc_a = (scnocanc_a >=250 & scnocanc_a <=440)

gen within_range_ovther_b = (ovther_b >= 0 & ovther_b <=21)
gen within_range_ovther_a = (ovther_a >= 0 & ovther_a <=21)

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b within_range_`var'_a, matcell(cells)
    
    // Assign the cell counts to a, b, c, and d
    local a = cells[1,1] // No event before, no event after
    local b = cells[1,2] // No event before, event after
    local c = cells[2,1] // Event before, no event after
    local d = cells[2,2] // Event before, event after

    // Perform the McNemar test
    mcci `a' `b' `c' `d'
}


**** NO CATES 
use "/Users/bielecki/Desktop/McNemar_Cates .dta"
// First we drop rows with missing values 
drop if missing(nosc10d_b) | missing(nosc10d_a) | missing(sc10d_b) | missing(sc10d_a) | missing(scpos_b) | missing(scpos_a) | missing(scnocanc_b) | missing(scnocanc_a) | missing(ovther_b) | missing(ovther_a)

drop if cates == 1

gen within_range_nosc10d_b = (nosc10d_b >=20 & nosc10d_b <=45)
gen within_range_nosc10d_a = (nosc10d_a >=20 & nosc10d_a <=45)

gen within_range_sc10d_b = (sc10d_b >=9 & sc10d_b <=39)
gen within_range_sc10d_a = (sc10d_a >=9 & sc10d_a <=39)

gen within_range_scpos_b = (scpos_b >=310 & scpos_b <=410)
gen within_range_scpos_a = (scpos_a >=310 & scpos_a <=410)

gen within_range_scnocanc_b = (scnocanc_b >=250 & scnocanc_b <=440)
gen within_range_scnocanc_a = (scnocanc_a >=250 & scnocanc_a <=440)

gen within_range_ovther_b = (ovther_b >= 0 & ovther_b <=21)
gen within_range_ovther_a = (ovther_a >= 0 & ovther_a <=21)

// Performing McNemar's test
foreach var in nosc10d sc10d scpos scnocanc ovther {
    tabulate within_range_`var'_b within_range_`var'_a, matcell(cells)
    
    // Assign the cell counts to a, b, c, and d
    local a = cells[1,1] // No event before, no event after
    local b = cells[1,2] // No event before, event after
    local c = cells[2,1] // Event before, no event after
    local d = cells[2,2] // Event before, event after

    // Perform the McNemar test
    mcci `a' `b' `c' `d'
}

****** Playing around 
use "/Users/bielecki/Desktop/McNemar_Cates .dta"

// For nosc10d
separate nosc10d_a, by(cates)
summarize nosc10d_a0, detail
summarize nosc10d_a1, detail

// For nosc10d
summarize nosc10d_a0, meanonly
local mean0 = r(mean)
local diff0 = abs(32 - `mean0')

summarize nosc10d_a1, meanonly
local mean1 = r(mean)
local diff1 = abs(32 - `mean1')

di "Absolute difference from true value for group 0: `diff0'"
di "Absolute difference from true value for group 1: `diff1'"

ttest nosc10d_a, by(cates)

. ttest nosc10d_a, by(cates)

Two-sample t test with equal variances
------------------------------------------------------------------------------
   Group |     Obs        Mean    Std. err.   Std. dev.   [95% conf. interval]
---------+--------------------------------------------------------------------
       0 |      36    42.05556    4.986322    29.91793    31.93278    52.17833
       1 |      50      41.146    4.406916     31.1616    32.28997    50.00203
---------+--------------------------------------------------------------------
Combined |      86    41.52674    3.285886    30.47206    34.99352    48.05997
---------+--------------------------------------------------------------------
    diff |            .9095556    6.699415               -12.41297    14.23208
------------------------------------------------------------------------------
    diff = mean(0) - mean(1)                                      t =   0.1358
H0: diff = 0                                     Degrees of freedom =       84

    Ha: diff < 0                 Ha: diff != 0                 Ha: diff > 0
 Pr(T < t) = 0.5538         Pr(|T| > |t|) = 0.8923          Pr(T > t) = 0.4462

. 
end of do-file


***THERE IS NO STATISTICAL DIFFERENCE BETWEEN THE TWO MEANS (TWO INTERVENTIONS VS 1)

. ranksum nosc10d_a, by(cates)


Two-sample Wilcoxon rank-sum (Mann–Whitney) test

       cates |      Obs    Rank sum    Expected
-------------+---------------------------------
           0 |       36        1595        1566
           1 |       50        2146        2175
-------------+---------------------------------
    Combined |       86        3741        3741

Unadjusted variance    13050.00
Adjustment for ties    -1052.67
                     ----------
Adjusted variance      11997.33

H0: nosc10~a(cates==0) = nosc10~a(cates==1)
         z =  0.265
Prob > |z| = 0.7912
Exact prob = 0.7941


***** Paired plot test 1 

* Generate the paired plot
twoway (scatter nosc10d_a nosc10d_b, mcolor(gs12) msize(small)) (lfit nosc10d_a nosc10d_b), ///
xline(32, lp(dash) lc(red)) yline(32, lp(dash) lc(red)) ///
legend(order(1 "Data" 2 "Fitted line") ring(0) position(11)) ///
title("Paired plot: Before and After Fact Box Intervention") ///
xtitle("Before Intervention") ytitle("After Intervention") 





********
* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    local true_value

    if "`var'" == "nosc10d" {
        local true_value 32
    }
    else if "`var'" == "sc10d" {
        local true_value 24
    }
    else if "`var'" == "scpos" {
        local true_value 56
    }
    else if "`var'" == "scnocanc" {
        local true_value 45
    }
    else if "`var'" == "ovther" {
        local true_value 60
    }

    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_value') < abs(`var'_b - `true_value')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           (line `true_value' before `true_value' after, lcolor(black) lw(*1.2)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           legend(off) note("Green lines indicate a change closer to the true value")

    * Save the graph
    graph save "graph_`var'", replace
}
***3

* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Define the true values for each variable
local true_nosc10d = 32
local true_sc10d = 24
local true_scpos = 56
local true_scnocanc = 45
local true_ovther = 60

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_`var'') < abs(`var'_b - `true_`var'')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(gs12)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(gs2) lw(*1.2)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           legend(off) note("Lines indicate a change closer to the true value")

    * Save the graph
    graph save "graph_`var'", replace
}


***WORKING

* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    local true_value

    if "`var'" == "nosc10d" {
        local true_value 32
    }
    else if "`var'" == "sc10d" {
        local true_value 24
    }
    else if "`var'" == "scpos" {
        local true_value 56
    }
    else if "`var'" == "scnocanc" {
        local true_value 45
    }
    else if "`var'" == "ovther" {
        local true_value 60
    }

    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_value') < abs(`var'_b - `true_value')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           yline(`true_value', lcolor(black) lw(*1.2)) legend(off) ///
           note("Green lines indicate a change closer to the true value")

    * Save the graph
    graph save "graph_`var'", replace

	
}

*******

* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    local true_value

    if "`var'" == "nosc10d" {
        local true_value 32
    }
    else if "`var'" == "sc10d" {
        local true_value 24
    }
    else if "`var'" == "scpos" {
        local true_value 56
    }
    else if "`var'" == "scnocanc" {
        local true_value 45
    }
    else if "`var'" == "ovther" {
        local true_value 60
    }

    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_value') > abs(`var'_b - `true_value')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           yline(`true_value', lcolor(black) lw(*1.2)) legend(off) ///
           note("Green lines indicate a change closer to the true value")

    * Save the graph on Desktop
    graph save "/Users/bielecki/Desktop/graph_`var'", replace
}

* Combine the saved graphs into a single graph
graph combine "/Users/bielecki/Desktop/graph_nosc10d.gph" ///
              "/Users/bielecki/Desktop/graph_sc10d.gph" ///
              "/Users/bielecki/Desktop/graph_scpos.gph" ///
              "/Users/bielecki/Desktop/graph_scnocanc.gph" ///
              "/Users/bielecki/Desktop/graph_ovther.gph" , ///
              name(combined_graph)

* Save the combined graph on Desktop
graph save "/Users/bielecki/Desktop/combined_graph", replace


****** WORKING 
* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

* Define a new variable to indicate if the 'after' value is closer to the true value of 32
gen close_to_true_nosc10d = abs(nosc10d_a - 32) < abs(nosc10d_b - 32)
gen close_to_true_sc10d = abs(sc10d_a - 24) < abs(sc10d_b - 24)

* Plot for nosc10d
twoway (pcspike nosc10d_b before nosc10d_a after if close_to_true_nosc10d == 0, lcolor(red)) ///
       (pcspike nosc10d_b before nosc10d_a after if close_to_true_nosc10d == 1, lcolor(green)) ///
       (line nosc10d_b before nosc10d_a after if close_to_true_nosc10d == ., lcolor(blue)) ///
       , xla(1 "Before" 2 "After") xtitle("") ytitle("NOSC10D") ///
       yscale(range(0 200)) yline(0 200, lcolor(white)) ///
       legend(off) note("Green lines indicate a change closer to the true value")

* Save the graph for nosc10d
graph save "graph_nosc10d", replace

* Plot for sc10d
twoway (pcspike sc10d_b before sc10d_a after if close_to_true_sc10d == 0, lcolor(red)) ///
       (pcspike sc10d_b before sc10d_a after if close_to_true_sc10d == 1, lcolor(green)) ///
       (line sc10d_b before sc10d_a after if close_to_true_sc10d == ., lcolor(blue)) ///
       , xla(1 "Before" 2 "After") xtitle("") ytitle("sc10d") ///
       yscale(range(0 200)) yline(0 200, lcolor(white)) ///
       legend(off) note("Green lines indicate a change closer to the true value")

	   
**********
* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Define the true values for each variable
local true_nosc10d = 32
local true_sc10d = 24
local true_scpos = 385
local true_scnocanc = 355
local true_ovther = 6

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_`var'') < abs(`var'_b - `true_`var'')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           (line `true_`var' before `true_`var' after, lcolor(black) lw(*1.2)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           legend(off) note("Green lines indicate a change closer to the true value")

    * Save the graph
    graph save "/Users/bielecki/Desktop/graph_`var'", replace
}

**** WORKING BUT COMBINED NOT PERFECT 
* Load the dataset 
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

foreach var in nosc10d sc10d scpos scnocanc ovther {
    local true_value

    if "`var'" == "nosc10d" {
        local true_value 32
    }
    else if "`var'" == "sc10d" {
        local true_value 24
    }
    else if "`var'" == "scpos" {
        local true_value 385
    }
    else if "`var'" == "scnocanc" {
        local true_value 355
    }
    else if "`var'" == "ovther" {
        local true_value 6
    }

    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_value') < abs(`var'_b - `true_value')

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'") ///
           yline(`true_value', lcolor(black) lw(*1.2)) legend(off) ///
           note("Green lines indicate a change closer to the true value")

    * Save the graph on Desktop
    graph save "/Users/bielecki/Desktop/graph_`var'", replace
}

* Combine the saved graphs into a single graph
graph combine "/Users/bielecki/Desktop/graph_nosc10d1.gph" ///
              "/Users/bielecki/Desktop/graph_sc10d1.gph" ///
              "/Users/bielecki/Desktop/graph_scpos1.gph" ///
              "/Users/bielecki/Desktop/graph_scnocanc1.gph" ///
              "/Users/bielecki/Desktop/graph_ovther1.gph" , ///
              name(my_combined_graph)

* Save the combined graph on Desktop
graph save "/Users/bielecki/Desktop/my_combined_graph", replace


********
* Load the dataset
* Load the dataset
use "/Users/bielecki/Desktop/McNemar_Cates .dta", clear

* Define the true values for each variable
local true_nosc10d = 32
local true_sc10d = 24
local true_scpos = 385
local true_scnocanc = 355
local true_ovther = 6

* Create two new variables representing the x coordinates for the parallel coordinates plot
gen byte before = 1
gen byte after = 2

* For naming subplots
local title_nosc10d "A"
local title_sc10d "B"
local title_scpos "C"
local title_scnocanc "D"
local title_ovther "E"

foreach var in nosc10d sc10d scpos scnocanc ovther {
    * Generate a new variable to indicate if the 'after' value is closer to the true value
    gen close_to_true_`var' = abs(`var'_a - `true_`var'') < abs(`var'_b - `true_`var'')

    * Define title for each subplot
    local title = "`title_`var''"

    * Create the parallel coordinates plot
    twoway (pcspike `var'_b before `var'_a after if close_to_true_`var' == 0, lcolor(red)) ///
           (pcspike `var'_b before `var'_a after if close_to_true_`var' == 1, lcolor(green)) ///
           (line `true_`var' before `true_`var' after, lcolor(black) lw(*1.5)) ///
           , xla(1 "Before" 2 "After") xtitle("") ytitle("`var'", gap(10)) ///
           title("`title'", size(small)) ///
           legend(off)

    * Save the graph
    graph save "/Users/bielecki/Desktop/graph_`var'", replace
}

* Combine the graphs
graph combine "/Users/bielecki/Desktop/graph_nosc10dn.gph" ///
               "/Users/bielecki/Desktop/graph_sc10dn.gph" ///
               "/Users/bielecki/Desktop/graph_scposn.gph" ///
               "/Users/bielecki/Desktop/graph_scnocancn.gph" ///
               "/Users/bielecki/Desktop/graph_ovthern.gph" ///
               , ysize(3) xsize(6) imargin(0 0 0 0) graphregion(margin(zero)) ///
               title("Combined Graph") note("Green lines indicate a change closer to the true value")

* Save the combined graph
graph save "/Users/bielecki/Desktop/combined_graph.gph", replace



**********
Odette's Comments: 

