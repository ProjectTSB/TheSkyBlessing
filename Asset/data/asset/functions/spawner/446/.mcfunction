#> asset:spawner/446/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-77,Y:166,Z:144}] in overworld positioned -77 166 144 if entity @p[distance=..40] run function asset:spawner/446/register