#> asset:artifact/0981.soulfire_burst/trigger/big_fireball/4.move
#
#
#
# @within function
#   asset:artifact/0981.soulfire_burst/trigger/big_fireball/3.main
#   asset:artifact/0981.soulfire_burst/trigger/big_fireball/4.move

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] run scoreboard players operation @s R9.MoveTimesPerTick = @s R9.Speed

# 前進
    particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..30]
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s R9.MoveTimesPerTick 1
    scoreboard players remove @s R9.Range 1

# 飛距離の限界で炸裂
    execute if entity @s[scores={R9.Range=0}] run function asset:artifact/0981.soulfire_burst/trigger/big_fireball/split

# 壁で爆発
    execute unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0981.soulfire_burst/trigger/big_fireball/hit

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function asset:artifact/0981.soulfire_burst/trigger/big_fireball/hit

# 再帰
    execute if entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] at @s run function asset:artifact/0981.soulfire_burst/trigger/big_fireball/4.move