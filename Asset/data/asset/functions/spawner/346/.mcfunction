#> asset:spawner/346/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-9,Y:156,Z:337}] in overworld positioned -9 156 337 if entity @p[distance=..40] run function asset:island/346/register/register