#> asset:mob/1004.tultaria/tick/skill/mini/move_shot/shoot
#
# ショットを撃ってくる
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/move_shot/

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ^ ^ ^2 {Tags:["FacingMarker"]}

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]

# 演出
    #playsound tsb_sounds:blaster2 hostile @a ~ ~ ~ 2 2
    #playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 2 2
    #playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 2

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 2