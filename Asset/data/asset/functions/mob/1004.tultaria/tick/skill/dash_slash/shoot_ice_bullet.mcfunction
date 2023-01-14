#> asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
#
# エンシェントライトを放つ
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

#> private
# @private
    #declare tag FacingMarker

# マーカー置いとく
    summon marker ~ ~1 ~ {Tags:["FacingMarker"]}

# 実行位置を戻した上で召喚
    data modify storage api: Argument.ID set value 1009
    execute at @s positioned ~ ~1 ~ run function api:mob/summon

# マーカー削除
    kill @e[type=marker,tag=FacingMarker]