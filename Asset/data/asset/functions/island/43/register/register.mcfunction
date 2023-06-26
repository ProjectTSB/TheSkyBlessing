#> asset:island/43/register/register
#
# 島の定義データ
#
# @within function asset:island/43/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:-188,Y:104,Z:99}

# ID (int)
    data modify storage asset:island ID set value 43
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 131

function asset:island/common/register