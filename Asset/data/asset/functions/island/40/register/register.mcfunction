#> asset:island/40/register/register
#
# 島の定義データ
#
# @within function asset:island/40/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:-146,Y:106,Z:-110}

# ID (int)
    data modify storage asset:island ID set value 40
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 129

function asset:island/common/register