#> asset:spawner/364/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-208,Y:117,Z:235}] in overworld positioned -208 117 235 if entity @p[distance=..40] run function asset:spawner/364/register