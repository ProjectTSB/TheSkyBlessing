#> asset:teleporter/example2147483643/register
#
#
#
# @within function asset:teleporter/example2147483643/

# 重複防止レジストリに登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:3389,Y:41,Z:-661}

# ID (int)
    data modify storage asset:teleporter ID set value 2147483643
# GroupID (string)
    data modify storage asset:teleporter GroupID set value "example"
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value "white"

# 登録
    function asset:teleporter/common/register