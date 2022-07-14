#> asset:island/46/register/register
#
# 島の定義データ
#
# @within function asset:island/46/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:-208,Y:59,Z:233}

# ID (int)
    data modify storage asset:island ID set value 46
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 120

function asset:island/common/register