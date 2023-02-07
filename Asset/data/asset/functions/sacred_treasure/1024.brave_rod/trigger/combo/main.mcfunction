#> asset:sacred_treasure/1024.brave_rod/trigger/combo/main
#
#
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/tick

# コンボカウント部分
    scoreboard players remove @s SD.Wait 1

# バーストで放つ
    execute if entity @s[scores={SD.Burst=1..}] run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst

# 0でリセット
    execute if entity @s[scores={SD.Wait=0}] run function asset:sacred_treasure/1024.brave_rod/trigger/combo/reset