# garmin-linux-development-environment

Garmin is notoriously slow to update the sdkmanager and other tools to
work with the latest Ubuntu LTS version. This leads to issues with missing
or conflicting libraries like the one described in
https://forums.garmin.com/developer/connect-iq/i/bug-reports/ubuntu-24-04-support,
and often takes years before binaries that "just work" are released.

This repository contains a set of simple scripts to download the required
libraries and setup the Garmin development environment in a contained
environment that doesn't mess with the system libraries, and deploys two
scripts to enable development by setting up correct the PATH and LD_LIBRARY_PATH
environment variables so that the sdkmanager and vscode work as expected.

## How to use

1. Run `make install` to install the scripts (installs under
   `${HOME}/.local/bin`, so make sure this path is in your `PATH` if
   you want to access the newly added scripts from anywhere in your
   console), and `make uninstall` to remove them.
3. Once you installed the scripts, run the `sdkmanager` script first.
   The first time, the script will download the sdkmanager and setup
   the development environment, before starting the sdkmanager that
   you can use to install different Garmin SDKs.
4. Manual step: Once the sdkmanager is installed and running, use it
   to install at least one SDK version.
5. Manual step: If you haven't done so yet, install VSCode with the
   Monkey C extension as explained in
   https://developer.garmin.com/connect-iq/reference-guides/visual-studio-code-extension/
6. Run the `code-garmin` script to start VSCode with the corrent
   environment that supports and runs the Garmin SDK tools as expected.
