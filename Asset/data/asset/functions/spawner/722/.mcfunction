#> asset:spawner/722/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-209,Y:104,Z:256}] in overworld positioned -209 104 256 if entity @p[distance=..40] run function asset:spawner/722/register