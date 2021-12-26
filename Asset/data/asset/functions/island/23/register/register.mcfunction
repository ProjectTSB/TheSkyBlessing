#> asset:island/23/register/register
#
# 島の定義データ
#
# @within function asset:island/23/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:397,Y:143,Z:83}

# ID (int)
    data modify storage asset:island ID set value 23
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 175

function asset:island/common/register