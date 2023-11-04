#> asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ^ ^ ^1 {Tags:["FacingMarker"]}

# 召喚
    data modify storage api: Argument.ID set value 1013
    execute at @s positioned ~ ~1.5 ~ run function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]