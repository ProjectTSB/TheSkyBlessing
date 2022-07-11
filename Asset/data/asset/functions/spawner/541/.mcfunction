#> asset:spawner/541/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-84,Y:43,Z:-45}] in overworld positioned -84 43 -45 if entity @p[distance=..40] run function asset:spawner/541/register