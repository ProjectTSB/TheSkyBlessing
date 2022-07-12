#> asset:spawner/060/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:109,Y:12,Z:45}] in overworld positioned 109 12 45 if entity @p[distance=..40] run function asset:spawner/060/register