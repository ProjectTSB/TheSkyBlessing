#> asset:artifact/0372.water_magic/trigger/3.1.loop
#
# ダメージを与えるえんちち
#
# @within function
#        asset:artifact/0372.water_magic/trigger/3.main
#        asset:artifact/0372.water_magic/trigger/3.1.loop

# 演出
    execute as @e[type=area_effect_cloud,tag=AC.Water] at @s rotated ~ 0 run function asset:artifact/0372.water_magic/trigger/particle.1

# 一定時間で発動
    execute as @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=0}] at @s run function asset:artifact/0372.water_magic/trigger/3.2.damage
    execute as @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=5}] at @s run function asset:artifact/0372.water_magic/trigger/3.2.damage
    execute as @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=10}] at @s run function asset:artifact/0372.water_magic/trigger/3.2.damage
    execute as @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=15}] at @s run function asset:artifact/0372.water_magic/trigger/3.2.damage
    execute as @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=20}] at @s run function asset:artifact/0372.water_magic/trigger/3.2.damage

# キルする。AECだから勝手に消えるとは思うけど保険
    kill @e[type=area_effect_cloud,tag=AC.Water,scores={AC.Time=20}]

# スコア追加
    scoreboard players add @e[type=area_effect_cloud,tag=AC.Water] AC.Time 1

# ループ
    execute if entity @e[type=area_effect_cloud,tag=AC.Water,limit=1] run schedule function asset:artifact/0372.water_magic/trigger/3.1.loop 1t replace