#> player_manager:mp/regen/do
#
# MPを回復します
#
# @within function player_manager:mp/regen/check

#> Temp
# @private
    #declare score_holder $AmountFloat

# UserStorage呼び出し
    function oh_my_dat:please
# 回復量取得
    execute store result score $Fluctuation Lib run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MPRegen 10
# MP回復量を整数部と少数部に分離する
    # $AmountFloatにコピー
        scoreboard players operation $AmountFloat Temporary = $Fluctuation Lib
    # 10で除算
        scoreboard players operation $Fluctuation Lib /= $10 Const
    # 10で剰余算
        scoreboard players operation $AmountFloat Temporary %= $10 Const
# 小数点の桁あがりチェック
    scoreboard players operation @s MPFloat += $AmountFloat Temporary
    execute if score @s MPFloat matches 10.. run scoreboard players add $Fluctuation Lib 1
    scoreboard players operation @s MPFloat %= $10 Const
# 回復
    function lib:mp/fluctuation
# クールダウンリセット
    scoreboard players set @s MPRegenCooldown 0
# リセット
     scoreboard players reset $AmountFloat Temporary