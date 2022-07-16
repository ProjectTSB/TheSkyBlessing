#> asset:teleporter/004/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/004/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:-32,Y:9,Z:42}

# ID (int)
    data modify storage asset:teleporter ID set value 4
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register