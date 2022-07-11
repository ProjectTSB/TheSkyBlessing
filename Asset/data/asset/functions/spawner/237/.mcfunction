#> asset:spawner/237/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-52,Y:175,Z:-187}] in overworld positioned -52 175 -187 if entity @p[distance=..40] run function asset:spawner/237/register