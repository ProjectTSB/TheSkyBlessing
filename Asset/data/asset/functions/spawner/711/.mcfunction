#> asset:spawner/711/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-87,Y:155,Z:-31}] in overworld positioned -87 155 -31 if entity @p[distance=..40] run function asset:spawner/711/register