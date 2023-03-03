#> asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move
#
#
#
# @within function
#   asset:artifact/0981.soulfire_burst/trigger/small_fireball/3.main
#   asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] run scoreboard players operation @s R9.MoveTimesPerTick = @s R9.Speed

# パーティクル
    particle minecraft:dust 0.576 0.922 1 0.8 ~ ~ ~ 0 0 0 0 1

# 敵がいないなら直進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s R9.MoveTimesPerTick 1
    scoreboard players remove @s R9.Range 1

# 飛距離の限界で炸裂
    execute if entity @s[scores={R9.Range=0}] run kill @s

# 壁で消滅
    execute unless block ~ ~ ~ #lib:no_collision run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/hit

# 再帰
    execute if entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] at @s run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/4.move