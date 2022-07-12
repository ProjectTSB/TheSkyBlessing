#> asset:spawner/356/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-185,Y:175,Z:11}] in overworld positioned -185 175 11 if entity @p[distance=..40] run function asset:spawner/356/register