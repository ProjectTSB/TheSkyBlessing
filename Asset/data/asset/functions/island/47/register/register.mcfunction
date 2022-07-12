#> asset:island/47/register/register
#
# 島の定義データ
#
# @within function asset:island/47/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:469,Y:29,Z:266}

# ID (int)
    data modify storage asset:island ID set value 47
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register