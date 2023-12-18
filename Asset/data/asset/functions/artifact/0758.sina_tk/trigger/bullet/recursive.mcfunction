#> asset:artifact/0758.sina_tk/trigger/bullet/recursive
#
# 弾の再帰処理
#
# @within function
#   asset:artifact/0758.sina_tk/trigger/bullet/main
#   asset:artifact/0758.sina_tk/trigger/bullet/recursive

# 演出
    particle dust 0.486 0.780 0.102 1 ~ ~ ~ 0.1 0.1 0.1 0 2 normal
    particle block bamboo ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a

# 前方に進む
    execute at @s run tp @s ^ ^ ^0.5

# ヒット
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!Object,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!Object,dx=0] add Target

# 何回再帰したか計るようスコア
    scoreboard players add $Rucursive Temporary 1

# 再帰数が4以下かつTargetがいないなら再帰する
    execute if score $Rucursive Temporary <= $4 Const unless entity @e[type=#lib:living,tag=Target,distance=..3] run function asset:artifact/0758.sina_tk/trigger/bullet/recursive