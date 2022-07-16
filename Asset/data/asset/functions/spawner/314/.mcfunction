#> asset:spawner/314/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-123,Y:144,Z:-63}] in overworld positioned -123 144 -63 if entity @p[distance=..40] run function asset:spawner/314/register