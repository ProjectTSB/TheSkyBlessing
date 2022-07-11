#> asset:spawner/027/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-129,Y:27,Z:72}] in overworld positioned -129 27 72 if entity @p[distance=..40] run function asset:spawner/027/register