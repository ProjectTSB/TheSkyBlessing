#> asset:sacred_treasure/0372.water_magic/3.1.loop
#
# ダメージを与えるえんちち
#
# @within function
#        asset:sacred_treasure/0372.water_magic/3.main
#        asset:sacred_treasure/0372.water_magic/3.1.loop

# 一定時間で発動
    execute as @e[type=area_effect_cloud,tag=60.Water,scores={60.Time=0}] at @s run function asset:sacred_treasure/0372.water_magic/3.2.damage
    execute as @e[type=area_effect_cloud,tag=60.Water,scores={60.Time=10}] at @s run function asset:sacred_treasure/0372.water_magic/3.2.damage
    execute as @e[type=area_effect_cloud,tag=60.Water,scores={60.Time=20}] at @s run function asset:sacred_treasure/0372.water_magic/3.2.damage

# キルする。AECだから勝手に消えるとは思うけど保険
    kill @e[type=area_effect_cloud,tag=60.Water,scores={60.Time=20}]

# ループ
    execute if entity @e[type=area_effect_cloud,tag=60.Water,limit=1] run schedule function asset:sacred_treasure/0372.water_magic/3.1.loop 1t replace