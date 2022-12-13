#> asset:teleporter/034/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/034/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:23,Y:131,Z:-75}

# ID (int)
    data modify storage asset:teleporter ID set value 34
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register