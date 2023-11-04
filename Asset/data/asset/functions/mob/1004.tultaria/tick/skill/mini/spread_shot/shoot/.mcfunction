#> asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# 召喚
    execute positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
    execute positioned ^2 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
    execute positioned ^-2 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
    execute positioned ^4 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
    execute positioned ^-4 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 2