#> asset:island/06/register/register
#
# 島の定義データ
#
# @within function asset:island/06/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-95,Y:37,Z:25}

# ID (int)
    data modify storage asset:island ID set value 6
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register