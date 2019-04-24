@echo off
title Configuration Management Properties Actions Script
set /p choice=Are you sure you want to continue? [Y/N]
if /I '%choice%' == 'N' exit
if /I '%choice%' == 'Y' echo **********************************************************
echo *********************
echo Updating Group Policy
echo ~~~~~~~~~~~~~~~~~~~~~
gpupdate /force | findstr "successfully"
echo ***************************************
echo Application Deployment Evaluation Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000121}" /NOINTERACTIVE | findstr "Method execution successful"
echo *******************************
echo Discovery Data Collection Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000003}" /NOINTERACTIVE | findstr "Method execution successful"
echo *********************
echo File Collection Cycle
echo ~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000010}" /NOINTERACTIVE | findstr "Method execution successful"
echo ************************
echo Hardware Inventory Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000001}" /NOINTERACTIVE | findstr "Method execution successful"
echo ******************************
echo Machine Policy Retrieval Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000021}" /NOINTERACTIVE | findstr "Method execution successful"
echo *******************************
echo Machine Policy Evaluation Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000022}" /NOINTERACTIVE | findstr "Method execution successful"
echo ************************
echo Software Inventory Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000002}" /NOINTERACTIVE | findstr "Method execution successful"
echo ************************************
echo Software Metering Usage Report Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000031}" /NOINTERACTIVE | findstr "Method execution successful"
echo *********************************************
echo Software Updates Assignments Evaluation Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000108}" /NOINTERACTIVE | findstr "Method execution successful"
echo **************************
echo Software Update Scan Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000113}" /NOINTERACTIVE | findstr "Method execution successful"
echo *********************
echo State Message Refresh
echo ~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000111}" /NOINTERACTIVE | findstr "Method execution successful"
echo ***************************
echo User policy Retrieval Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000026}" /NOINTERACTIVE | findstr "Method execution successful"
echo ****************************
echo User Policy Evaluation Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000027}" /NOINTERACTIVE | findstr "Method execution successful"
echo *******************************************
echo Windows Installers Source List update Cycle
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WMIC /namespace:\\root\ccm path sms_client CALL TriggerSchedule "{00000000-0000-0000-0000-000000000032}" /NOINTERACTIVE | findstr "Method execution successful"
