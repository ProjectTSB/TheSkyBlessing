#> asset:mob/0058.divide_haze/tick/3.mob_count
#
#
#
# @within function asset:mob/0058.divide_haze/tick/2.tick

# 数をチェック
    execute store result score @s 1M.HazeCount run execute if entity @e[type=skeleton,scores={MobID=58},distance=..20,limit=6]

# 5体以下なら数を増やす
    execute if score @s 1M.HazeCount matches ..5 run function asset:mob/0058.divide_haze/tick/4.divide

# スコアリセット
    scoreboard players reset @s 1M.Tick
    scoreboard players reset @s 1M.HazeCount