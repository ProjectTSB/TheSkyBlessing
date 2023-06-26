#> asset:artifact/0600.xtal/trigger/4.wait_time
#
#
#
# @within function asset:artifact/0600.xtal/trigger/schedule

# スコア減らす
    scoreboard players remove @s GO.Time 1

# スコア0なら実行
    execute if score @s GO.Time matches 0 run function asset:artifact/0600.xtal/trigger/5.slash