#------------------------------------------------------------------------------------------------------------------------
#                                                Generic Webmail PHISHING KIT Detection
#------------------------------------------------------------------------------------------------------------------------
# The files detected by tags in this list have been connected to webmail-based phishing attacks, which targets 
# a number of consumer and corporate brands. Detections should be immediately investigated.
#------------------------------------------------------------------------------------------------------------------------
#                                                Associated Kit URLs
#------------------------------------------------------------------------------------------------------------------------
263.net
263xmail.com
.avis.
cph3.one.com
freebit.com
group.kcn.jp
kcn-kyoto.jp
mailhostbox.com
mail.oneoffice.jp
mx00.mail.com
mx01.mail.com
mxmail.netease.com
netsolmail.net
rzone.de
webmail.incl.ne.jp
webmail.ogaki-tv.ne.jp
wmail.cssv.jp
wm.bai.ne.jp
wm.freebit.net
yournet.freebit.net
#------------------------------------------------------------------------------------------------------------------------
#                                                Associated Kit Functions
#------------------------------------------------------------------------------------------------------------------------
$domain = 'Japan Mixed'
$message .= "MX Record
$target_pri = min(array_column($results, "pri"))
id="rcmloginpwd"
id="rcmloginurl"
id="rcmloginuser"
#------------------------------------------------------------------------------------------------------------------------
#                                                Misc. Items and Email Prefixes
#------------------------------------------------------------------------------------------------------------------------
>avis Web
>C's SERVER Web-Mail
Page saved with SingleFile
UbiqMail
Welcome to Webmail
