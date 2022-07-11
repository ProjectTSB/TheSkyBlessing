#> asset:spawner/021/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-136,Y:34,Z:86}] in overworld positioned -136 34 86 if entity @p[distance=..40] run function asset:island/021/register/register