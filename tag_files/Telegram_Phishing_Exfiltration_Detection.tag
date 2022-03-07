#------------------------------------------------------------------------------------------------------------------------
#                                                Telegram Phishing Exfiltration
#------------------------------------------------------------------------------------------------------------------------
# Detections made by the indicators in this tag file are associated with data exfiltration via Telegram, a social networking applicaion.
# Some detections from this tag file will indicate the presence of a possible Telegram function, but the kit doesn't use it.
# That's because Telegram is a feature, not a requirement. If there is no "api.telegram.org" match alongside any other tag, investigate the kit.
# Matches to known bot tokens indicate that the phishing kit has been previously seen and observed using Telegram, and is likely a rip or recycled install.
#------------------------------------------------------------------------------------------------------------------------
gro.margelet.ipa
api.telegram.org
#------------------------------------------------------------------------------------------------------------------------
$api = "
$api="
$apik =
$apik1 =
$api_key  = '
$api_token = "
$apiToken =
$bot = "{$url}{$tokens}"
$botName =
$BotTelegramToken
$botToken
$bottoken
$bot_url =
$botUrl = trim(file_get_contents(
$chat = "
$chat_id  = '
$chat_id = "
$chatId
$ChatID =
$chatid = "
$chatID = '
$chatId=
$chatID='
$chatId = trim(file_get_contents(
$ch = curl_init($METRI_TOKEN . '/sendMessage')
$config['bot_id'] =
$config_chat =
$config_token =
$id="
$key = "
$METRI_TOKEN
$nofezID = "
$nofezToken = "
$rs = base64_decode($api)
$t = "
$tanitatikaram
$telegrambot
$telegram_BOT_rahal =
$telegramchatid
$telegramLuffy
$telegram = trim(file_get_contents(
$TGBotToken_Ranger
$TGYourID_Ranger
$tiko
$tok="
$tok=$api
$token  = '
$token = "
$token = '
$Token ="
$token ='
$token ="
$Token="
$token='
$tokenlink
$tokens = 
$tokenss=
$user=$id
$user_ids =
$user_ids=array(
$yagmai
bot" . $token . "
"bot_url"		=>
"chat_id"		=>
"chat_id=
'chat_id' =>
'chat_id' => '
'chat_id'=>
const TELEGRAM_BOT_ADMIN_USERID =
const TELEGRAM_BOT_TOKEN =
define("TELEGRAM_CHAT_ID"
define("TELEGRAM_TOKEN"
define('TOKEN', '
define('USER_ID',
di_tahc?
file_get_contents("config/token.txt")
sendMessage?chat_id=
sendMessageT(
'tele_key' =>
#------------------------------------------------------------------------------------------------------------------------
