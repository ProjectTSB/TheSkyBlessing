#> asset:spawner/702/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:436,Y:142,Z:76}] in overworld positioned 436 142 76 if entity @p[distance=..40] run function asset:spawner/702/register