use "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\Data3.0.dta-standardized.dta" 
*\ nnmatch models for civic participation
 log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\gram_sabha_ch_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch gsabhch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store gsabhch_cem2_proj1
nnmatch gsabhch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store gsabhch_cem2_proj2
nnmatch gsabhch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store gsabhch_cem2_proj3
nnmatch gsabhch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store gsabhch_cem2_proj4
nnmatch gsabhch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store gsabhch_cem2_proj5
est table gsabhch_cem2_proj1 gsabhch_cem2_proj2 gsabhch_cem2_proj3 gsabhch_cem2_proj4 gsabhch_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
 log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\personal_business_ch_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch prsnlbch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store prsnlbch_cem2_proj1
nnmatch prsnlbch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store prsnlbch_cem2_proj2
nnmatch prsnlbch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store prsnlbch_cem2_proj3
nnmatch prsnlbch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store prsnlbch_cem2_proj4
nnmatch prsnlbch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store prsnlbch_cem2_proj5
est table prsnlbch_cem2_proj1 prsnlbch_cem2_proj2 prsnlbch_cem2_proj3 prsnlbch_cem2_proj4 prsnlbch_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\special_meeting_ch_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch smeetch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store smeetch_cem2_proj1
nnmatch smeetch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store smeetch_cem2_proj2
nnmatch smeetch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store smeetch_cem2_proj3
nnmatch smeetch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store smeetch_cem2_proj4
nnmatch smeetch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store smeetch_cem2_proj5
est table smeetch_cem2_proj1 smeetch_cem2_proj2 smeetch_cem2_proj3 smeetch_cem2_proj4 smeetch_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\gram_sabha_cat_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch gsabh_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store gsabh_cat_cem2_proj1
nnmatch gsabh_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store gsabh_cat_cem2_proj2
nnmatch gsabh_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store gsabh_cat_cem2_proj3
nnmatch gsabh_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store gsabh_cat_cem2_proj4
nnmatch gsabh_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store gsabh_cat_cem2_proj5
est table gsabh_cat_cem2_proj1 gsabh_cat_cem2_proj2 gsabh_cat_cem2_proj3 gsabh_cat_cem2_proj4 gsabh_cat_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\personal_business_cat_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch prsnlb_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store prsnlb_cat_cem2_proj1
nnmatch prsnlb_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store prsnlb_cat_cem2_proj2
nnmatch prsnlb_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store prsnlb_cat_cem2_proj3
nnmatch prsnlb_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store prsnlb_cat_cem2_proj4
nnmatch prsnlb_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store prsnlb_cat_cem2_proj5
est table prsnlb_cat_cem2_proj1 prsnlb_cat_cem2_proj2 prsnlb_cat_cem2_proj3 prsnlb_cat_cem2_proj4 prsnlb_cat_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Political demobilization & civic participation\varnitha_analysis\log\special_meeting_cat_proj.log"
*\ cem2
cem reason fuelcut hhnum06(3.5) newroom06(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch smeet_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store smeet_cat_cem2_proj1
nnmatch smeet_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store smeet_cat_cem2_proj2
nnmatch smeet_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair gender06) m(4) robust(4) 
est store smeet_cat_cem2_proj3
nnmatch smeet_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==0, exact(pair) m(4) robust(4) 
est store smeet_cat_cem2_proj4
nnmatch smeet_cat project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & gender06==1, exact(pair) m(4) robust(4) 
est store smeet_cat_cem2_proj5
est table smeet_cat_cem2_proj1 smeet_cat_cem2_proj2 smeet_cat_cem2_proj3 smeet_cat_cem2_proj4 smeet_cat_cem2_proj5, star(.01 .05 .10) stats(N) b(%9.3f)
log close

*Table for project
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\tables_civic_participation_project.log"
estout gsabhch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout gsabh_cat_cem2_proj1, stat( N) cells(" n b se z p ci")
estout gsabhch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout gsabh_cat_cem2_proj2, stat( N) cells(" n b se z p ci")
estout gsabhch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout gsabh_cat_cem2_proj3, stat( N) cells(" n b se z p ci")
estout gsabhch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout gsabh_cat_cem2_proj4, stat( N) cells(" n b se z p ci")
estout gsabhch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout gsabh_cat_cem2_proj5, stat( N) cells(" n b se z p ci")
estout prsnlbch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout prsnlb_cat_cem2_proj1, stat( N) cells(" n b se z p ci")
estout prsnlbch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout prsnlb_cat_cem2_proj2, stat( N) cells(" n b se z p ci")
estout prsnlbch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout prsnlb_cat_cem2_proj3, stat( N) cells(" n b se z p ci")
estout prsnlbch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout prsnlb_cat_cem2_proj4, stat( N) cells(" n b se z p ci")
estout prsnlbch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout prsnlb_cat_cem2_proj5, stat( N) cells(" n b se z p ci")
estout smeetch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout smeet_cat_cem2_proj1, stat( N) cells(" n b se z p ci")
estout smeetch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout smeet_cat_cem2_proj2, stat( N) cells(" n b se z p ci")
estout smeetch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout smeet_cat_cem2_proj3, stat( N) cells(" n b se z p ci")
estout smeetch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout smeet_cat_cem2_proj4, stat( N) cells(" n b se z p ci")
estout smeetch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout smeet_cat_cem2_proj5, stat( N) cells(" n b se z p ci")
log close



