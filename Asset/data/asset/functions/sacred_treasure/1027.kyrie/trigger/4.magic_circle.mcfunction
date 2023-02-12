#> asset:sacred_treasure/1027.kyrie/trigger/4.magic_circle
#
# 神器のメイン処理部
#
# @within function
#       asset:sacred_treasure/1027.kyrie/trigger/3.main
#       asset:sacred_treasure/1027.kyrie/trigger/4.magic_circle

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=area_effect_cloud,tag=SH.Magic] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 rotated ~ ~90 run function asset:sacred_treasure/1027.kyrie/trigger/particle

# 発動
    execute as @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:sacred_treasure/1027.kyrie/trigger/5.shoot
    execute as @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}] at @s run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.6
    kill @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0}]

# スコア減らす
    scoreboard players remove @e[type=area_effect_cloud,tag=SH.Magic] SH.CoolTime 1

# ループ
    execute if entity @e[type=area_effect_cloud,tag=SH.Magic,limit=1] run schedule function asset:sacred_treasure/1027.kyrie/trigger/4.magic_circle 1t replace