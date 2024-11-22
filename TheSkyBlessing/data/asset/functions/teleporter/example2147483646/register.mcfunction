#> asset:teleporter/example2147483646/register
#
#
#
# @within function asset:teleporter/example2147483646/

# 重複防止レジストリに登録
    data modify storage asset:teleporter DPR append value {D:overworld,X:20,Y:13,Z:41}

# ID (int)
    data modify storage asset:teleporter ID set value 2147483646
# GroupID (string)
    data modify storage asset:teleporter GroupID set value "example"
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 (Optional)
    # data modify storage asset:teleporter Color set value 16777215

# 登録
    function asset:teleporter/common/register
