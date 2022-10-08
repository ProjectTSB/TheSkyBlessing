#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ^ ^ ^2 {Tags:["FacingMarker"]}

# ビーム
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.laser

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]


# 演出
    playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 2