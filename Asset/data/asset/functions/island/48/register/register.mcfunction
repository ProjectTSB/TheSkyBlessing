#> asset:island/48/register/register
#
# 島の定義データ
#
# @within function asset:island/48/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:22,Y:168,Z:405}

# ID (int)
    data modify storage asset:island ID set value 48
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 216

function asset:island/common/register