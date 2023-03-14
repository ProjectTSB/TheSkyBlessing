#> asset:artifact/0973.call_rod_spirit/trigger/shot/4.move
#
# 再帰加速
#
# @within function
#   asset:artifact/0973.call_rod_spirit/trigger/shot/3.main
#   asset:artifact/0973.call_rod_spirit/trigger/shot/4.move

# パーティクル
    particle dust 0.776 0.91 1 0.3 ~ ~ ~ 0 0 0 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={R1.MoveTimesPerTick=1..,R1.Range=1..}] run scoreboard players operation @s R1.MoveTimesPerTick = @s R1.Speed

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s R1.MoveTimesPerTick 1
    scoreboard players remove @s R1.Range 1

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0973.call_rod_spirit/trigger/shot/6.break

# キル
    execute if entity @s[scores={R1.Range=0}] run function asset:artifact/0973.call_rod_spirit/trigger/shot/6.break

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0973.call_rod_spirit/trigger/shot/5.hit

# 再帰
    execute if entity @s[scores={R1.MoveTimesPerTick=1..,R1.Range=1..}] at @s run function asset:artifact/0973.call_rod_spirit/trigger/shot/4.move