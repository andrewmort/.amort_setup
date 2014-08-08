#!/bin/csh
#
# CAD user .cshrc for Linux
#
#--------------------------------------------------------------#

tty -s; if ("$status" != 0 ) exit

set history = 500		# History Depth

#set noclobber			# Protect existingfiles during a copy

set notify				# Notify when job completes

set nobeep				# No beep

limit coredumpsize 0	# Do not create core file

set filec				# Enable file completion

set autolist			# List choices when file completion fails

setenv SHELL tcsh

#-------------------------------------------------------------------
# Examples of different ways to set your prompt.  Choose one.
#-------------------------------------------------------------------
#set prompt = ">" # Example 1
#set prompt = "$USER|"`hostname`" <\!> " # Example 1
#set prompt = "\!> " # Set prompt	# Example 2 
#alias sp 'echo "$cwd" | sed "s:.*/\(.*/.*\):\1:"' # Example 3, Step #1
#set prompt = "#\! `hostname`_`sp`> "              # Example 3, Step #2
#set prompt = "`whoami`@`hostname` [\!]> "         # Example 4 

#-------------------------------------------------------------------
# Select Editor
#-------------------------------------------------------------------
setenv EDITOR vi
#setenv EDITOR xemacs


######  ALIASES     ############################
if ( -f ~/.aliases ) source ~/.aliases

# If ssh to linux box, you only get one hour if the following is not set.
set autologout=0

setenv CDS_LOG_VERSION sequential

source /design/micro/misc/bin/setup/production.csh
