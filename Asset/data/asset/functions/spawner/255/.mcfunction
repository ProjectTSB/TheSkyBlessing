#> asset:spawner/255/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:118,Y:160,Z:-106}] in overworld positioned 118 160 -106 if entity @p[distance=..40] run function asset:spawner/255/register