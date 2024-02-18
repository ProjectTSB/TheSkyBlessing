#> asset:artifact/1024.brave_rod/trigger/combo/main
#
#
#
# @within function asset:artifact/1024.brave_rod/trigger/combo/tick

# コンボカウント部分
    scoreboard players remove @s SG.Wait 1

# バーストで放つ
    execute if entity @s[scores={SG.Burst=6}] anchored eyes positioned ^ ^ ^ run function asset:artifact/1024.brave_rod/trigger/combo/beam3_burst
    execute if entity @s[scores={SG.Burst=4}] anchored eyes positioned ^ ^ ^ run function asset:artifact/1024.brave_rod/trigger/combo/beam3_burst
    execute if entity @s[scores={SG.Burst=2}] anchored eyes positioned ^ ^ ^ run function asset:artifact/1024.brave_rod/trigger/combo/beam3_burst

# バーストカウント減らす
    scoreboard players remove @s[scores={SG.Burst=1..}] SG.Burst 1
    scoreboard players reset @s[scores={SG.Burst=0}] SG.Burst

# 0でリセット
    execute if entity @s[scores={SG.Wait=0}] run function asset:artifact/1024.brave_rod/trigger/combo/reset