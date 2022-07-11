#> asset:spawner/180/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:223,Y:154,Z:-47}] in overworld positioned 223 154 -47 if entity @p[distance=..40] run function asset:spawner/180/register