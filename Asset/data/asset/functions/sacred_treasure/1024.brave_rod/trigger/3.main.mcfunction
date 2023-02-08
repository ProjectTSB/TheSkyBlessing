#> asset:sacred_treasure/1024.brave_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# スコア持ってないなら0に
    execute unless entity @s[scores={SD.Combo=0..}] run scoreboard players set @s SD.Combo 0

# 攻撃
    execute if entity @s[scores={SD.Combo=0}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1
    execute if entity @s[scores={SD.Combo=1}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1
    execute if entity @s[scores={SD.Combo=2}] run function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3

# コンボカウント
    scoreboard players set @s[scores={SD.Combo=0..1}] SD.Wait 15
    scoreboard players set @s[scores={SD.Combo=2}] SD.Wait 20
    scoreboard players add @s SD.Combo 1
    scoreboard players set @s[scores={SD.Combo=3..}] SD.Combo 0

# スケジュール開始
    schedule function asset:sacred_treasure/1024.brave_rod/trigger/combo/tick 1t replace