#> asset:spawner/688/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:456,Y:163,Z:60}] in overworld positioned 456 163 60 if entity @p[distance=..40] run function asset:spawner/688/register