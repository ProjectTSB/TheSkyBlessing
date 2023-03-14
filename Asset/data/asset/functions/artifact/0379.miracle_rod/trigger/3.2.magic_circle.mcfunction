#> asset:artifact/0379.miracle_rod/trigger/3.2.magic_circle
#
# 神器のメイン処理部
#
# @within function
#       asset:artifact/0379.miracle_rod/trigger/3.main
#       asset:artifact/0379.miracle_rod/trigger/3.2.magic_circle

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=area_effect_cloud,tag=AJ.Magic] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 rotated ~ ~90 run function asset:artifact/0379.miracle_rod/trigger/3.1.particle

# 発動
    execute as @e[type=area_effect_cloud,tag=AJ.Magic,scores={AJ.CoolTime=0}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:artifact/0379.miracle_rod/trigger/3.3.shoot
    execute as @e[type=area_effect_cloud,tag=AJ.Magic,scores={AJ.CoolTime=0}] at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.6
    kill @e[type=area_effect_cloud,tag=AJ.Magic,scores={AJ.CoolTime=0}]

# スコア減らす
    scoreboard players remove @e[type=area_effect_cloud,tag=AJ.Magic] AJ.CoolTime 1

# ループ
    execute if entity @e[type=area_effect_cloud,tag=AJ.Magic,limit=1] run schedule function asset:artifact/0379.miracle_rod/trigger/3.2.magic_circle 1t replace