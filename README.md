# garmin-linux-development-environment

Garmin is notoriously slow to update the sdkmanager and other tools to
work with the latest Ubuntu LTS distro. This leads to issues like the
one described in https://forums.garmin.com/developer/connect-iq/i/bug-reports/ubuntu-24-04-support,
and often takes years before a binary that "just works" is released.

This repository contains a set of simple scripts to download the required
libraries and setup the Garmin development environment in a contained
environment that doesn't mess with the system libraries, and deploys two
scripts to enable development by setting up correct the PATH and LD_LIBRARY_PATH
environment variables so that the sdkmanager and vscode work as expected.

## How to use

1. Run `make install` to install the scripts, and `make uninstall` to
   remove them.
2. Once you installed the scripts, run the `sdkmanager` script to setup
   the development environment, and the `code-garmin` script to start
   VSCode with the corrent environment to support the Garmin SDK.

NOTE: You will need to install vscode first, and add the Garmin Monkey C
      extension. Then you can use the provided code-garmin script to
      start VSCode, and have all the garmin tools working as expected
