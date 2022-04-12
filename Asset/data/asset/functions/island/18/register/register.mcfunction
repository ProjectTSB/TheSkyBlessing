#> asset:island/18/register/register
#
# 島の定義データ
#
# @within function asset:island/18/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-16,Y:41,Z:113}

# ID (int)
    data modify storage asset:island ID set value 18
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register