use "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\Data3.0.dta-standardized.dta" 
*\ nnmatch models for political demobilization
 log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\days_campaign_ch_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch daysch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store daysch_cem2_proj1
nnmatch daysch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store daysch_cem2_proj2
nnmatch daysch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store daysch_cem2_proj3
nnmatch daysch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store daysch_cem2_proj4
nnmatch daysch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store daysch_cem2_proj5
est table daysch_cem2_proj1 daysch_cem2_proj2 daysch_cem2_proj3 daysch_cem2_proj4 daysch_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\days_campaign_increase_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch days_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store days_cat_cem2_proj1
nnmatch days_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store days_cat_cem2_proj2
nnmatch days_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store days_cat_cem2_proj3
nnmatch days_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store days_cat_cem2_proj4
nnmatch days_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store days_cat_cem2_proj5
est table days_cat_cem2_proj1 days_cat_cem2_proj2 days_cat_cem2_proj3 days_cat_cem2_proj4 days_cat_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
*Table for project
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\tables_political_demobilization_project.log"
estout daysch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout days_cat_cem2_proj1, stat( N) cells(" n b se z p ci")
estout daysch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout days_cat_cem2_proj2, stat( N) cells(" n b se z p ci")
estout daysch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout days_cat_cem2_proj3, stat( N) cells(" n b se z p ci")
estout daysch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout days_cat_cem2_proj4, stat( N) cells(" n b se z p ci")
estout daysch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout days_cat_cem2_proj5, stat( N) cells(" n b se z p ci")
log close



