#> asset:island/33/register/register
#
# 島の定義データ
#
# @within function asset:island/33/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:339,Y:28,Z:-80}

# ID (int)
    data modify storage asset:island ID set value 33
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 104

function asset:island/common/register