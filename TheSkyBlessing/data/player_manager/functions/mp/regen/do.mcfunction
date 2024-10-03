#> player_manager:mp/regen/do
#
# MPを回復します
#
# @within function player_manager:mp/regen/check

#> Temp
# @private
    #declare score_holder $isNegative
    #declare score_holder $Fluctuation
    #declare score_holder $AmountFloat

# UserStorage呼び出し
    function oh_my_dat:please
# 回復量計算
    execute store result score $Fluctuation Lib run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MPRegen 10
    scoreboard players operation $Fluctuation Lib *= @s MPMax
    scoreboard players operation $Fluctuation Lib /= $100 Const
# 負数を強制する
    execute store success score $isNegative Temporary if score $Fluctuation Lib matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Fluctuation Lib *= $-1 Const
# MP回復量を整数部と少数部に分離する
    # $AmountFloatにコピー
        scoreboard players operation $AmountFloat Temporary = $Fluctuation Lib
    # 10で除算
        scoreboard players operation $Fluctuation Lib /= $10 Const
    # 10で剰余算
        scoreboard players operation $AmountFloat Temporary %= $10 Const
# 負数なら戻す
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Fluctuation Lib *= $-1 Const
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $AmountFloat Lib *= $-1 Const
# 小数点の桁あがりチェック
    scoreboard players operation @s MPFloat += $AmountFloat Temporary
    execute if score @s MPFloat matches 10.. run scoreboard players add $Fluctuation Lib 1
    execute if score @s MPFloat matches 10.. run scoreboard players remove @s MPFloat 10
    execute if score @s MPFloat matches ..-1 run scoreboard players remove $Fluctuation Lib 1
    execute if score @s MPFloat matches ..-1 run scoreboard players add @s MPFloat 10
# 表示を無効化する
    data modify storage lib: Argument.DisableLog set value true
# 回復
    function lib:mp/fluctuation
# クールダウンリセット
    scoreboard players set @s MPRegenCooldown 0
# リセット
    scoreboard players reset $AmountFloat Temporary
    scoreboard players reset $isNegative Temporary
