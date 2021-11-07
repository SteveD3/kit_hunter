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
$api = "
$api="
$api_key  = '
$api_token = "
$apiToken = "
$botToken
$botUrl = trim(file_get_contents(
$chat = "
$chat_id  = '
$chat_id = "
$chatId
$chatid = "
$chatID = '
$chatId=
$chatID='
$chatId = trim(file_get_contents(
$ch = curl_init($METRI_TOKEN . '/sendMessage')
$config_chat =
$config_token =
$id="
$METRI_TOKEN
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
$tokenlink
$user=$id
$user_ids =
$user_ids=array(
$yagmai
bot" . $token . "
"chat_id=
'chat_id' =>
'chat_id' => '
'chat_id'=>
const TELEGRAM_BOT_ADMIN_USERID =
const TELEGRAM_BOT_TOKEN =
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
#                                                MISC Token (likely invalid)
#------------------------------------------------------------------------------------------------------------------------
AAGJs4drUDQ_yUeXvjSPenDoOAmmNWDUHI
AAGiGpXLxi6k21S5Wd45stUw6l74zKsXsW
#------------------------------------------------------------------------------------------------------------------------
#                                                MISC Token (Base64)
#------------------------------------------------------------------------------------------------------------------------
MTM4ODk3MDI3ODpBQUhlUm5Kc2lTTWZvRFJNbDlHWjNBV0RKbnpxYUtnWHFiY0BkaWNvdjIx
#------------------------------------------------------------------------------------------------------------------------
#                                                Known Bot Tokens
#------------------------------------------------------------------------------------------------------------------------
AAE_05SQRwpfFU-NE5S99_y73tR8YFN-HPs
AAE0FuFBphVlm0NF0Bw1GGwuA2nmIhC0jjk
AAE0RKCUHSJeEqwJ-N_cTQ3x02huF7f19oc
AAE0wAOAhU1wANe8diozUQ-pFYNCvbvi17Y
AAE1d9bDwgV9Wtfwv_kPrZFNoccFd56Z_G8
AAE1rapl-l9-ifBzl98AJz5hQR6morcUaVA
AAE1rapl-l9-ifBzl98AJz5hQR6morcUaVA
AAE2c4rgMbnm-mUX1g7WevDPxa2Fccikbas
AAE2E3TB2MpCnmCJzcGoeg-mftkkTck4UiE
AAE321lNyh5Jsanr-Ch9RDQejTm0ftKt0cI
AAE3FFO7D-bDH58lBFnNjbSUkv32jJEOmds
AAE3Lm7PsqUWD1JP7V4t9hsOwr_YSD8DgI8
AAE3wTTZqvv611XWzUarXUzZJnZwibs2SX8
AAE5eVjGA9joeXGZSB1Po3Hsd4e6l2KnBPQ
AAE63IuWPegXy9MqXFEAZPuaXEn8BKyvHTo
AAE6vnqY66kUCB51GU1j46PDocQTkj8KQzc
AAE7Dkh7s7OFspoaTCGrst1z7O8Pr3YRxfs
AAE7jUEvLiiv4RdvFFpkJePCfiSsLvfD6q4
AAE_7SR82q8WNfutEkrlmHt6ALj1rjPqVoM
AAE7TeqwF2yKUxXs15YGfSo3FUD15l8fGGY
AAE8rkesqY_UyiR9lHtjXbl9rRvyTkZYn8A
AAE8zOumFJd5DQUm7Q__HonB8z3SIu6yyas
AAE95eDQ8e1P2fD9iS6ZpXbBPNi2wJn6Muw
AAEA2PvzFNbEbmTfTrDugQlW7KwkvV-sHEM
AAEA3mnXnFKSO0hncWCTL7erok72-D1yxZ0
AAEAMgJRWqDgrcXTR1CXhWtbp5E4foGxmwg
AAEANRt7wXQH4bpJ4GZ1u1A1sHkhMXGcESI
AAEBvTp0DeFlPQlXOnRC6CTv7K2RJTbIJCU
AAEbxSXQjFX1LdEi7zJ66aZxCOVHbS7EDbg
AAECr3FRM6afdo_8Vx-CTjid4qX3z2S3kUU
AAEctkFCOj-EWmHy7hHvRhx2ldqprpxjEgw
AAEDblVYzoTrwl0td5BtIL4eNwUiyuBkqhQ
AAEdXfQLgIFEU3l94N3zHEuQ4Mi8cBouuLA
AAEE74JjEoyUA-ohDEtVHrpbdpq-7H9LfbI
AAEEcc55mkAqzVJlzCYgyAF-I_HjAyJTVqc
AAEG5OQvqUXTvyMmc4QWOvgYKIxy1ofq55g
AAEGHIg3bJDJ0SMjr3KzKw4AFSR2nvcXbvc
AAEgLxiVKu4eXW873uv49qKeN8Dx4J9FNus
AAEgLxiVKu4eXW873uv49qKeN8Dx4J9FNus
AAEhUEh2zAOH_tN4pw_XLKY1iP9E47FpQCo
AAEibNWUpYgEjvzbMmybYbVYhCVAmWtuZmU
AAEiw8LtzXkXy_7pnXTB52mv0Qm9KxEnA2o
AAEk6Rw1JPAaLNfvK66U9zjP44eCZPfFeOo
AAEKj9maPQ4JueLOFBxh8404rQ8MmXN0FZ8
AAEKtujB6ubGrN2haH8-FSkoLmuYqFsoqes
AAEL3N9KxN0OprBldOYeMLnxPqs1EZl6k6g
AAEmJ8su76uQCAAKVGH5K6h8m7wnksl-HOI
AAEn02yoU5AkuvRdXGQnkHxmYixCmLDnU_0
AAENjo0h5aP88vs-_09zT1rUeWYCu3MiegE
AAEobcsClhzetZgd81K53rwwahqB4Pkkx5k
AAEPhLmVw-bOQmdf73glLgRV3GQCsg9iA2U
AAEpk8hrM_nefNhQR2wnDhLHNCKTmffC_IM
AAEPuE43ZULoAM0FyTUw3rYG8FnK247wrN0
AAEQJuuVIhQYvqEc5h1dODAT-hRpYyqdAgE
AAEQP9-5i03mCpJY-u4n8RsMAfGv9WgtBuU
AAEQReb-YwvBrNFpvCy7Z62sRwh_VqMsakM
AAEQWKcSWR_Iz03cv3v8AONYtkNZulQmOSQ
AAErJAJhTY9K-7_uyC4j-E9Bjy4rswtSG5k
AAERM9r8WxLRyCM300Cnlnip7-yAahZoBOQ
AAERRPEqK6YXGpOav1k65I0PMqV5W98mU8Q
AAES0RHzvsPRLDrTkHCPGOfxK1ODJ7QAFjM
AAEs2HX8ly_BJgZuZYArQ8KK2Zdp6FnCmfQ
AAES6w8wRpVKdVmntFdBZHbFnNkUB8P9vR4
AAEScAAe28Vrg00vFsSUv4JkY1rhVX2Zy0I
AAEsqeRtwFf7am0bR1YqkIOj4hUuEMqRYqU
AAETaIXqRY7_WhUt9sarlxIPZRG40sDbV44
AAETgzG-Ijx52N39V1hZNtOgXrOe8Ltu2NA
AAEUDZg9yay1vbMdjjhQ1I6OlN6ghsLq7uA
AAEUehTMbs64WQ8FmFkGW4igmKe45NALM1k
AAEujJKTD3BnGUlxivOChhjcB1c1gy6xlys
AAEvLhsO1JQv4Io4lvZIFC9pvitBbQYC7HA
AAEvVCU3n78EmocvDQ6xq_B_RKcp3l7n9ew
AAEwgI8qXqwTz63BbImRaVmFtDr53m_97Us
AAEWSjBM66dxFiMCGst81pLN8QaM2butWlw
AAExf2sPxgY1L3w6JQywIeINBM7S2Ua-czQ
AAEyBlt_oCnaNsmBecEwwZKZj2UdO_cYlBc
AAEyDTQ8ZM1KUjkIRiEOE7PHZQ3xZ3PvW0Q
AAEyRWoh1vAvnGYg_zz8Y53uxwzFLeMDAPQ
AAEyUZC3pXFpuA4nRJ06dpTsUC3QHb_Mw5w
AAEzd1QRtmKBz6dupCFLbXVhFHNDjgxC_VI
AAEZRmCGEVG89UbMGszs1TtubnPGbxl05xg
AAF0lXZHIZswg0PsXKIVlzXfZXS69ESXJ0M
AAF0NbXbrpN2uRG7mvr5VcW4Hl9-iaTc3TY
AAF2_qMbYBqvOgV0_oNh4rGhZFlQbwvmwMw
AAF2V7vYD-UO4jVFdlpDKUw1-TqNH3KbrVo
AAF7-n8C6zlpVy4Yu7eTgLJFuDtF6c6zFz0
AAF7PW37IAT37xVfN6i5IDrOmB4oRlW1f1Q
AAF96ksL1jl6fTbjeUy54YGFYueJXNXo8Go
AAFA4RqL6BXoRlkopHG6P6E4jBfHU7irgRY
AAFA56zUFOON6b2xm2kMuKIgO4TnDyUZd_E
AAFBfaFyIznsUBhYHrjsCCvQDxfB-UtbwFg
AAFBjlSbN6fwVOZpeg-A-lzQZc4ztBdpDTk
AAFCpgIfxZfsNhyx1cHrmrfIp-NFDjhOFKY
AAFcQbzvJvoIayEBMa0yvgjJQx_POrumewU
AAFd1QuJBThRi1VpZApoowEt20RUBDEA3-k
AAFd9DaOgIOHt621_zmjbMY_dk6eVGeisao
AAFdfwJaC2qVikxmynlAnx_LNYgWwynW09g
AAFdo0j6X6DE1GMT8Zl4oKL8uVva8ya8vSw
AAFEN7vBCpeb-3rYeSp-8Lk7UVblaSkcMEw
AAFfik37kAqT4ZCwil5uMd4087f8Bles3pA
AAFgCOp7AH4oNKl1bOJmT5J_PkefhpAIqWY
AAFg_mulm3IFavp6h09CoVoFormToOkIJ6k
AAFgqKe1cAfXOcPM8nokrYKSoj6mXMSNSh4
AAFgt_ziHtFaGVfq7EChBLWB8F-0C0JOMRc
AAFheZFViu6t-qWj9XG0eWaSnzCu7NEK1gk
AAFHIxwYmMHLVDTsKWux0wy-owzwitFTybo
AAFhrn_croctCBJlE7mxHz_skTDtdbDBFwQ
AAFiKY4YWXUt0JG-RSINPTSHuhRjiOexsis
AAFIl2t07EcoUgHGIaX6qQMPJo8RNe6fJt4
AAFLj_HzDC1Qpe-w2BrXyC8QQgY025VfDZI
AAFmSUMr1wzlrulYS6YIfGdeWAI8VnDnWg8
AAFMv7cax8TuuJfjg3_QgLxHjj1EbS32dOc
AAFnFPBoGx_Q1_K--5Qyz2ioyAwN3IdQWLo
AAFOOjQsF-b3CKWjUjmwBZPrK1FnNPDhBuo
AAFotYPVbifrHVJm-7ggWGogj3MrFQWbPoM
AAF-PH1rL1wGFiQU9PSc8FGLTb-MgptJIeM
AAFpTRcYaCfWv-Jd9FvBOtuaYuwNopVsKuk
AAFQizFWV8HuZmQ9w4Egvy-R50L7IFJ68Ew
AAFQj387Zc30QpTCRdciLNypxLS5nqLBcYE
AAFQJvdDdFF7EUEhD_HNmU7LBIbAZTGkMv4
AAFqVFg4w5dUgD17yGFoKG5U0eehSX-LQZU
AAFqWPaIsgdpoAz3d7OvaPO-SqDE9-08kQQ
AAFRKJHgjAlBjKvfS1wnl6ot5M4BgWbqMyY
AAFS1XMK43h8NSqjeOf1hfohMKYahnnRhhM
AAFsvR3-kpeEP5gZOxcMWytaxlqcSjOH6yA
AAFtVCapb4DljnVyaap6LFsYHkHFh2DFytU
AAFu5YIF3igXRPsrpIFXhqgJpQY8uoEYXCw
AAFua_iGdjIzxHP0BsgU4FY9Bulopc0NTOw
AAFUf5Pv3LxaiTBr2LF7M_5LRkVk364d15A
AAFUpqcX-CMsK8RdswTRgL_75MoUJA8wEFM
AAFUxuwEPSjknzP2PlXn069WEOElzOzhJpg
AAFv-6KKcBuFNP6Bjsqp5of1dGWHMHEaYXM
AAFw215sGBREx8HEKvpNB5NAhETHLxtH23s
AAFW6flhfyygzMYBmnQsvxjlmcO8X1Y7i-c
AAFxceW-FWT7ecJU-TQhkxUHCHTTKEX5PeM
AAFy-N4rHj_0-ocLFMy9FpOG9HB9bFPeQA8
AAFYoazrGWZaiTyQ-ib4nYHpNu0RNkOoMvo
AAFyqFyFLGnbSFgJGIOsVpUAIpeK9OvXpOo
AAF_zkPoKNQL3haoTaL5XWhQrTvkK_VRA1k
AAFzWgF8ZVwVHbwhOjaNsjjsXrJx6lgpINI
AAG09yrB4dLc2h7tjTXvt5qdqwBTLxOTQ6E
AAG2be4UKclRRQpEK-5MUYtS_RBtmwLWKS0
AAG2kodxwsEeLGnBFMIAIHgF2iI3IEumY5g
AAG2wD3nO9TpX-P4Oo7B-BltYwfI3IDjkew
AAG2ZzQfPqJ9uZ2v3T5FFjOcV6384nUFx_s
AAG317cQXA5Yees9iAn-osBJ8S3VbhMBofs
AAG4ETbq22XvftBxkJgiIWVrRwC0ecyBW4c
AAG57-xnmv--JX0xHyS4fwT5FjoH4bQdO_Q
AAG5EzlPMuHsCGpiA8lmyqaxfFqldTLLXxQ
AAG5R6qm1eOobkUxvqUVFRqHknZquDHaWqY
AAG7aFrziYvQDE0B41Js07zH8g5krsGGPoM
AAG95cnz4rwA7a4n00h6-MhofJ7Ism4xqIY
AAGA9kbx0RZsK2Q8XNTPPgATcFIDsi_jyRY
AAGaMLyatwEp9d1Xp422FzfMqq7PEFmvO2Q
AAGbqD2kIppB__ZJHbQRkwU_bpEZ_A3i4K0
AAGBZx5w5VWuJYhUYM2r7kCFcmhfMSNXeGA
AAGc8-MAe4BnqB8W5zkZDHAKrYFXc0zh53E
AAGcSFGX0H1vNMZSfVFonV1GrFWHRbACbNk
AAGdABCO28NmurHGm3PSogMAbmHLlOzJFBo
AAGDC4r_nrE_R7CVk-1uUv93CgQ5BOxhM90
AAGDgNddAoMbUkOdUWLmX54UPsvEPID8DWM
AAGDhI-E7UEBDIN15ba4Avq0XB2jj5b9y7s
AAGDJDAx_G9bIcrHbpOxQl7bXoUoXVfj-uc
AAGDLuzMOBoHtZlNWnZZE1IE-ReaN1K0uf8
AAGdmuXrm9X2kYAaiQUjHwET0lacswOcmMg
AAGdWL1MrlFJtdBjy5tKJ9HCaDuTGAq2ls8
AAGezCC65m1-1zQPhVm5Ea5CTT_E3WYBAIU
AAGfDgPVGa80VZDN256e_5Q8kcXwYdHJfkQ
AAGFluLugLAuIKbyz7vWuawB3WHjX-rxsfc
AAGFnb6w2lON2W2vg8-XHgDtQtxpVRJWd84
AAGGu4p-kTSKlEqF2lDZ7Cfn9EdQKuTXSHI
AAGh77TlJBi1Vsw84KeoK5rppj7WBElArAg
AAGhcWusqXoI4zdmDYeSpNqtPiNwIYwDl94
AAGHyHVNMO9ICmXJie3nP5MI2do_34GgZhI
AAGiAbV3btLtdkc9clhV-KaY7WujlypsIWs
AAGIGQFqpeKYa9agNVlfhoR_x-o5JY-bo-c
AAGIk6Jc7fcKo7dNbOGrYGPxR8kH50SL_aU
AAGimT52LQ7X1f3uFJOza8Zjk_z1AXTjg5c
AAGIUzm0Ynt2fqWSyKARI_4Jolu4NGQY8dc
AAGjK1wO7sRCi4D7NBSDVk-a0C4fl2jnvWA
AAGkiRDWKjAFLOcPzPzGYbh6kZGWckHB4D4
AAGkmyd8Muf3HZ-l1YEyvoilf8vX_jzl5-o
AAGMS5L7YX8TNAgtQq4f7OHiG49cFzPrnZg
AAGnQG3742gRjf8x8Z0ugxiNjmy6qEVwkV8
AAGNS_8vrC7CZ8CWR1pWZqi6JMLcQz_alfU
AAGO92LTT1Y3vurNcOAy6240QqmHANXoHl0
AAGoPJJv2aDpvTK8iv-fyg0G4LsONl8poxI
AAGOyJ1nOucOiLwpr6OIpddkHPav_BnPfkM
AAGPCZlHZC3OdBp1_dpTZo5_oAFCR-Af7jY
AAGQ92By_pUqcc4fLPhMt0xIsM7JdvUFZgU
AAGQGVzxhO0-PC74C_4w-yxRXUgf4O0tnQs
AAGQY2rq7uaLpmYiQMPOEOLyjQC5mat-KPM
AAGqYqH3l7Kn4XzUsk41uxo6hiR0NUVA-Mc
AAGrGwLJqqBY8AlTS6IK9RrXwf2Ym5KJGEg
AAGrLmM6PXWXi5X8HKBxJL_A1B3dh2b3550
AAGrSFy5ATQ36UmAwLrN_j6VDH3lB5O-A2w
AAGrtqNnM0OaWtsfYCCF5aEC_aNyvaaM6I0
AAGsO00WvsBBNfT5ALBEX8h0JLx8XrYpUpg
AAGssYBrdTh_heb1cDT4ZWZxwuf0iptStQY
AAGThTW-7-wWLGXl6cs-VgFTgGlbj6Ha7bU
AAGtqwBQ19Ub4N2g6SfVo9taNnC3ZEygR5c
AAGU8EWmgn64PFZIr3ahTGf_5OWIDNexZl8
AAGUNpU7SY7Es7NrnruFfeWQb31rC2daNSQ
AAGV1GzOXPZEk-_g8vUOP-GnM6U-ndRAWic
AAGvLmW6VA50n-w5AjV7V7gyC5fFR7rcbKI
AAGXGOf40nUq4beJIH2q--wq3bg9MQezgfg
AAGXilO4b5qx4wxL86qddWMLmOWCrB26cMA
AAGxTO26o_QLABe3wEmqY5-OlPGZF_UMki8
AAG_x-UEBTGBWdeUp81KvOHMafHA_No_FZU
AAGxWzxR4c9pMFtwq9IMSc22fE8b-sVeX9c
AAGyDb76od2zorJyjB0VYHhuE1A5Vp0Gg8M
AAGyEXxaRfixp7HXDMt3COOudU8sZKkNxco
AAGZK-Oz6Jk06IA6En9jMwbtt14ulYv7LX0
AAGZpK9YfGUVwXSRorS8sUvm8_CCUpK0FKk
AAGZXMHow-ogpOlCVEikHAOnqdoaEOp7SSk
AAH09536IQHy2SF4uyLD4KUA3ONaJVXU7K0
AAH0dYVk6y8OdOf4eN68_JTiy5O3c0tP-GY
AAH1cggYVpH7MbShKNi5GVIUje3CUjTW8j8
AAH1PSwDjSx3Pnd8LVjflaQjpg1IqV898_g
AAH-2Cygq6IdbAwx7BLtHPg6jzCk4tO1bYs
AAH49lNM_CbXiRqBt-9VEIzJ1ntijSfy3-g
AAH4EEEdPW_a9SLvCHNI7pgeUB-HVl3EEFs
AAH6z6NDVdW1XpCisCI7HfFiNWC1hL5tDTI
AAH76tdx_EkCOYgRG3rUr_XrbaTN8OAQb6Q
AAH7qBOayD4z6NhVPw0sQBL19Q0uD-t0OBA
AAH7SAMyG6pAhMzNigt5mrUDps18NzXcUD0
AAH7SpWeizbB-OD2K93T8tTwhjTEVBndfMs
AAH8IT-epIkQjMxjfh6KG9F1r4VQwAJ2Z8E
AAH8VARpsAeJ8kTE56n6X3phXS_utXuy5bM
AAH9pQRbJX1Ml1_ZMoRp_EXkdF7JpN8OOBA
AAHbgJBZxbawEUSSmn-3WxHbBry43qJ10Uc
AAHbhKt4I1CzHRCHF68jbjhlYaBSH-7tW98
AAHBIUl4yZ6a0--aQGcIou1UkmI-NUw6LHI
AAHbvd_IALdC610tLGzl-xgtMJnEHRq9dK8
AAHDB4ArG8t1fiezGi4FAw2a57FUZOa1UO0
AAHE4NKlVM__wFBZu553cZMfzFAqic-cf00
AAHeRnJsiSMfoDRMl9GZ3AWDJnzqaKgXqbc
AAHFk8PrixHpHWUvwVR9WKaajng2d0JfLO8
AAHghV9nZpH0fYvA8lCf9VNJYpeEDky1F3I
AAHgRRuujGaglh2JldKyscrM6zUgdt-C8SM
AAHHE7dmIn3HyT4j_Lst2Ywwgvf2WM56VyQ
AAHhFn1cTbNMAbg43b2cu7WxZh97DEflSfA
AAHhlZvrHYT7MpY-F3fsNC7yytUKaby72xI
AAHi-apqZxk597pCekqXNxgQTzJtVysiH2E
AAHIju4aM7hsx0oXlXjF9RIabALqS9AmZlw
AAHIVbfhVpW2VRPIQGchfzcFNcvgYIh3F1g
AAHjcBPsKrzTP42DjKLZ9WZheYlsDaYjgCQ
AAHJOnK_MGe_aDVNQ1gcA2mVzZhD8gCLYJg
AAHKYczOM71LbiGfBzYhVWgXO6x6qX2wVf8
AAHlKUL5Jy8lJz7z0q5roKW0Vrc_D-bUXA4
AAHLz_P33SwUsRqPmL4u6uiSB_0zzdV30e0
AAHNnhrgO2iU2BQvwLlD6RZtOthRilw8r6Q
AAHObiZLlXrCoBcI7mlR_vPFBIOuXtMcV1I
AAHOCbsbejr8xKTNXm5VTu3EI5PAJXNvfWc
AAHodCcJ4s0km1bACfHVE7Gj1oMw0LhdhhQ
AAHoQwgqNkJwjYwfQiDFSfAoTAVaDwEWf88
AAHOSYskqtUV5oWxhPzDO5q9cwBAEbvWI7g
AAHoxyNGDpusI7eQlRuZ4tW4U_LzeP_KcaA
AAHOy6En-4rIKAYpS6VQ5osKzJl8UVxbnRQ
AAHoZqUHJD4SJE-d_q1aJx-ZoRkJWs3vhXE
AAHpBt_oJBGzB3b7k7EeaAf-SZIqwC3OJdI
AAHpR6CFIm6J_P0pt2cJUdWWRYBYDcKOJ3M
AAHq1njqglnbfMujnsrhQcC4XuNUVM4qy9U
AAHr090zzk2jGrQQl2q6-Na0Lx3J2PqYDQ0
AAHrBhLklGA2Dk7vuO0Acq5GNBtbhusqrjA
AAHrE2gACtLJRzxokpKjR-ClhhkrzwISZZ4
AAHr-pzFdsoP6lSX5848gyPrJ5uF8ZB7DGI
AAHSL40zuj3hssmmE4_W57PbzlU3nMorl4E
AAHslgkSPsh2YEQFVweRMBodHZhuZizOZAs
AAHteJPkOtVtLl2ZedjhfbjPMiseh1BHKNQ
AAHtGF2NYGbULICeBQ7_dPeiytYbez_jZIE
AAHTtPZ_xJLLmmHJyWiVDye_LiUgXBIYi98
AAHu7pzbt0AyIJEzdBFI-7AKGLd_YmXAzhM
AAHUz1IV23gToVmOQSB1e9nnmfHEoinpNLk
AAHVmffcdPORa97th5bsv_hPBYbu18fuCoo
AAHVPinf4q164o_m-FOVtXvZxMkFUorExok
AAHw8Z5EHh36PpNSZEyi0rpvm5X_Bk50k4E
AAHwKXT1dqGGYqOAJ0QHVoJymKDlwqqer9E
AAHwRbzSCP3IkZai_dK5HtkHli_OZOSoX3o
AAHX59qVR4u83u9wfnpOb7kF2ZSW0f6myrA
AAHxdudiKWP48LNqXLYwVOUUWoWMcnFbaqs
AAHxOSV0LaIpL4w5DunEYZkwM_RSlXzqaWw
AAHyCZ6UHoRBPE3H3Cv5dqfJS0Dz3sDaJ_A
AAHZC1MmiX-rg4BudcpqVPdCAfUv9Ipt4Gk
AAHzI4O_g71PqtBYk8Wzjulnf-lfpnm3l9w
#------------------------------------------------------------------------------------------------------------------------
