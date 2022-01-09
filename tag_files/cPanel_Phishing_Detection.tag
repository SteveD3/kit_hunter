#------------------------------------------------------------------------------------------------------------------------
#                                                cPanel PHISHING KIT
#------------------------------------------------------------------------------------------------------------------------
# Detections made by the indicators in this tag file are associated with known cPanel phishing kits.
# cPanel and WHM are the backend applicaions used by shared, dedicated, and reseller webhosting.
# Criminals target it mainly for access to webhosting and webmail. Credential stuffing also plays a role in attacks on these platforms.
#------------------------------------------------------------------------------------------------------------------------
webmaiil.website
buycpanel.com
cpanel.net
$headers = "From: ||FM BOSS||<Noreply@cPANEL.com>
$mail->Port = 587
:2082
:2083
:2086
:2087
:2095
:2096
&#87;&#101;&#98;&#109;&#97;&#105;&#108;&#32;&#76;&#111;&#103;&#105;&#110;
check_result.has_cpanel_loader
CP Sign Details
From: Gemini
http://'.$domain.'/webmail
cPanel
#------------------------------------------------------------------------------------------------------------------------
