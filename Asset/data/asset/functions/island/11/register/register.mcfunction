#> asset:island/11/register/register
#
# 島の定義データ
#
# @within function asset:island/11/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:73,Y:21,Z:46}

# ID (int)
    data modify storage asset:island ID set value 11
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register