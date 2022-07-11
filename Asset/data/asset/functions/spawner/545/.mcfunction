#> asset:spawner/545/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:23,Y:118,Z:-66}] in overworld positioned 23 118 -66 if entity @p[distance=..40] run function asset:spawner/545/register