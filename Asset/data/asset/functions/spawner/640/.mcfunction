#> asset:spawner/640/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-105,Y:26,Z:144}] in overworld positioned -105 26 144 if entity @p[distance=..40] run function asset:spawner/640/register