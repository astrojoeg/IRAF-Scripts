# IRAF/ICEX Script to Conduct Observations of WD1145+017 for AST376 Final Project
# Written by Joseph Guidry on 04/28/2020
# This script as written takes 8 observations (4 in g and 4 in i),
# but it can be easily altered to your needs.
# Simply adjust the number of images you want to take (i <= N), 
# the filter(s) you want to image in (instrpars.instrfi="@FILTER"),
# your integration time(s) (exposure=TIME.), and lastly the object name(s) (object="NAME").
# Clear skies!

for (i=1; i<=4; i=i+1) { 
    instrpars.instrfi="@g"
    instrument
    observe(image="object", exposure=45., object="testg")
    instrpars.instrfi="@i"
    instrument
    observe(image="object", exposure=60., object="testi")
   
}
