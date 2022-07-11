#> asset:spawner/718/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-150,Y:90,Z:158}] in overworld positioned -150 90 158 if entity @p[distance=..40] run function asset:spawner/718/register