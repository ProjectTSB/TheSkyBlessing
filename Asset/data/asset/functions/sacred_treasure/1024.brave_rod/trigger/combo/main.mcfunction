#> asset:sacred_treasure/1024.brave_rod/trigger/combo/main
#
#
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/tick

# コンボカウント部分
    scoreboard players remove @s SD.Wait 1

# バーストで放つ
    execute if entity @s[scores={SD.Burst=6}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst
    execute if entity @s[scores={SD.Burst=4}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst
    execute if entity @s[scores={SD.Burst=2}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst

# バーストカウント減らす
    scoreboard players remove @s[scores={SD.Burst=1..}] SD.Burst 1
    scoreboard players reset @s[scores={SD.Burst=0}] SD.Burst

# 0でリセット
    execute if entity @s[scores={SD.Wait=0}] run function asset:sacred_treasure/1024.brave_rod/trigger/combo/reset