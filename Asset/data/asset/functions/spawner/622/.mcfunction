#> asset:spawner/622/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-110,Y:104,Z:40}] in overworld positioned -110 104 40 if entity @p[distance=..40] run function asset:spawner/622/register