#> asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/4.move
#
#
#
# @within function
#   asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/3.main
#   asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/4.move

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] run scoreboard players operation @s R9.MoveTimesPerTick = @s R9.Speed

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s R9.MoveTimesPerTick 1
    scoreboard players remove @s R9.Range 1

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/break

# 飛距離の限界で炸裂
    execute if entity @s[scores={R9.Range=0}] run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/split

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/hit

# 再帰
    execute if entity @s[scores={R9.MoveTimesPerTick=1..,R9.Range=1..}] at @s run function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/4.move