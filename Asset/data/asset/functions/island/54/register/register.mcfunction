#> asset:island/54/register/register
#
# 島の定義データ
#
# @within function asset:island/54/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:195,Y:189,Z:-185}

# ID (int)
    data modify storage asset:island ID set value 54
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 262

function asset:island/common/register