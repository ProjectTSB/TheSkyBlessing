#> asset:mob/1004.tultaria/tick/skill/1.melee_attack/ice_shot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick

#> private
# @private
    #declare tag FacingMarker

# 演出
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 1.5 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 1.5 1.5

# マーカー置いとく
    summon marker ~ ~1 ~ {Tags:["FacingMarker"]}

# 実行位置を戻した上で召喚
    data modify storage api: Argument.ID set value 1009
    execute at @s positioned ~ ~1 ~ run function api:mob/summon

# マーカー削除
    kill @e[type=marker,tag=FacingMarker]