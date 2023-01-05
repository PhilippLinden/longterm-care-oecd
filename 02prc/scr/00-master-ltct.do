/*==============================================================================
File name: 		00-master-ltct.do
Task:			Longterm care typology - Master file
Project:		Longterm care typology
Version:		Stata 15
Author:			Mareike Arianns/Philipp Linden
Last update:	2022-05-01
==============================================================================*/

/*------------------------------------------------------------------------------ 
Content:

#1 Installs ado files used in the analysis
#2 Stata Settings
#3 Defines globals and set up folder structure
#4 Specifies order and task of code files and runs them
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
Notes:

------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
#1 Install ado files                                                         
------------------------------------------------------------------------------*/

*ssc install blindschemes, all replace												// Blind and colorblind scheme for graphs
*ssc install [ado], all replace													// [DESCRIBE]

/*------------------------------------------------------------------------------
#2 Stata settings
------------------------------------------------------------------------------*/

version 15	          // Stata version control
clear all             // clear memory
macro drop _all       // delete all macros
set linesize 82       // result window has room for 82 chars in one line
set more off, perm    // prevents pause in results window
set scheme plotplain  // sets color scheme for graphs
set maxvar 32767      // size of data matrix

/*------------------------------------------------------------------------------
#3 Define globals and set up folder structure
------------------------------------------------------------------------------*/

* working directory 

* -> Retrieve c(username) by typing disp "`c(username)'" in command line

if "`c(username)'" == "Linden" {
	global wdir "INSERT FILE PATH"
}

* sub-folders

global rdta		"$wdir\01src\rdta"			// raw data
global pdta		"$wdir\02prc\pdta"			// processed data
global code		"$wdir\02prc\scr"			// code files
global fig		"$wdir\03doc\fig"			// figures
global text		"$wdir\03doc\tab"			// logfiles + tables
global cbook	"$wdir\03doc\var"			// codebooks


/*------------------------------------------------------------------------------
#4 Specify name, task and sequence of code files to run
------------------------------------------------------------------------------*/

/// ------ Project-Do-Files *

*do "[do-file]"    				// [DESCRIPTION]

*==============================================================================*

