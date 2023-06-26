#> asset:teleporter/011/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/011/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:71,Y:21,Z:46}

# ID (int)
    data modify storage asset:teleporter ID set value 11
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register