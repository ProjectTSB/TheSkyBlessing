#> asset:island/32/register/register
#
# 島の定義データ
#
# @within function asset:island/32/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:103,Y:117,Z:-104}

# ID (int)
    data modify storage asset:island ID set value 32
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 237

function asset:island/common/register