#> asset:spawner/713/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-104,Y:191,Z:-18}] in overworld positioned -104 191 -18 if entity @p[distance=..40] run function asset:spawner/713/register