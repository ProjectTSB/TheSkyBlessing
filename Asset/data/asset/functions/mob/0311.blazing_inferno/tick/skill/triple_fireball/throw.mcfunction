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


# 自機狙いファイアボール
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball_aim

# 拡散ファイアボール、本気出してから使う
    execute if entity @s[tag=8N.Health.50Per] run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball
    execute if entity @s[tag=8N.Health.50Per] run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball
