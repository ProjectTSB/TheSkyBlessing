#> asset:artifact/0210.terra_blade/trigger/3.3.terra_shot_main
#
# テラブレードショットに"3.4.terra_shot_main2"を複数回実行させたいだけのfunction 負荷によってはボツにする予定
#
# @within function asset:artifact/0210.terra_blade/trigger/3.1.terra_shot_tick
# @within function asset:artifact/0210.terra_blade/trigger/3.3.terra_shot_main


# 移動とパーティクル
    tp @s ^ ^ ^0.5
    particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:dust 0 1 0.25 0.75 ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust 0.75 1 0.75 0.75 ~ ~ ~ 0 0 0 0 1

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0210.terra_blade/trigger/3.5.terra_shot_hit

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={5U.Recursion=1..,5U.Range=1..}] run scoreboard players set @s 5U.Recursion 10

# 前進
    execute if entity @s[scores={5U.Recursion=1..,5U.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s 5U.Recursion 1
    scoreboard players remove @s 5U.Range 1

# 壁の衝突判定
    execute at @s unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0210.terra_blade/trigger/terra_shot_break

# 再帰
    execute if entity @s[scores={5U.Recursion=1..,5U.Range=1..}] at @s run function asset:artifact/0210.terra_blade/trigger/3.3.terra_shot_main

# キル
    execute if entity @s[scores={5U.Range=0}] run function asset:artifact/0210.terra_blade/trigger/terra_shot_break