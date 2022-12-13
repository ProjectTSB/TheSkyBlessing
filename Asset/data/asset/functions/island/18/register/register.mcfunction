#> asset:island/18/register/register
#
# 島の定義データ
#
# @within function asset:island/18/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:-58,Y:59,Z:134}

# ID (int)
    data modify storage asset:island ID set value 18
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register