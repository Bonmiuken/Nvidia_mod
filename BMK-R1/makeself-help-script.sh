#!/bin/sh
#
# Helper script for displaying installer-specific help arguments.
# Part of the makeself suite for NVIDIA-style installers.
# 

while [ "$1" ]; do
    case "$1" in
        "--advanced-options-args-only")
            cat <<- "ADVANCED_OPTIONS_ARGS_ONLY"
  -v, --version
      Print the nvidia-installer version and exit.

  -h, --help
      Print usage information for the common commandline options and exit.

  -A, --advanced-options
      Print usage information for the common commandline options as well as the 
      advanced options, and then exit.

  -a, --accept-license
      This option is obsolete and ignored by nvidia-installer. It is provided 
      for compatibility with older versions.

  -e, --expert
      Enable 'expert' installation mode; more detailed questions will be asked.

  -q, --no-questions
      Do not ask any questions; assume default answers for all queries.

  -s, --silent
      Run silently; no questions are asked and no output is printed.

  --uninstall
      Uninstall the currently installed NVIDIA driver.

  --tmpdir=TMPDIR
      Use the specified directory as a temporary directory.

  --ui=UI
      Specify what user interface to use ('ncurses' or 'none').

  --dkms
      Register the NVIDIA kernel module sources with DKMS.

  -j CONCURRENCY-LEVEL, --concurrency-level=CONCURRENCY-LEVEL
      Set the concurrency level for parallel builds (e.g., kernel module).
ADVANCED_OPTIONS_ARGS_ONLY
            ;;

        "--help-args-only")
            cat <<- "HELP_ARGS_ONLY"
  -v, --version
      Print the nvidia-installer version and exit.

  -h, --help
      Print usage information for the common commandline options and exit.

  -A, --advanced-options
      Print usage information for the common commandline options as well as the 
      advanced options, and then exit.
HELP_ARGS_ONLY
            ;;

        *)
            if [ -n "$1" ]; then
                echo "Error: Unrecognized option '$1'"
            fi
            break
            ;;
    esac
    shift
done