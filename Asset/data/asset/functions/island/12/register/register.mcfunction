#> asset:island/12/register/register
#
# 島の定義データ
#
# @within function asset:island/12/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:83,Y:9,Z:8}

# ID (int)
    data modify storage asset:island ID set value 12
# Rotation (float)
    data modify storage asset:island Rotation set value 90.0f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value

function asset:island/common/register