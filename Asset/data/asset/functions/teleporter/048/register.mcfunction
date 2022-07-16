#> asset:teleporter/048/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/048/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:22,Y:168,Z:403}

# ID (int)
    data modify storage asset:teleporter ID set value 48
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register