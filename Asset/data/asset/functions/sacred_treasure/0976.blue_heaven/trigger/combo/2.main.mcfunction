#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/2.main
#
# コンボカウントを減らしたり、持続判定出してる
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/combo/1.tick

# コンボカウント部分
    scoreboard players remove @s R4.Wait 1

# 0でリセット
    execute if entity @s[scores={R4.Wait=0}] run function asset:sacred_treasure/0976.blue_heaven/trigger/combo/3.reset_combo