#> asset:sacred_treasure/1022.brave_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# スコア持ってないなら0に
    execute unless entity @s[scores={SE.Combo=0..}] run scoreboard players set @s SE.Combo 0

# 攻撃
    # コンボ1 射程2
        scoreboard players set @s[scores={SE.Combo=0}] SE.Range 2
        execute if entity @s[scores={SE.Combo=0}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_search
    # コンボ2 射程3
        scoreboard players set @s[scores={SE.Combo=0}] SE.Range 3
        execute if entity @s[scores={SE.Combo=1}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_search
    # コンボ3 射程4,5,6
        execute if entity @s[scores={SE.Combo=2}] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_set_burst_count

# コンボカウント
    scoreboard players set @s[scores={SE.Combo=0..1}] SE.Wait 8
    scoreboard players set @s[scores={SE.Combo=2}] SE.Wait 16
    scoreboard players add @s SE.Combo 1
    scoreboard players set @s[scores={SE.Combo=3..}] SE.Combo 0

# スケジュール開始
    schedule function asset:sacred_treasure/1022.brave_wand/trigger/combo/tick 1t replace
