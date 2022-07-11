#> asset:spawner/237/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:210,Y:152,Z:-45}] in overworld positioned 210 152 -45 if entity @p[distance=..40] run function asset:spawner/237/register