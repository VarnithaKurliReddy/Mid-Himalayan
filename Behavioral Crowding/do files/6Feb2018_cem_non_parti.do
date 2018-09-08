use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0.dta"
*\ nnmatch models for behavior-non_participation
 log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelch_non_parti.log" 
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store fch_cem2_non_parti1
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store fch_cem2_non_parti2
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store fch_cem2_non_parti3
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store fch_cem2_non_parti4
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store fch_cem2_non_parti5
nnmatch fuelch non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store fch_cem2_non_parti6
est table fch_cem2_non_parti1 fch_cem2_non_parti2 fch_cem2_non_parti3 fch_cem2_non_parti4 fch_cem2_non_parti5 fch_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\hhfuel11_non_parti.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store f11_cem2_non_parti1
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f11_cem2_non_parti2
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store f11_cem2_non_parti3
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store f11_cem2_non_parti4
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store f11_cem2_non_parti5
nnmatch hhfuel11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store f11_cem2_non_parti6
est table f11_cem2_non_parti1 f11_cem2_non_parti2 f11_cem2_non_parti3 f11_cem2_non_parti4 f11_cem2_non_parti5 f11_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelzero_non_parti.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store f0_cem2_non_parti1
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f0_cem2_non_parti2
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store f0_cem2_non_parti3
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store f0_cem2_non_parti4
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store f0_cem2_non_parti5
nnmatch fuelzero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store f0_cem2_non_parti6
est table f0_cem2_non_parti1 f0_cem2_non_parti2 f0_cem2_non_parti3 f0_cem2_non_parti4 f0_cem2_non_parti5 f0_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazech_non_parti.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store cch_cem2_non_parti1
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cch_cem2_non_parti2
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store cch_cem2_non_parti3
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store cch_cem2_non_parti4
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store cch_cem2_non_parti5
nnmatch cgrazech non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store cch_cem2_non_parti6
est table cch_cem2_non_parti1 cch_cem2_non_parti2 cch_cem2_non_parti3 cch_cem2_non_parti4 cch_cem2_non_parti5 cch_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgraze11_non_parti.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store c11_cem2_non_parti1
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store c11_cem2_non_parti2
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store c11_cem2_non_parti3
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store c11_cem2_non_parti4
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store c11_cem2_non_parti5
nnmatch cgraze11 non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store c11_cem2_non_parti6
est table c11_cem2_non_parti1 c11_cem2_non_parti2 c11_cem2_non_parti3 c11_cem2_non_parti4 c11_cem2_non_parti5 c11_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazezero_non_parti.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store c0_cem2_non_parti1
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store c0_cem2_non_parti2
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store c0_cem2_non_parti3
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store c0_cem2_non_parti4
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store c0_cem2_non_parti5
nnmatch cgrazezero non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store c0_cem2_non_parti6
est table c0_cem2_non_parti1 c0_cem2_non_parti2 c0_cem2_non_parti3 c0_cem2_non_parti4 c0_cem2_non_parti5 c0_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\lpgnew_non_parti.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store lpg_cem2_non_parti1
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store lpg_cem2_non_parti2
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store lpg_cem2_non_parti3
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store lpg_cem2_non_parti4
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store lpg_cem2_non_parti5
nnmatch lpgnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store lpg_cem2_non_parti6
est table lpg_cem2_non_parti1 lpg_cem2_non_parti2 lpg_cem2_non_parti3 lpg_cem2_non_parti4 lpg_cem2_non_parti5 lpg_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close 

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cstallnew_non_parti.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store cstall_cem2_non_parti1
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cstall_cem2_non_parti2
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store cstall_cem2_non_parti3
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store cstall_cem2_non_parti4
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store cstall_cem2_non_parti5
nnmatch cstallnew non_parti hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store cstall_cem2_non_parti6
est table cstall_cem2_non_parti1 cstall_cem2_non_parti2 cstall_cem2_non_parti3 cstall_cem2_non_parti4 cstall_cem2_non_parti5 cstall_cem2_non_parti6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

*\TABLES 
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\tables_non_parti.log"
estout fch_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti1, stat( N) cells(" n b se z p ci")
estout fch_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti2, stat( N) cells(" n b se z p ci")
estout fch_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti3, stat( N) cells(" n b se z p ci")
estout fch_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti4, stat( N) cells(" n b se z p ci")
estout fch_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti5, stat( N) cells(" n b se z p ci")
estout fch_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout f11_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout f0_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout lpg_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout cch_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout c11_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout c0_cem2_non_parti6, stat( N) cells(" n b se z p ci")
estout cstall_cem2_non_parti6, stat( N) cells(" n b se z p ci")
log close


