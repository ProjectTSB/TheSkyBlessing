#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/throw
#
# このfunctionでアニメ実行と火の玉飛ばしをやる
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick

# サウンド
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# ファイアボール召喚
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball

# 一個は必ず自機狙い
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball_aim
