#> asset:island/13/register/register
#
# 島の定義データ
#
# @within function asset:island/13/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:182,Y:9,Z:-38}

# ID (int)
    data modify storage asset:island ID set value 13
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 55

function asset:island/common/register