# R-roll

This roll bundles the R statistical computing package.

R is a free software environment for statistical computing and graphics. For more information about R please visit the <a href="http://www.r-project.org" target="_blank">official web page</a>.


## Requirements

To build/install this roll you must have root access to a Rocks development machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must download the appropriate R source file(s) using a machine that does have Internet access and copy them into the `src/R` directory on your Rocks development machine.


## Dependencies

None


## Building

To build the R-roll, execute these instructions on a Rocks development machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been created as... `R-roll-*.iso`. If you built the roll on a Rocks frontend then proceed to the installation step. If you built the roll on a Rocks development appliance you need to copy the roll to your Rocks frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll R
% cd /export/rocks/install
% rocks create distro
% rocks run roll R | bash
```

In addition to the software itself, the roll installs R environment module
files in /opt/modulefiles/applications/R.