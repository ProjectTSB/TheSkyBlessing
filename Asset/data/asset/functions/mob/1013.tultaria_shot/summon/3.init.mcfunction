#> asset:mob/1013.tultaria_shot/summon/3.init
#
#
#
# @within function asset:mob/1013.tultaria_shot/summon/2.summon

#> ショットの行き先指定用マーカー
# @private
#declare tag FacingMarker

# マーカーの方向く
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~