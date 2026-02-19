#> asset:island/2147483647/register
#
#
#
# @within function asset_manager:island/register/register.m

execute unless loaded 16 4 0 run return 1

# ID (int)
    data modify storage asset:island ID set value 2147483647
# Pos ([int] @ 3)
    data modify storage asset:island Pos set value [16,4,0]
# Rotation (float)
    data modify storage asset:island Rotation set value 0.0f
# BOSS ID (int) (Optional)
    data modify storage asset:island BossID set value 327
    data modify storage asset:island BossDatapack set value "AJ_eclael"
