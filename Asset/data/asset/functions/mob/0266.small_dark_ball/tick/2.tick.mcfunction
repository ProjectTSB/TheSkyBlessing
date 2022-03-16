#> asset:mob/0266.small_dark_ball/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0266.small_dark_ball/tick/1.trigger

# パーティクル
    particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 7E.Recursive = @s 7E.Speed

# Init
    execute if entity @s[tag=7E.Init] run function asset:mob/0266.small_dark_ball/tick/init

# 移動
    function asset:mob/0266.small_dark_ball/tick/move

# 行動準備