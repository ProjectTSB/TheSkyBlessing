#> asset:island/15/register/register
#
# 島の定義データ
#
# @within function asset:island/15/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:89,Y:15,Z:76}

# ID (int)
    data modify storage asset:island ID set value 15
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register