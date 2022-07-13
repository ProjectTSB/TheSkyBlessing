#> asset:spawner/262/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:104,Y:144,Z:-106}] in overworld positioned 104 144 -106 if entity @p[distance=..40] run function asset:spawner/262/register