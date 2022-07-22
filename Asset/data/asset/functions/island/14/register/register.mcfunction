#> asset:island/14/register/register
#
# 島の定義データ
#
# @within function asset:island/14/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:122,Y:39,Z:41}

# ID (int)
    data modify storage asset:island ID set value 14
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register