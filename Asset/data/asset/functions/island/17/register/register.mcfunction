#> asset:island/17/register/register
#
# 島の定義データ
#
# @within function asset:island/17/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:49,Y:31,Z:57}

# ID (int)
    data modify storage asset:island ID set value 17
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register