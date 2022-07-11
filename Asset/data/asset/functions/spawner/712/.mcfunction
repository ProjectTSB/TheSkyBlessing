#> asset:spawner/712/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-90,Y:147,Z:-31}] in overworld positioned -90 147 -31 if entity @p[distance=..40] run function asset:spawner/712/register