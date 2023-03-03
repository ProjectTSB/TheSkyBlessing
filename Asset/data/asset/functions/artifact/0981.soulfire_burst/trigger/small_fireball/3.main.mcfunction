#> asset:artifact/0981.soulfire_burst/trigger/small_fireball/3.main
#
# Tick実行部分
#
# @within function asset:artifact/0981.soulfire_burst/trigger/small_fireball/2.tick

# ターゲットにしない人にタグ付与
    execute positioned ^35 ^ ^ run tag @e[type=#lib:living,tag=Enemy,distance=..30] add R9.NotTarget
    execute positioned ^-35 ^ ^ run tag @e[type=#lib:living,tag=Enemy,distance=..30] add R9.NotTarget

# 移動 カーブをfunction内で行うと曲がりすぎるのでここで書く
    execute facing entity @e[tag=Enemy,tag=!Uninterferable,tag=!R9.NotTarget,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^ ^-50 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,tag=!R9.NotTarget,distance=..20,sort=nearest,limit=1] run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move

# 加速
    scoreboard players add @s[scores={R9.Speed=..21}] R9.Speed 1

# パーティクル
    particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0 1
    particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]

# タグ削除
    tag @e[type=#lib:living,tag=R9.NotTarget,distance=..60] remove R9.NotTarget