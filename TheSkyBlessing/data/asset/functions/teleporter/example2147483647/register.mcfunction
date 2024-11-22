#> asset:teleporter/example2147483647/register
#
#
#
# @within function asset:teleporter/example2147483647/

# 重複防止レジストリに登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:39,Y:7,Z:-5}

# ID (int)
    data modify storage asset:teleporter ID set value 2147483647
# GroupID (string)
    data modify storage asset:teleporter GroupID set value "example"
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 (Optional)
    data modify storage asset:teleporter Color set value 53706

# 登録
    function asset:teleporter/common/register
