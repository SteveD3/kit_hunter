#------------------------------------------------------------------------------------------------------------------------
#                                                BT PHISHING KIT
#------------------------------------------------------------------------------------------------------------------------
# Detections made by the indicators in this tag file are associated with known BT (BT Broadband) phishing kits.
#------------------------------------------------------------------------------------------------------------------------
.bt.com
.custhelp.com
bt.co.uk
btinternet.com
var customView = 'mybt'
if (customView === "btmail")
var pageType='MyBT Login Page'
$headers = "From: manBt<lionm@Simba>"
BT ID
BT Yahoo! Mail
My BT App
Log in to My BT
#------------------------------------------------------------------------------------------------------------------------
