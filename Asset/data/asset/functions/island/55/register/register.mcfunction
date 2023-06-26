#> asset:island/55/register/register
#
# 島の定義データ
#
# @within function asset:island/55/register/


# 重複防止レジストリへの登録
    data modify storage asset:island DPR append value {D:the_nether,X:3,Y:73,Z:128}

# ID (int)
    data modify storage asset:island ID set value 55
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 22

function asset:island/common/register