#> asset:island/31/register/register
#
# 島の定義データ
#
# @within function asset:island/31/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:220,Y:125,Z:-43}

# ID (int)
    data modify storage asset:island ID set value 31
# Rotation (float)
    data modify storage asset:island Rotation set value -90f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register