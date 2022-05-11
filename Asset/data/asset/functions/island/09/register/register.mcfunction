#> asset:island/09/register/register
#
# 島の定義データ
#
# @within function asset:island/09/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:12,Y:18,Z:74}

# ID (int)
    data modify storage asset:island ID set value 9
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register