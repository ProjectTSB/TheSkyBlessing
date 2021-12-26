#> asset:island/32/register/register
#
# 島の定義データ
#
# @within function asset:island/32/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:114,Y:170,Z:-117}

# ID (int)
    data modify storage asset:island ID set value 32
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 104

function asset:island/common/register