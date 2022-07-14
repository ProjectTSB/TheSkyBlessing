#> asset:spawner/620/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-160,Y:223,Z:-2}] in overworld positioned -160 223 -2 if entity @p[distance=..40] run function asset:spawner/620/register