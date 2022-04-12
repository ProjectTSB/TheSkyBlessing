#> asset:island/11/register/register
#
# 島の定義データ
#
# @within function asset:island/11/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:71,Y:5,Z:51}

# ID (int)
    data modify storage asset:island ID set value 11
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register