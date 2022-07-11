#> asset:spawner/254/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-122,Y:49,Z:-14}] in overworld positioned -122 49 -14 if entity @p[distance=..40] run function asset:spawner/254/register