#> asset:artifact/0976.brave_sword/trigger/combo/2.main
#
# コンボカウントを減らしたり、持続判定出してる
#
# @within function asset:artifact/0976.brave_sword/trigger/combo/1.tick

# コンボカウント部分
    scoreboard players remove @s R4.Wait 1

# 0でリセット
    execute if entity @s[scores={R4.Wait=0}] run function asset:artifact/0976.brave_sword/trigger/combo/3.reset_combo