#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick

#> private
# @private
    #declare tag FacingMarker

# サウンド
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 2 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 2 1

# マーカー置いとく
    summon marker ~ ~ ~ {Tags:["FacingMarker"]}

# 実行位置を目の前に戻した上で召喚
    data modify storage api: Argument.ID set value 1009
    execute at @s positioned ~ ~1 ~ positioned ^ ^ ^1 run function api:mob/summon

# マーカー削除
    kill @e[type=marker,tag=FacingMarker]
