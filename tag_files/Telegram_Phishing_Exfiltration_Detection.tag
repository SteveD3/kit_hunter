#------------------------------------------------------------------------------------------------------------------------
#                                                Telegram Phishing Exfiltration
#------------------------------------------------------------------------------------------------------------------------
# Detections made by the indicators in this tag file are associated with data exfiltration via Telegram, a social networking applicaion.
# Some detections from this tag file will indicate the presence of a possible Telegram function, but the kit doesn't use it.
# That's because Telegram is a feature, not a requirement. If there is no "api.telegram.org" match alongside any other tag, investigate the kit.
# Matches to known bot tokens indicate that the phishing kit has been previously seen and observed using Telegram, and is likely a rip or recycled install.
#------------------------------------------------------------------------------------------------------------------------
#                                                Associated Kit URLs
#------------------------------------------------------------------------------------------------------------------------
gro.margelet.ipa
api.telegram.org
#------------------------------------------------------------------------------------------------------------------------
#                                                Associated Kit Functions
#------------------------------------------------------------------------------------------------------------------------
$botToken
bot" . $token . "
$TGBotToken_Ranger
$TGYourID_Ranger
$token = '
$token = "
$tiko
$tok=$api
sendMessage?chat_id=
di_tahc?
$chat_id  = '
$chat_id = "
$chatID = '
$chatId=
$chatID='
'chat_id' => '
'chat_id'=>'
"chat_id=
$chatId
$chatId = trim(file_get_contents(
$botUrl = trim(file_get_contents(
$api_key  = '
define("TELEGRAM_TOKEN"
define("TELEGRAM_CHAT_ID"
$METRI_TOKEN =
$ch = curl_init($METRI_TOKEN . '/sendMessage')
$user_ids=array(
$id="
$api="
$user=$id
$tanitatikaram
$telegrambot
$telegramchatid
#------------------------------------------------------------------------------------------------------------------------
#                                                Z118 Known Bot Tokens (original/reverse)
#------------------------------------------------------------------------------------------------------------------------
AAF-CjwhSE79PHdKZXl8sfaGMitFNwRkxhI
IhxkRwNFtiMGafs8lXZKdHP97EShwjC-FAA
#------------------------------------------------------------------------------------------------------------------------
#                                                Known Bot Tokens
#------------------------------------------------------------------------------------------------------------------------
AAE0wAOAhU1wANe8diozUQ-pFYNCvbvi17Y
AAE1d9bDwgV9Wtfwv_kPrZFNoccFd56Z_G8
AAE2c4rgMbnm-mUX1g7WevDPxa2Fccikbas
AAE5eVjGA9joeXGZSB1Po3Hsd4e6l2KnBPQ
AAE63IuWPegXy9MqXFEAZPuaXEn8BKyvHTo
AAE8zOumFJd5DQUm7Q__HonB8z3SIu6yyas
AAEA3mnXnFKSO0hncWCTL7erok72-D1yxZ0
AAEANRt7wXQH4bpJ4GZ1u1A1sHkhMXGcESI
AAEbxSXQjFX1LdEi7zJ66aZxCOVHbS7EDbg
AAEctkFCOj-EWmHy7hHvRhx2ldqprpxjEgw
AAEDblVYzoTrwl0td5BtIL4eNwUiyuBkqhQ
AAEE74JjEoyUA-ohDEtVHrpbdpq-7H9LfbI
AAEEcc55mkAqzVJlzCYgyAF-I_HjAyJTVqc
AAEiw8LtzXkXy_7pnXTB52mv0Qm9KxEnA2o
AAEL3N9KxN0OprBldOYeMLnxPqs1EZl6k6g
AAEobcsClhzetZgd81K53rwwahqB4Pkkx5k
AAEPhLmVw-bOQmdf73glLgRV3GQCsg9iA2U
AAEQJuuVIhQYvqEc5h1dODAT-hRpYyqdAgE
AAEQReb-YwvBrNFpvCy7Z62sRwh_VqMsakM
AAEQWKcSWR_Iz03cv3v8AONYtkNZulQmOSQ
AAERM9r8WxLRyCM300Cnlnip7-yAahZoBOQ
AAFcQbzvJvoIayEBMa0yvgjJQx_POrumewU
AAFd1QuJBThRi1VpZApoowEt20RUBDEA3-k
AAFEN7vBCpeb-3rYeSp-8Lk7UVblaSkcMEw
AAFhKMk9eWJNbL1HCmhx5BaRp9U8rsaGSi
AAFLj_HzDC1Qpe-w2BrXyC8QQgY025VfDZI
AAFpTRcYaCfWv-Jd9FvBOtuaYuwNopVsKuk
AAFQizFWV8HuZmQ9w4Egvy-R50L7IFJ68Ew
AAFqWPaIsgdpoAz3d7OvaPO-SqDE9-08kQQ
AAFRKJHgjAlBjKvfS1wnl6ot5M4BgWbqMyY
AAFS1XMK43h8NSqjeOf1hfohMKYahnnRhhM
AAFu5YIF3igXRPsrpIFXhqgJpQY8uoEYXCw
AAFua_iGdjIzxHP0BsgU4FY9Bulopc0NTOw
AAFUpqcX-CMsK8RdswTRgL_75MoUJA8wEFM
AAFw215sGBREx8HEKvpNB5NAhETHLxtH23s
AAFy-N4rHj_0-ocLFMy9FpOG9HB9bFPeQA8
AAFyqFyFLGnbSFgJGIOsVpUAIpeK9OvXpOo
AAG317cQXA5Yees9iAn-osBJ8S3VbhMBofs
AAGA9kbx0RZsK2Q8XNTPPgATcFIDsi_jyRY
AAGBZx5w5VWuJYhUYM2r7kCFcmhfMSNXeGA
AAGGu4p-kTSKlEqF2lDZ7Cfn9EdQKuTXSHI
AAGh77TlJBi1Vsw84KeoK5rppj7WBElArAg
AAGIGQFqpeKYa9agNVlfhoR_x-o5JY-bo-c
AAGkmyd8Muf3HZ-l1YEyvoilf8vX_jzl5-o
AAGMS5L7YX8TNAgtQq4f7OHiG49cFzPrnZg
AAGNS_8vrC7CZ8CWR1pWZqi6JMLcQz_alfU
AAGOyJ1nOucOiLwpr6OIpddkHPav_BnPfkM
AAGtqwBQ19Ub4N2g6SfVo9taNnC3ZEygR5c
AAGV1GzOXPZEk-_g8vUOP-GnM6U-ndRAWic
AAGxTO26o_QLABe3wEmqY5-OlPGZF_UMki8
AAGxWzxR4c9pMFtwq9IMSc22fE8b-sVeX9c
AAH09536IQHy2SF4uyLD4KUA3ONaJVXU7K0
AAH1cggYVpH7MbShKNi5GVIUje3CUjTW8j8
AAH76tdx_EkCOYgRG3rUr_XrbaTN8OAQb6Q
AAH7SAMyG6pAhMzNigt5mrUDps18NzXcUD0
AAH9pQRbJX1Ml1_ZMoRp_EXkdF7JpN8OOBA
AAHBIUl4yZ6a0--aQGcIou1UkmI-NUw6LHI
AAHbvd_IALdC610tLGzl-xgtMJnEHRq9dK8
AAHE4NKlVM__wFBZu553cZMfzFAqic-cf00
AAHhFn1cTbNMAbg43b2cu7WxZh97DEflSfA
AAHhlZvrHYT7MpY-F3fsNC7yytUKaby72xI
AAHi-apqZxk597pCekqXNxgQTzJtVysiH2E
AAHrBhLklGA2Dk7vuO0Acq5GNBtbhusqrjA
AAHu7pzbt0AyIJEzdBFI-7AKGLd_YmXAzhM
AAHVmffcdPORa97th5bsv_hPBYbu18fuCoo
AAHX59qVR4u83u9wfnpOb7kF2ZSW0f6myrA
AAHwRbzSCP3IkZai_dK5HtkHli_OZOSoX3o