#------------------------------------------------------------------------------------------------------------------------
# The items in this tag file are associated with security elements used by phishing kits. Detections from this tag file
# are clear indicators that something is amiss, as many of the elements don't have typical uscases in general website development.
# As such, if somehting is detected, it is best to investigate manually.
#------------------------------------------------------------------------------------------------------------------------
#                                                Phishing Kit Security Indicators
#------------------------------------------------------------------------------------------------------------------------
$bad_words =
$blocked_words = array(
$bannedIP
$badkeys = array(
function match($badkeys, $passwd)
$ip = getUserIPszz()
$warn =
$warnsubj =
allantibot
anti1
anti2
anti3
anti4
anti5
anti6
anti7
anti8
antibot.pw
antibots
antibot_wasChecked
BAN USER BY IP
blocker.php
blockers.php
BOT - BotDetector
BOT - CrawlerDetect
calyxinstitute
CrawlerDetect
cyveillance
dreamhost
feedfetcher
foreach ($bannedIP as $ip) {
foreach ($blocked_words as $word) {
foreach ($Bot as $BotType) {
fucker.php
HTTrack
ia_archiver
Jaybizzle
K3map v.2.1
Kraken
mon.itor.us
NETCRAFT
p3pwgdsn
PHISHTANK
PycURL
ReferralSpamDetect
safebrowsing-cache
softlayer
spyeyes
tor-exit
#------------------------------------------------------------------------------------------------------------------------
#                                                BOTEYE Setup (bot scripts)
#------------------------------------------------------------------------------------------------------------------------
$soker=rand(0000000, 9999999)
$sokera=rand(0000000, 9999999)
$saker=md5($soker)
$sakera=md5($sokera)
$rine=rand(000000, 9999999)
$rine = sha1($rine)
BOTeye v1.9
#------------------------------------------------------------------------------------------------------------------------
#                                                SNIPER BOT DETECTION
#------------------------------------------------------------------------------------------------------------------------
SNIPER BOT DETECTION
class Sniper {
$Sniper = new Sniper;
$Sniper->apikey($configs['killbot_key'])
$standardIP = $Sniper->get_client_ip()
if($Sniper->check() == true){
