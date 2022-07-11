#> asset:spawner/252/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-132,Y:57,Z:-12}] in overworld positioned -132 57 -12 if entity @p[distance=..40] run function asset:spawner/252/register