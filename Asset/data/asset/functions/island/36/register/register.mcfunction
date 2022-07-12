#> asset:island/36/register/register
#
# 島の定義データ
#
# @within function asset:island/36/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:175,Y:88,Z:-105}

# ID (int)
    data modify storage asset:island ID set value 36
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register