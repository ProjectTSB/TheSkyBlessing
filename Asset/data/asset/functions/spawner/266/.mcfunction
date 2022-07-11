#> asset:spawner/266/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-187,Y:139,Z:123}] in overworld positioned -187 139 123 if entity @p[distance=..40] run function asset:island/266/register/register