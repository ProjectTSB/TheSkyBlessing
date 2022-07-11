#> asset:spawner/481/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-104,Y:207,Z:-18}] in overworld positioned -104 207 -18 if entity @p[distance=..40] run function asset:spawner/481/register