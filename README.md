ANTs-Condor
===========

ANTs (Advanced Normalization Tools; http://stnava.github.io/ANTs/) is really the one of the best image registration tools. Since it takes quite sizable computational resources when it creates unbiased study-specific templates, parallelization can reduce the total computation time greatly.

While the parallelization implemented in ANTS's script "buildtemplateparallel.sh" (v. 0.0.14 test) supports SGE, PBS and Apple XGrid, it does not support a virtual parallel computing environment called "(HT)Condor" (http://research.cs.wisc.edu/htcondor/).

This project is to enable ANTs(1.9.v4-LINUX)'s parallel template building to work on Condor. To run it:

0. You need to have ANTs, and Condor installed and executable.
0.5 Since it submit jobs via fsl_sub, you also need to have fsl_sub executable and set environment variable as:
```
export FSLPARALLEL=CONDOR
```
1. Download two files "buildtemplateparallel_condor.sh" and "waitForCONDORJobs.sh" into ANT's executable path (i.e. ${ANTSPATH})
2. run "buildtemplateparallel_condor.sh" with the "standard" arguments for "buildtemplateparallel.sh" and "-c 5" for Condor.

(cc) sgKIM, 2014. solleo@gmail.com

This project is under Creative Commons Licenses. 
You are free to share and adapt under certain terms. 
See http://creativecommons.org/licenses/by-nc/2.0/
