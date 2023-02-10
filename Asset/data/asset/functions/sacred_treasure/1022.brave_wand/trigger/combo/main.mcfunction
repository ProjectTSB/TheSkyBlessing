#> asset:sacred_treasure/1022.brave_wand/trigger/combo/main
#
# 発動後にTickで実行される部分
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/tick

# フィニッシュのバースト処理
    # バースト1 射程4
        scoreboard players set @s[scores={SE.Burst=6}] SE.Range 4
        execute if score @s SE.Burst matches 6 anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search
    # バースト2 射程5
        scoreboard players set @s[scores={SE.Burst=4}] SE.Range 5
        execute if score @s SE.Burst matches 4 anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search
    # バースト3 射程6
        scoreboard players set @s[scores={SE.Burst=2}] SE.Range 6
        execute if score @s SE.Burst matches 2 anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search

# バースト値下げる
    scoreboard players remove @s[scores={SE.Burst=1..}] SE.Burst 1
    scoreboard players reset @s[scores={SE.Burst=0}] SE.Burst

# コンボ待機スコア下げる
    scoreboard players remove @s SE.Wait 1

# 0でリセット
    execute if entity @s[scores={SE.Wait=0}] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/reset