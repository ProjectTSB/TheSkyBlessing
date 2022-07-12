#> asset:spawner/245/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:122,Y:160,Z:-116}] in overworld positioned 122 160 -116 if entity @p[distance=..40] run function asset:spawner/245/register