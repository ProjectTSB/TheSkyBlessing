#> asset:artifact/0930.z_flag/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0930.z_flag/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# 補正の追加(物理ダメージが25%上昇する)
    data modify storage api: Argument.UUID set value [I;1,1,930,7]
    data modify storage api: Argument.Amount set value 0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    execute if entity @s[tag=!PU.Modifier] run function api:modifier/attack/physical/add

# 補正の追加(防御が25%減少する)
    data modify storage api: Argument.UUID set value [I;1,1,930,7]
    data modify storage api: Argument.Amount set value -0.35
    data modify storage api: Argument.Operation set value "multiply_base"
    execute if entity @s[tag=!PU.Modifier] run function api:modifier/defense/base/add

# APIの引数が残ったままfunctionを抜けるの防止用
    execute if entity @s[tag=PU.Modifier] run data remove storage api: Argument.UUID
    execute if entity @s[tag=PU.Modifier] run data remove storage api: Argument.Amount
    execute if entity @s[tag=PU.Modifier] run data remove storage api: Argument.Operation

# 効果付与のフラグ設定
    tag @s[tag=!PU.Modifier] add PU.Modifier