#> asset:spawner/357/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-161,Y:175,Z:16}] in overworld positioned -161 175 16 if entity @p[distance=..40] run function asset:spawner/357/register