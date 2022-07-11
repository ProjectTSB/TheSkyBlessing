#> asset:spawner/234/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-65,Y:183,Z:-186}] in overworld positioned -65 183 -186 if entity @p[distance=..40] run function asset:spawner/234/register