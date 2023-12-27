#> asset:artifact/1027.fire_of_rebirth/trigger/4.magic_circle
#
# 神器のメイン処理部
#
# @within function
#       asset:artifact/1027.fire_of_rebirth/trigger/3.main
#       asset:artifact/1027.fire_of_rebirth/trigger/4.magic_circle

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=area_effect_cloud,tag=SH.Magic] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 rotated ~ ~90 run function asset:artifact/1027.fire_of_rebirth/trigger/particle

# 発動
    execute as @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:artifact/1027.fire_of_rebirth/trigger/5.shoot
    execute as @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}] at @s run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
    execute as @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}] at @s run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0
    kill @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}]

# スコア減らす
    scoreboard players remove @e[type=area_effect_cloud,tag=SH.Magic] SH.CoolTime 1

# ループ
    execute if entity @e[type=area_effect_cloud,tag=SH.Magic,limit=1] run schedule function asset:artifact/1027.fire_of_rebirth/trigger/4.magic_circle 1t replace