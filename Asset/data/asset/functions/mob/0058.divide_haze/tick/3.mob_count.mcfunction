#> asset:mob/0058.divide_haze/tick/3.mob_count
#
#
#
# @within function asset:mob/0058.divide_haze/tick/2.tick

#> Private
# @private
    #declare score_holder $MobCount

# 数をチェック
    execute store result score $MobCount Temporary if entity @e[type=skeleton,scores={MobID=58},distance=..32,limit=3]

# 2体以下なら数を増やす
    execute if score $MobCount Temporary matches ..2 run function asset:mob/0058.divide_haze/tick/4.divide

# スコアリセット
    scoreboard players reset @s 1M.Tick
    scoreboard players reset $MobCount Temporary