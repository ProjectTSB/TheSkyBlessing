#> asset:spawner/093/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:15,Y:7,Z:147}] in overworld positioned 15 7 147 if entity @p[distance=..40] run function asset:spawner/093/register