#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/2.main
#
# コンボカウントを減らしたり、持続判定出したり、いっぱいショット撃ったりする
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick

# コンボカウント部分
    scoreboard players remove @s SA.Wait 1

# 0でリセット
    execute if entity @s[scores={SA.Wait=0}] run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/3.reset_combo