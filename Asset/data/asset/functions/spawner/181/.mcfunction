#> asset:spawner/181/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:210,Y:152,Z:-45}] in overworld positioned 210 152 -45 if entity @p[distance=..40] run function asset:island/181/register/register