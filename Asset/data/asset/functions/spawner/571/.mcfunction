#> asset:spawner/571/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:416,Y:160,Z:111}] in overworld positioned 416 160 111 if entity @p[distance=..40] run function asset:island/571/register/register