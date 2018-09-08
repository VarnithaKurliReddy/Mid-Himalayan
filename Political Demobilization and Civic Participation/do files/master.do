*Treatment variables meaning
use "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\Data1.0.dta" 
*parti_proj=1 if parti==1 & project==1
*replace parti_proj=0 if parti==0 & project==1 
*gen parti_non_proj=1 if parti==1
*replace parti_non_proj=0 if project==0
*gen non_parti=.
*replace non_parti=1 if parti==0 & project==1
*replace non_parti=0 if project==0
*generate dependent variables(Absolute and categorical) for political demobilization
gen daysch= panchdays11-panchdays06
gen  days_cat=1 if daysch>0
replace days_cat=0 if daysch==0
replace days_cat=-1 if daysch<0
*generate dependent variables(Absolute and categorical) for civic participation-Gram Sabha, Personal Business, and Special Meeting
*Dependent variables for frequency of interaction with gram sabha
gen gsabhch= gh06-gh11
gen  gsabh_cat=1 if gsabhch>0
replace gsabh_cat=0 if gsabhch==0
replace gsabh_cat=-1 if gsabhch<0
*Dependent variables for frequency of interaction with local panchayat for personal business
gen prsnlbch= panchpr06-panchpr11
gen  prsnlb_cat=1 if prsnlbch>0
replace prsnlb_cat=0 if prsnlbch==0
replace prsnlb_cat=-1 if prsnlbch<0
*Dependent variables for frequency of interaction with local panchayat for special meeting
gen smeetch= panchsm06- panchsm11
gen  smeet_cat=1 if smeetch>0
replace smeet_cat=0 if smeetch==0
replace smeet_cat=-1 if smeetch<0
save "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\Data2.0.dta"
*ATE in political demobilization for project vs non-project households
doedit "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\do files\20June2018_cem_political_demobilization_proj.do"
*ATE in civic participation for project vs non-project households
doedit "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\do files\20June2018_cem_civic_participation_proj.do"

*Graphs
use "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\results\Results.dta"
*All
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\all.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\all.emf", as(emf) replace
*Except special meeting
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1 |type==2 |type==3, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\except.special_meeting.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\except.special_meeting.emf", as(emf) replace
*Project
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if category==1, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(4) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project.emf", as(emf) replace

*Project(Reason)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if category==2, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(4) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_reason.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_reason.emf", as(emf) replace

*Project(Gender)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if category==3, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(4) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_gender.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_gender.emf", as(emf) replace

*Project(Male)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if category==4, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(4) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_male.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_male.emf", as(emf) replace

*Project(Female)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if category==5, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(4) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_female.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\project_female.emf", as(emf) replace

*Election Campaign
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1, ytitle(, color(white)) ylabel(#2, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\days_campaign.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\days_campaign.emf", as(emf) replace

*Gram Sabha
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==2, ytitle(, color(white)) ylabel(#2, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\gram_sabha.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\gram_sabha.emf", as(emf) replace

*Personal Business
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3, ytitle(, color(white)) ylabel(#2, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\personal_business.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\personal_business.emf", as(emf) replace

*Special Meeting
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4, ytitle(, color(white)) ylabel(#2, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\special_meeting.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\special_meeting.emf", as(emf) replace


*Absolute
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indicator==0, ytitle(, color(white)) ylabel(#7, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\absolute.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\absolute.emf", as(emf) replace

*Categorical
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indicator==1, ytitle(, color(white)) ylabel(#5, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(14) ysize(7) scale(10)by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\categorical.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\graphs\categorical.emf", as(emf) replace
