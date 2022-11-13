#> asset:teleporter/302/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/302/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:the_end,X:96,Y:91,Z:1872}

# ID (int)
    data modify storage asset:teleporter ID set value 302
# GroupID (string)
    data modify storage asset:teleporter GroupID set value end
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value VisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register