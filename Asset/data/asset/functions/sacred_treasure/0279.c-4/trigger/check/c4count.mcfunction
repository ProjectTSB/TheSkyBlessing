#> asset:sacred_treasure/0279.c-4/trigger/check/c4count
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Count

# 数みる
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=zombie,tag=7R.C4,distance=..100]
    # もしいたらテレポ
        execute if score $Count Temporary matches 15.. run tag @s add FailRecovery
    # リセット
        scoreboard players reset $Count Temporary