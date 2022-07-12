#> asset:island/21/register/register
#
# 島の定義データ
#
# @within function asset:island/21/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:overworld,X:92,Y:32,Z:149}

# ID (int)
    data modify storage asset:island ID set value 21
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register