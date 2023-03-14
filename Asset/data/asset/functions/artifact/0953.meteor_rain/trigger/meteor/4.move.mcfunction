#> asset:artifact/0953.meteor_rain/trigger/meteor/4.move
#
# 移動処理
#
# @within function
#   asset:artifact/0953.meteor_rain/trigger/meteor/3.main
#   asset:artifact/0953.meteor_rain/trigger/meteor/4.move

# パーティクル
    particle dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 1
    particle dust 0.2 0.2 0.2 1.5 ~ ~ ~ 0.1 0.1 0.1 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={QH.MoveTimesPerTick=1..,QH.Range=1..}] run scoreboard players operation @s QH.MoveTimesPerTick = @s QH.Speed

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s QH.MoveTimesPerTick 1
    scoreboard players remove @s QH.Range 1

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:artifact/0953.meteor_rain/trigger/meteor/5.explosion

# キル
    execute if entity @s[scores={QH.Range=..0}] run function asset:artifact/0953.meteor_rain/trigger/meteor/5.explosion

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0953.meteor_rain/trigger/meteor/5.explosion

# 再帰
    execute if entity @s[scores={QH.MoveTimesPerTick=1..,QH.Range=1..}] at @s run function asset:artifact/0953.meteor_rain/trigger/meteor/4.move