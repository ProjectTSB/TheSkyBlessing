#> asset:spawner/614/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:195,Y:216,Z:-185}] in overworld positioned 195 216 -185 if entity @p[distance=..40] run function asset:spawner/614/register