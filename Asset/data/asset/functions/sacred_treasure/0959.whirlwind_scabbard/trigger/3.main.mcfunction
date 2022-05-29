#> asset:sacred_treasure/0959.whirlwind_scabbard/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0959.whirlwind_scabbard/trigger/2.check_condition

#> score_holder
# @private
    #declare score_holder $Base
    #declare score_holder $Count
    #declare score_holder $Multi

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:sacred_treasure/0959.whirlwind_scabbard/trigger/vfx

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:959}}}]

# motionの値の最低値
    scoreboard players set $Base Temporary 140

# 複数個ある場合の追加する値 (X=40×Count)
    execute if score $Count Temporary matches 2.. store result score $Multi Temporary run scoreboard players operation $Count Temporary *= $40 Const

# 合算する
    execute store result storage lib: Argument.VectorMagnitude float 0.01 run scoreboard players operation $Base Temporary += $Multi Temporary

# 対象が天使の場合、本来の値の20%にする
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,distance=..6] store result storage lib: Argument.VectorMagnitude float 0.002 run scoreboard players get $Base Temporary

# motionLibの実行
    data modify storage lib: Argument.KnockbackResist set value 1b
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ -12 run function lib:motion/

# リセット
    scoreboard players reset $Base Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $Multi Temporary
    data remove storage lib: Argument