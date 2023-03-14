#> asset:artifact/0369.fire_magic/trigger/3.2.fireball
#
# 火の玉が実行
#
# @within function asset:artifact/0369.fire_magic/trigger/3.1.tick

# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add A9.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add A9.Landing

# 着弾処理
    execute if entity @s[tag=A9.Landing] run function asset:artifact/0369.fire_magic/trigger/3.3.attack

# 演出
    particle lava ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 0.3 0.3 0.3 0 3 force
    particle flame ~ ~ ~ 0.1 0.1 0.1 0 10 force

# 進ませる
    tp @s ^ ^ ^1 ~ ~