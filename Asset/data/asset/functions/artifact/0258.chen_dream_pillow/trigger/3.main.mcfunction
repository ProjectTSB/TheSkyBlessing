#> asset:artifact/0258.chen_dream_pillow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0258.chen_dream_pillow/trigger/2.check_condition

#> private
# @private
    #declare score_holder $Fluctuation

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 100 force @s
    playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
    title @a times 20 60 20
    title @a title {"text":"あぁ～ためになる～","color":"aqua","bold":true}
    title @a subtitle {"text":"ちぇん氏のTwitterをフォローしよう！"}
    tellraw @a [{"text":"とってもためになるちぇん氏のTwitter：","color":"white"},{"text":"@CMD__Cat","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/CMD__Cat"},"hoverEvent":{"action":"show_text","contents":{"text":"クリックしてアクセス！"}}}]

# MP回復
    scoreboard players set $Fluctuation Lib 1231
    function lib:mp/fluctuation