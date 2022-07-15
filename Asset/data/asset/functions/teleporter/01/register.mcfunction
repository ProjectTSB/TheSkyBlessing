#> asset:teleporter/01/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/01/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:100,Y:160,Z:451}

# ID (int)
    data modify storage asset:teleporter ID set value 301
# GroupID (string)
    data modify storage asset:teleporter GroupID set value end
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value VisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register