#> asset:spawner/717/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-139,Y:73,Z:158}] in overworld positioned -139 73 158 if entity @p[distance=..40] run function asset:spawner/717/register