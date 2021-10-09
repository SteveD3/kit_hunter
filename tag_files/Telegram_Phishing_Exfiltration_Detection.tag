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
$api="
$api_key  = '
$botToken
$botUrl = trim(file_get_contents(
$chat = "
$chat_id  = '
$chat_id = "
$chatId
$chatID = '
$chatId=
$chatID='
$chatId = trim(file_get_contents(
$ch = curl_init($METRI_TOKEN . '/sendMessage')
$id="
$METRI_TOKEN =
$tanitatikaram
$telegrambot
$telegramchatid
$TGBotToken_Ranger
$TGYourID_Ranger
$tiko
$tok=$api
$token = "
$token = '
$Token="
$token='
$user=$id
$user_ids=array(
$yagmai
bot" . $token . "
"chat_id=
'chat_id' =>
'chat_id' => '
'chat_id'=>
define("TELEGRAM_CHAT_ID"
define("TELEGRAM_TOKEN"
di_tahc?
sendMessage?chat_id=
sendMessageT(
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
AAE7Dkh7s7OFspoaTCGrst1z7O8Pr3YRxfs
AAE_7SR82q8WNfutEkrlmHt6ALj1rjPqVoM
AAE8zOumFJd5DQUm7Q__HonB8z3SIu6yyas
AAEA3mnXnFKSO0hncWCTL7erok72-D1yxZ0
AAEANRt7wXQH4bpJ4GZ1u1A1sHkhMXGcESI
AAEBvTp0DeFlPQlXOnRC6CTv7K2RJTbIJCU
AAEbxSXQjFX1LdEi7zJ66aZxCOVHbS7EDbg
AAEctkFCOj-EWmHy7hHvRhx2ldqprpxjEgw
AAEDblVYzoTrwl0td5BtIL4eNwUiyuBkqhQ
AAEE74JjEoyUA-ohDEtVHrpbdpq-7H9LfbI
AAEEcc55mkAqzVJlzCYgyAF-I_HjAyJTVqc
AAEhUEh2zAOH_tN4pw_XLKY1iP9E47FpQCo
AAEiw8LtzXkXy_7pnXTB52mv0Qm9KxEnA2o
AAEKtujB6ubGrN2haH8-FSkoLmuYqFsoqes
AAEL3N9KxN0OprBldOYeMLnxPqs1EZl6k6g
AAEn02yoU5AkuvRdXGQnkHxmYixCmLDnU_0
AAEobcsClhzetZgd81K53rwwahqB4Pkkx5k
AAEPhLmVw-bOQmdf73glLgRV3GQCsg9iA2U
AAEQJuuVIhQYvqEc5h1dODAT-hRpYyqdAgE
AAEQP9-5i03mCpJY-u4n8RsMAfGv9WgtBuU
AAEQReb-YwvBrNFpvCy7Z62sRwh_VqMsakM
AAEQWKcSWR_Iz03cv3v8AONYtkNZulQmOSQ
AAERM9r8WxLRyCM300Cnlnip7-yAahZoBOQ
AAETaIXqRY7_WhUt9sarlxIPZRG40sDbV44
AAEvVCU3n78EmocvDQ6xq_B_RKcp3l7n9ew
AAF0NbXbrpN2uRG7mvr5VcW4Hl9-iaTc3TY
AAFA4RqL6BXoRlkopHG6P6E4jBfHU7irgRY
AAFA56zUFOON6b2xm2kMuKIgO4TnDyUZd_E
AAFcQbzvJvoIayEBMa0yvgjJQx_POrumewU
AAFd1QuJBThRi1VpZApoowEt20RUBDEA3-k
AAFEN7vBCpeb-3rYeSp-8Lk7UVblaSkcMEw
AAFfik37kAqT4ZCwil5uMd4087f8Bles3pA
AAFhKMk9eWJNbL1HCmhx5BaRp9U8rsaGSi
AAFiKY4YWXUt0JG-RSINPTSHuhRjiOexsis
AAFLj_HzDC1Qpe-w2BrXyC8QQgY025VfDZI
AAFOOjQsF-b3CKWjUjmwBZPrK1FnNPDhBuo
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
AAG2kodxwsEeLGnBFMIAIHgF2iI3IEumY5g
AAG317cQXA5Yees9iAn-osBJ8S3VbhMBofs
AAG5EzlPMuHsCGpiA8lmyqaxfFqldTLLXxQ
AAG95cnz4rwA7a4n00h6-MhofJ7Ism4xqIY
AAGA9kbx0RZsK2Q8XNTPPgATcFIDsi_jyRY
AAGBZx5w5VWuJYhUYM2r7kCFcmhfMSNXeGA
AAGDC4r_nrE_R7CVk-1uUv93CgQ5BOxhM90
AAGdmuXrm9X2kYAaiQUjHwET0lacswOcmMg
AAGdWL1MrlFJtdBjy5tKJ9HCaDuTGAq2ls8
AAGFnb6w2lON2W2vg8-XHgDtQtxpVRJWd84
AAGGu4p-kTSKlEqF2lDZ7Cfn9EdQKuTXSHI
AAGh77TlJBi1Vsw84KeoK5rppj7WBElArAg
AAGIGQFqpeKYa9agNVlfhoR_x-o5JY-bo-c
AAGimT52LQ7X1f3uFJOza8Zjk_z1AXTjg5c
AAGjK1wO7sRCi4D7NBSDVk-a0C4fl2jnvWA
AAGkmyd8Muf3HZ-l1YEyvoilf8vX_jzl5-o
AAGMS5L7YX8TNAgtQq4f7OHiG49cFzPrnZg
AAGNS_8vrC7CZ8CWR1pWZqi6JMLcQz_alfU
AAGOyJ1nOucOiLwpr6OIpddkHPav_BnPfkM
AAGQY2rq7uaLpmYiQMPOEOLyjQC5mat-KPM
AAGrGwLJqqBY8AlTS6IK9RrXwf2Ym5KJGEg
AAGrLmM6PXWXi5X8HKBxJL_A1B3dh2b3550
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
AAHHE7dmIn3HyT4j_Lst2Ywwgvf2WM56VyQ
AAHhFn1cTbNMAbg43b2cu7WxZh97DEflSfA
AAHhlZvrHYT7MpY-F3fsNC7yytUKaby72xI
AAHi-apqZxk597pCekqXNxgQTzJtVysiH2E
AAHJOnK_MGe_aDVNQ1gcA2mVzZhD8gCLYJg
AAHlKUL5Jy8lJz7z0q5roKW0Vrc_D-bUXA4
AAHOSYskqtUV5oWxhPzDO5q9cwBAEbvWI7g
AAHq1njqglnbfMujnsrhQcC4XuNUVM4qy9U
AAHrBhLklGA2Dk7vuO0Acq5GNBtbhusqrjA
AAHr-pzFdsoP6lSX5848gyPrJ5uF8ZB7DGI
AAHu7pzbt0AyIJEzdBFI-7AKGLd_YmXAzhM
AAHVmffcdPORa97th5bsv_hPBYbu18fuCoo
AAHw8Z5EHh36PpNSZEyi0rpvm5X_Bk50k4E
AAHwRbzSCP3IkZai_dK5HtkHli_OZOSoX3o
AAHX59qVR4u83u9wfnpOb7kF2ZSW0f6myrA
AAF_zkPoKNQL3haoTaL5XWhQrTvkK_VRA1k
AAES0RHzvsPRLDrTkHCPGOfxK1ODJ7QAFjM
AAG09yrB4dLc2h7tjTXvt5qdqwBTLxOTQ6E
