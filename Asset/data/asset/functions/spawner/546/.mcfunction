#> asset:spawner/546/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-48,Y:110,Z:-31}] in overworld positioned -48 110 -31 if entity @p[distance=..40] run function asset:spawner/546/register