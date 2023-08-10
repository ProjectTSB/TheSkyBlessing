#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 1

# サウンド
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6

# 召喚
    data modify storage api: Argument.ID set value 314
    function api:mob/summon
