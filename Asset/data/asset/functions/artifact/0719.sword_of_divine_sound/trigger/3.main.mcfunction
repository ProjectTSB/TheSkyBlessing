#> asset:artifact/0719.sword_of_divine_sound/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $201

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] positioned ~ ~0.3 ~ run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/

# 201を定義
    scoreboard players set $201 Temporary 201

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $201 Temporary
# 最低値を加算
    scoreboard players add $Random Temporary 650

# 設定
    execute store result storage lib: Argument.Damage float 1.0 run scoreboard players get $Random Temporary
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $Random Temporary
    scoreboard players reset $201 Temporary