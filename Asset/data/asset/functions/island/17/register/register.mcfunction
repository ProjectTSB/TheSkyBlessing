#> asset:island/17/register/register
#
# 島の定義データ
#
# @within function asset:island/17/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:241,Y:59,Z:46}

# ID (int)
    data modify storage asset:island ID set value 17
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 174

function asset:island/common/register