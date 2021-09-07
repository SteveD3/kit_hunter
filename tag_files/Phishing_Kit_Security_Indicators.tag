#------------------------------------------------------------------------------------------------------------------------
# The items in this tag file are associated with security elements used by phishing kits. Detections from this tag file
# are clear indicators that something is amiss, as many of the elements don't have typical uscases in general website development.
# As such, if somehting is detected, it is best to investigate manually.
#------------------------------------------------------------------------------------------------------------------------
#                                                Phishing Kit Security Indicators
#------------------------------------------------------------------------------------------------------------------------
allantibot
antibots
BAN USER BY IP
blocker.php
blockers.php
calyxinstitute
CrawlerDetect
cyveillance
dreamhost
feedfetcher
GODADDY
HTTrack
ia_archiver
Jaybizzle
Kraken
mon.itor.us
NETCRAFT
p3pwgdsn
PycURL
PHISHTANK
RACKSPACE
ReferralSpamDetect
safebrowsing-cache
softlayer
spyeyes
tor-exit
Yahoo! Slurp
YahooSeeker
$warnsubj =
$warn =
$bad_words =
$blocked_words = array(
foreach ($blocked_words as $word) {
foreach ($bannedIP as $ip) {
foreach ($Bot as $BotType) {