#> asset:spawner/633/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-206,Y:220,Z:-2}] in overworld positioned -206 220 -2 if entity @p[distance=..40] run function asset:spawner/633/register