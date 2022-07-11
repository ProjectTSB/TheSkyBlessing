#> asset:teleporter/02/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/02/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR set value {D:overworld,X:-16,Y:21,Z:-2}

# ID (int)
    data modify storage asset:teleporter ID set value 2
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value Activate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value aqua

function asset:teleporter/common/register