#> asset:spawner/215/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-104,Y:52,Z:260}] in overworld positioned -104 52 260 if entity @p[distance=..40] run function asset:spawner/215/register