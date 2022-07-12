#> asset:island/28/register/register
#
# 島の定義データ
#
# @within function asset:island/28/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:-141,Y:78,Z:159}

# ID (int)
    data modify storage asset:island ID set value 28
# Rotation (float)
    data modify storage asset:island Rotation set value 90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register