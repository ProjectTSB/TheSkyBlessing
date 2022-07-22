#> asset:island/25/register/register
#
# 島の定義データ
#
# @within function asset:island/25/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:23,Y:4,Z:255}

# ID (int)
    data modify storage asset:island ID set value 25
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register