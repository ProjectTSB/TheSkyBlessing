#> asset:mob/1004.tultaria/tick/skill/mini/back_shot/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/back_shot/

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["FacingMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute as @e[type=marker,tag=FacingMarker,limit=1] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 2