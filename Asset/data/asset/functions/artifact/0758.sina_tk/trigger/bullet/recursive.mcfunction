#> asset:artifact/0758.sina_tk/trigger/bullet/recursive
#
# 弾の再帰処理
#
# @within function
#   asset:artifact/0758.sina_tk/trigger/bullet/main
#   asset:artifact/0758.sina_tk/trigger/bullet/recursive

# 演出
    particle dust 0.486 0.780 0.102 0.5 ^ ^ ^ 0.05 0.05 0.05 0 2 normal
    particle block bamboo ^ ^ ^ 0.05 0.05 0.05 0 2 normal @a

# 前方に進む
    tp @s ^ ^ ^0.25

# ヒット
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run function asset:artifact/0758.sina_tk/trigger/bullet/hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run return 0

# 何回再帰したか計るようスコア
    scoreboard players add $Rucursive Temporary 1

# 再帰数が8以下かつTargetがいないなら再帰する
    execute if score $Rucursive Temporary matches ..8 at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0758.sina_tk/trigger/bullet/recursive