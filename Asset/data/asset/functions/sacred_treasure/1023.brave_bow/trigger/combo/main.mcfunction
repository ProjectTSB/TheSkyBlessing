#> asset:sacred_treasure/1023.brave_bow/trigger/combo/main
#
# メイン処理
#
# @within function asset:sacred_treasure/1023.brave_bow/trigger/combo/tick

# コンボカウント部分
    scoreboard players remove @s SF.Wait 1

# 0でリセット
    execute if entity @s[scores={SF.Wait=0}] run function asset:sacred_treasure/1023.brave_bow/trigger/combo/reset