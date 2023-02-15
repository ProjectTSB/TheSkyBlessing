#> asset:sacred_treasure/1023.brave_bow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/1023.brave_bow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# スコア持ってないなら0に
    execute unless entity @s[scores={SF.Combo=0..}] run scoreboard players set @s SF.Combo 0

# 攻撃
    execute if entity @s[scores={SF.Combo=0..1}] run function asset:sacred_treasure/1023.brave_bow/trigger/combo/shot_normal
    execute if entity @s[scores={SF.Combo=2}] run function asset:sacred_treasure/1023.brave_bow/trigger/combo/shot_finish

# ウェイトタイム設定
    scoreboard players set @s SF.Wait 13

# コンボカウント
    scoreboard players add @s SF.Combo 1
    scoreboard players set @s[scores={SF.Combo=3..}] SF.Combo 0

# スケジュール開始
    schedule function asset:sacred_treasure/1023.brave_bow/trigger/combo/tick 1t replace
