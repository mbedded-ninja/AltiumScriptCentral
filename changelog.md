vX.X.X
------

- Added "SG" as a recognised schematic designator for a spark gap.
- Moved the Changelog from README.rst into a new changelog.md file.

v25.1.0
-------

- Fixed manual merge conflicts and got rid of bug in IsPerfectlyNumeric() returning false for numbers such as "1.0".


========= ========== ===================================================================================================
Version   Date       Comment
========= ========== ===================================================================================================
v25.0.2.0 2015-09-28 Fixed up the variable names in 'DrawPolygon.vbs'.
v25.0.1.0 2015-09-25 Added more comments to 'Utils.vbs' module, in attempt to find out why locale where ',' is used as decimal separator would cause IsPerfectlyNumeric() to return false (see issue #204).
v25.0.0.0 2015-09-11 Added 'SwapSchematicDesignators' script which allows the user to quickly switch pairs of designators on schematic components.
v24.4.1.0 2015-08-10 Fixed bug where 'Delete Schematic Parameters' script doesn't seem to be able to work with schematic sheets that are not already open, closes #202.
v24.4.0.0 2015-08-06 Added check to make sure that all components have locked primitives as part of the PCB release process, closes #189.
v24.3.1.0 2015-08-06 Fixed issue where debug messages were being printed when current calculator is used, closes #201. Mentioned in README how via current in the 'CurrentCalculator.vbs' module uses worst-case k value (same for an internal track) when calculating max current, closes #193.
v24.3.0.0 2015-08-05 Added check for non-embedded images in 'PreReleaseChecks.vbs', closes #197.
v24.2.3.0 2015-08-05 Fixed bug where via tenting check doesn't work correctly when blind or buried vias are used (it reports buried ends of vias as not tented), closes #200.
v24.2.2.0 2015-08-05 Added 'RV' as a recognised designator (for varistors), closes #198. Renamed 'DESIGNATOR_CONNECTOR' and 'DESIGNATOR_JACK', closes #199. Added table of allowed designators to README.
v24.2.1.0 2015-06-10 Fixed bug where 'FormPreReleaseChecksCreate(sender)' is being called as soon as main form is setup, closes #196. Replaced 'ConfigInit()' function with 'const' variables that can be assigned at declaration, closes #195. Fixed bug where if project has no PCB file (e.g. a simulation project), then the script crashes in 'CheckWeHavePcbDocAccess.vbs' on the line 'If PcbBoard Is Nothing Then', closes #194.
v24.2.0.0 2015-05-19 Added via current calculating functionality to the 'CurrentCalculator.vbs' module, closes #192.
v24.1.0.0 2015-05-18 Added maximum aspect ratio calculation in 'Stats.vbs' module, closes #186.
v24.0.1.0 2015-05-18 Removed test.pas from the Altium project and repo. Added note about project file hierarchy in Altium Designer (or lack thereof). Fixed bug where the function which modifies the parameter visibility in the 'SchCompParamStamper' module does not notify the schematic server that the schematic has changed, closes #190. Added ability for 'SchCompParamStamper.vbs' module to also copy across the parameter location (relative to the component), closes #188.
v24.0.0.0 2015-05-14 Added a 'src/Schematcis/SchCompParamStamper.vbs' module which copies parameter visibility from a source to a destination schematic component, closes #187. Added relevant information to the README.
v23.0.0.0 2015-04-30 Added script that checks that PCB designators have the correct rotation, closes #104. Added relevant information to the README.
v22.7.2.0 2015-04-30 Fixed bug where 'DeleteSchematicParameters.vbs' did not inform Altium that schematics was modified, closes #184. Fixed bug where 'AddSpecialSchParams.vbs' did not inform Altium that schematic was modified, closes #183.
v22.7.1.0 2015-04-29 User data is now saved for CurrentCalculator.vbs script, closes #182. Fixed bug where SfFormat() in Util.vbs crashes if input number (dblInput) is 0, closes #181.
v22.7.0.0 2015-04-23 Added the ability to save user configuration data, closes #180. 'ResizeDesignators.vbs' now remembers the last used designator width and height.
v22.6.0.0 2015-04-14 Added 'Num. of Plated Slots' and 'Num. of Unplated Slots' to PCB statistics, closes #121.
v22.5.3.0 2015-04-14 Added check to make sure manf. part number is visible if part is an IC (i.e. has a 'U?' designator), closes #179.
v22.5.2.0 2015-04-14 Added 'MP?' as a valid designator for mechanical parts, closes #110.
v22.5.1.0 2015-01-24 Fixed bug 'Wrong number of arguments or invalid property assignment: 'StdErr'' in the 'PowerPortChecker.vbs' script, closes #177.
v22.5.0.0 2015-01-24 Updated the 'DeleteAllSchematicParameters.vbs' script to 'DeleteSchematicParameters.vbs', which now allows you to choose what parameters to delete and what schematics to delete parameters from. Known bug where it incorrectly reports the number of parameters deleted to be much larger than it actually deletes, due to it iterating through all the component parameters on the schematic itself. Added screenshot of this script to the README.
v22.4.5.0 2015-01-23 Fixed bug where 'Via Stamper' script didn't copy testpoint and soldermask settings of via, closes #176.
v22.4.4.0 2015-01-23 Added 'Num. Blind Vias' and 'Num. Buried Vias' statistics to the PCB stats window, closes #122.
v22.4.3.4 2015-01-22 Turned all file paths in README into 'code' formatted blocks, closes #175.
v22.4.3.3 2015-01-22 Added image for the 'Exit Active Command' script, closes #174.
v22.4.3.2 2015-01-22 Added images from the 'DrawPolygon' script to the README, closes #146.
v22.4.3.1 2015-01-22 Made note that pushing project parameters is redundant with an AD13 update, closes #99. Moved 'Checks' section into 'Project' section in README. Added info to the statistics section of the README. Added image of 'PCB Stats' script in action to the README.
v22.4.3.0 2015-01-22 Added exit button to main script, closes #15.
v22.4.2.0 2015-01-22 Changed all event handlers names from forms to the standard format 'ObjectCaller_EventName', closes #89.
v22.4.1.0 2015-01-22 Numbering schematics now notifies Altium that schematics need saving, closes #94.
v22.4.0.0 2015-01-16 Added script that exits any current command (just calls 'PCBServer.PostProcess'), closes #171. Added checks to all the user inputs in the 'DrawPolygon' script, closes #145.
v22.3.4.0 2015-01-16 Fixed up the Usage section in README. Renamed the main sub to start AltiumScriptCentral to 'RunAltiumScriptCentral'.
v22.3.3.0 2015-01-15 Fixed bug in 'CheckProjectCompiles.vbs' which prevented AltiumScriptCentral from starting.
v22.3.2.0 2015-01-14 Made 'CurrentCalculator' script ask user for another location if track was not selected, until ESC is pressed, closes #172.
v22.3.1.0 2015-01-14 Moved some declarations ('Dim') of variables from top of functions to just before where they are first used. Stopped the 'NumberSchematics.vbs' and 'PushProjectParametersToSchematics.vbs' script from locking up Altium if the script threw an exception. Added 'Option Explicit' to the 'PushProjectParametersToSchematics.vbs' script.
v22.3.0.0 2015-01-13 Added input checks to 'Resize Designators' script, closes #170.
v22.2.3.0 2015-01-13 Fixed bug which stopped script central from running. Added 'Option Epxlicit' to even more scripts.
v22.2.2.0 2015-01-08 Added the 'Option Explicit' keyword to more script files. More script files now use the enhances 'StdErr()' sub that passes in the variable 'ModuleName'. Updated image in README with a newer screenshot, closes #137.
v22.2.1.0 2014-12-23 Added a 'Find New Track' button to current calculator script, closes #169.
v22.2.0.0 2014-12-22 Added user changeable temp rise to the current calculator module, closes #168.
v22.1.1.0 2014-12-22 Fixed the formatting issues with the Current Calculator message box data (tabbing is incorrect), closes #154.
v22.1.0.0 2014-12-22 Added smallest and largest hole statistics to the PCB stats script, closes #163.
v22.0.0.0 2014-12-22 Started fixing bugs when schematics sheets were not open, scripts now open them by themselves. Added better error reporting to StdErr, module name is reported for every error. PCB Server is now started automatically. PCB documents are now opened automatically. Via tenting checker now reports total number of vias found, closes #167. Added script that can swap two PCB components, closes #166. Fixed 'Checking bottom dimension layer...Enum = 12Enum=12Enum=12...' bug, closes #165. Fixed the layout of the Pre-release Checks window (size needs adjusting), closes #156. Fixed the error 'ERROR: Could not retrieve 'C:\MCU.SchDoc'. Please compile project. ERROR: No sheet found. ERROR: No sheet found.' if any schematic sheet is not open when pre-release checks are run, closes #155.
v21.1.4.0 2014-11-26 Added 'Num. of Plated Holes' and 'Num. of Unplated Holes' to PCB statistics, closes #120.
v21.1.3.0 2014-11-26 Attempted a Delphi rewrite but gave up after I discovered that the context help isn't actually any better. Put test files in 'old/'.
v21.1.2.0 2014-11-26 Fixed bug where assignment error is thrown with pad variable in the 'Display PCB Stats' script, closes #161. Tidied up the formatting of the 'Display PCB Stats' script, closes #162.
v21.1.1.0 2014-11-26 Fixed bug where 'Delete Schematic Parameters' does not produce any output, closes #158. Fixed bug where 'Number Schematics' does not produce any output, closes #159. Made all button choices on the main script close the main script form, closes #160.
v21.1.0.0 2014-11-25 Created a new form for pre-release checks, and moved the 'stdout' and 'stderr' message boxes to this form, closes #148. Splitted tools section into sub-categories, closes #140. Removed 'via stamper' prompt, closes #152.
v21.0.0.1 2014-11-24 Added 'based on calculator found at...' in README for 'Current Calculator', closes #150. Rearranged README with better script module descriptions, closes #151.
v21.0.0.0 2014-11-24 Added a script which calculates the track/trace current for a given temperature rise, closes #149.
v20.4.1.0 2014-11-15 Removed images from repo, they are now stored in the GitHub issues, closes #138. Moved the integer checker function into it's own file, 'Utils/Utils.vbs'.
v20.4.0.0 2014-11-14 Added ability to specify polygon by length of one edge in the 'DrawPolygon' script, closes #147.
v20.3.0.0 2014-11-12 Converted the 'DrawHexagon' script into a 'DrawPolygon' script, closes #144.
v20.2.0.0 2014-11-12 Added the option for user to specify the radius to vertex or radius to edge in the 'DrawHexagon' script, closes #142.
v20.1.0.0 2014-11-12 Added ability for user to change the layer the hexagon is drawn on in the 'DrawHexagon' script, closes #143.
v20.0.0.0 2014-11-12 Added a 'Draw Hexagon' script, closes #139. Re-arranged scripts by alphabetical order in script project, closes #141.
v19.0.0.0 2014-11-11 Added via stamper script, closes #132. Added space between 'We have PCB access.' and 'PCB access checking complete.' in StdOut, closes #130. Deleted PlaceNettedVia.vbs, closes #133. Fixed bug where CheckTentedVias() crashes if there are no vias on PCB due to divide by 0, closes #134. Fixed image in README that was broken, closes #135.
v18.3.2.0 2014-11-07 Add ability to only change the size of designators which are currently the default Altium size with the 'Resize Designators' script, closes #129. Report how many designators were changed when 'Resize Designators' is run, closes #131.
v18.3.1.0 2014-11-07 Forgot to save script project file in previous commit.
v18.3.0.0 2014-11-07 Add ability to specify designator height and width for the 'Resize Designators' option, closes #128. Renamed 'src/Tools/ChangeDesignatorFontSize.vbs' to 'src/Tools/ResizeDesignators.vbs'. Tidied up table formatting in README.
v18.2.2.0 2014-11-05 Fixed 'Abstract Error' error message when trying to renumber pads, closes #127. Fixed 'Type Mismatch: Renumber Pads' error when trying to renumber pads, closes #126.
v18.2.1.0 2014-11-04 Tidied up code, improved error messages. Now pass PCB board variable into CheckLayers functions rather than using a global, closes #124. We now only run PCB checks if PCB file can be opened, closes #125. Added scroll bars to Status and Errors text windows, closes #91.
v18.2.0.0 2014-11-04 Added title block to Stats.vbs. Added board width and height to the PCB statistics window, closes #117. Added 'Num. of Diff Holes Sizes' statistic to the Stats window, closes #118. Renamed script project file to 'AltiumScriptCentral.PrjScr'. Coloured the StdErr text red, closes # #119.
v18.1.0.0 2014-11-03 Added minimum annular ring statistic to 'Display PCB Stats', closes #114. Added minimum track width statistic to 'Display PCB Stats', closes #115. Added 'Num. Copper Tracks' statistic to 'Display PCB Stats', closes #116.
v18.0.0.0 2014-11-03 Added the ability to measure and display PCB stats that would be useful for providing to the manufacturer, closes #112. Added dummyVar argument to all functions that are not designed to be called manually, so that they don't display in the 'Run Scripts' dialog of Altium, closes #113.
v17.0.1.1 2014-11-03 Renamed repo name to 'AltiumScriptCentral', closes #111.
v17.0.1.0 2013-12-16 Fixed issue with 'Add Special Schematic Parameters' button not working.
v17.0.0.0 2013-10-22 Added 'CheckComponentLinks.vbs' script, which loads up the edit component links window so that you can make sure there are no missing component links. Main form calls this script when you run PCB project checks.
v16.0.0.0 2013-10-21 Added 'AddSpecialSchParams.vbs' script, which gives you the option of adding various special parameters to every schematic in the active project. Good for adding parameters which will then automatically fill in info in the title blocks (schematic template files). Added button to load this script in the tools section of the main form. Added relevant info to README.
v15.0.0.0 2013-10-21 Added 'DeleteAllSchematicParamters.vbs' script, after found it was impossible to manually delete some schematic parameters that had been previously added with a script. Also useful for getting rid of all the default parameters Altium adds. Added button for this to tools section on main form. Added relevant info to README.
v14.0.0.5 2013-10-03 Added height and alignment parameters to image in README.
v14.0.0.4 2013-10-03 Updated broken image link in README.
v14.0.0.3 2013-10-03 Updated broken image link in README.
v14.0.0.2 2013-10-03 Updated broken image link in README.
v14.0.0.1 2013-10-03 Added screenshot of Altium Script Central in action to /images/. Added image to README.
v14.0.0.0 2013-09-25 Added rotate designators script. Added button to main script form to rotate designators.
v13.1.8.0 2013-09-23 Changed README title to 'Altium-Script-Central'.
v13.1.7.0 2013-09-23 Corrected and updated file lists in the README.
v13.1.6.0 2013-09-23 Added 'm' (milli-ohms) to accepted resistance units in the resistor validator script.
v13.1.5.0 2013-09-17 Added keepouts (which encompasses a variety of objects which can be selected to act as a keepout) to the list of allowed objects on the top and bottom mechanical body PCB layers.
v13.1.4.0 2013-09-11 Text orientation checker now reports back that exact text that is not correctly orientated and the layer it is on.
v13.1.3.0 2013-09-11 Made parameter push script and number schematics script compile project before pushing so that all schematic documents are found. Sped up both pushing project parameters and numbering schematics by commenting calls to SchServer.RobotManager.SendMessage(). Improved the error message if a schematic sheet couldn't be retrieved. Added GraphicallyInvalidate call to certain scripts to force redraw.
v13.1.2.0 2013-09-10 Added 'XC' (crystal) to list of valid component designators.
v13.1.1.0 2013-09-09 Added all unused layers to the layer variable set in Config.vbs.
v13.1.0.0 2013-09-09 Added unused PCB layer function in CheckLayers.vbs. Reports errors if any objects are found on layers which are meant to be unused (as defined in Config.vbs).
v13.0.0.0 2013-09-09 Added script that numbers schematics (NumberSchematics.vbs). Script add the schematic sheet number and total sheet count to each schematic, which can be automatically displayed in the title block. ConfigInit() is now called on main form load, not from ButRunChecks().
v12.1.1.0 2013-09-09 Fixed component validator bug which was returning false errors (nothing reported to StdErr). Fixed 'Push Project Parameters To Schematics' button which wasn't working.
v12.1.0.0 2013-09-06 Now prints designator text 'xxx' with 'Designator xxx does not follow valid designator syntax' error. ComponentValidator.vbs now supports the designator 'E' (antennas), 'W' (cable/wire), 'PV' (solar panel) and 'BT' (battery). Made IgnoreCase equal False for regex objects. Fixed bug where no component violation errors where reported even though some resistors didn't show resistance.
v12.0.3.0 2013-09-06 Fixed 'Not a PCB or footprint loaded' bug on main script run without PCB file open. Added parenthesis around user strings reported in StdOut and StdErr. Added test points (TP) as a valid component designator for ComponentValidator.vbs. Added anchors for resistance and capacitance regex.
v12.0.2.0 2013-09-06 Renamed main script form to 'Script Central'. Added 'Tools' label to main script form, and made run checks button larger than the tool buttons.
v12.0.1.0 2013-09-05 Fixed bug with RenumberPads, no longer crashes on exit. Added button on main form to call resize designator script.
v12.0.0.0 2013-09-04 Added RenumberPads script, with link from the main form. Currently crashes on RenumberPads exit.
v11.1.0.0 2013-09-04 Each StdErr message is now printed on it's own line. Made final script error message go to StdOut, detailed ones goes to StdErr. Added recognition for fuse (F), fuse holder (XF) and jack (J) designators. Updated .gitignore to ignore '__Previews' folders created by Altium.
v11.0.2.0 2013-09-03 Added support for dates that use the syntax yyyy-mm-dd in CheckNameVersionDate.vbs.
v11.0.1.0 2013-09-03 Added spaces between component validator error messages. Corrected component validator error messages that reported wrong parameter. Renamed to PowerPortChecker.vbs. PowerPortChecker now reports sheet name and port name for any violating ports.
v11.0.0.0 2013-09-03 Added inductor validator. Fixed incorrect return statements in validator functions. Fixed bug where script would crash if regex did not find a designator match.
v10.2.1.0 2013-09-03 Moved designator identifiers into config file. Renamed resistor and capacitor validators, and they are now called from ComponentValidator.vbs.
v10.2.0.0 2013-09-02 Collected component validating scripts and put in new folder 'src/Checks/ComponentValidators'. Added parent script for component validation, called ComponentValidator.vbs. Added a number of valid component designators.
v10.1.1.0 2013-09-02 Capacitor check script now reports back violating capacitors. Added start-of-string anchors to resistor and capacitor designator finding regex to fix bug where designator XC1 was being matched as a capacitor.
v10.1.0.1 2013-08-24 Added info about CheckResShowResistance.vbs to README.
v10.1.0.0 2013-08-23 Supplier part number visible violations now report component designator and part number, so you can find the violation and fix it.
v10.0.1.0 2013-08-23 Added .gitignore with path to ignore History/ folder (generated by Altium when saving script project).
v10.0.0.1 2013-08-23 Fixed Changelog ReStructuredText syntax problem which was causing the table to not be displayed in README. Problem was with the first column of the table delimiter missing an equals character after extending to accommodate for v10.0.0.0.
v10.0.0.0 2013-08-23 Added script that makes sure all resistors on the schematic display their resistance (CheckResShowResistance()). Fixed StdOut formatting bugs which occurred when scripts terminated early.
v9.0.0.2  2013-08-22 Fixed programming language from 'Delphi' to 'VBScript' in README.
v9.0.0.1  2013-08-22 Added info to README for missing scripts.
v9.0.0.0  2013-08-22 Added script that makes sure PCB text has the correct orientation (CheckPcbTextHasCorrectOrientation()). Text on the top overlay must not be mirrored, text on the bottom overlay must be mirrored.
v8.0.0.0  2013-08-22 Added script that checks that capacitors on schematic are displaying both capacitance and voltage (CheckCapsShowCapacitanceAndVoltage.vbs). Added 'ERROR:' to the start of error messages in CheckProjectCompiles.vbs.
v7.1.0.0  2013-08-22 Added more PCB layer constants to Config.vbs. Added check for top and bottom dimension layers to CheckLayers.vbs.
v7.0.1.0  2013-08-21 Re-arranged folder structure. Added ./src/Tools folder, put all tool scripts in this. Renamed ./src/PrereleaseChecks folder to just ./src/Checks, and moved MainScript.vbs into ./src folder, and renamed it to just Main.vbs. Updated script project file with new paths. Added folders to README under appropriate sections. Added core files section to README.
v7.0.0.2  2013-08-20 Fixing issue with description tables in README. Replaced all tab characters with spaces.
v7.0.0.1  2013-08-20 Tabulated the script file names and descriptions in the README. Removed unused limitations section. Added information about MainScript.vbs to README. Added info about CheckNameVerisonDate.vbs to README.
v7.0.0.0  2013-08-20 Added PushProjectParametersToSchematics.vbs, which copies all project parameters to the schematic documents, which can be useful for automatically filling in title block information. Updated README accordingly. Added button for this on main script form.
v6.1.0.0  2013-08-20 Renamed CheckDate.vbs to CheckNameVerisonDate.vbs. Made script now check for version number also (in the format v2.3).
v6.0.0.0  2013-08-20 Date checker script for PCB added. Uses regex built into VBScript.
v5.1.0.0  2013-08-20 Added config file, and added a few variables to it. Fixed tented via bug using manual/auto parameter, now uses expansion value. Will not work if expansion overridden manually.
v5.0.0.0  2013-08-20 Added check for number of tented vias. If ratio of tented vias is not greater than 0.9, script assumes you have forgotten to tent them. Added relevant info to README. Changed .pas extensions in README to .vbs, and added missing ones.
v4.0.0.0  2013-08-19 Added check for project compilation (before any other checks are done). Added StdOut() and StdErr() functions for scripts to use, stopped them from directly writing to the memo object. Updated GUI with errors text output.
v3.1.3.0  2013-08-19 Converted ChangeDesignatorFontSize, PlaceNettedVia from Delphi to VB script (now .vbs).
v3.1.2.0  2013-08-19 Converted CheckNoSupplierPartNumShown from Delphi to VB script (now .vbs). Deleted old MainForm.pas.
v3.1.1.0  2013-08-19 Converted CheckPowerPortOrientation from Delphi to VB script (now .vbs).
v3.1.0.0  2013-08-16 Converted layer script to Visual Basic script. Plan is to convert all scripts eventually.
v3.0.0.0  2013-08-16 Added layer check script, which checks that PCB layers have the correct objects on them.
v2.0.0.0  2013-08-15 Added pre-release checks folder, with port symbols and supplier part number checks. Added main form to run these from. Added relevant sections to the README. Added script project to root directory.
v1.1.0.0  2013-08-14 Added PlaceNettedVia.pas. Changed name to AltiumScripts (repo will now hold all scripts). Added basic usage and updated 'External Dependencies' in README. Moves scripts into the src/ directory.
v1.0.0.0  2013-08-08 Initial commit. Script written and tested (it works). 
========= ========== ===================================================================================================