#> asset:teleporter/300/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/300/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR append value {D:the_end,X:98,Y:49,Z:0}

# ID (int)
    data modify storage asset:teleporter ID set value 300
# GroupID (string)
    data modify storage asset:teleporter GroupID set value end
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value Activate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value aqua

function asset:teleporter/common/register