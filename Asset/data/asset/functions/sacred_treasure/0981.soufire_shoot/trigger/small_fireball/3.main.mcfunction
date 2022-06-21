#> asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/3.main
#
# Tick実行部分
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/2.tick

# 移動
    execute facing entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^ ^-50 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run function asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/4.move
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] run function asset:sacred_treasure/0981.soufire_shoot/trigger/small_fireball/4.move

# 加速
    scoreboard players add @s[scores={R9.Speed=..21}] R9.Speed 1

# パーティクル
    particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0 1
    particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]