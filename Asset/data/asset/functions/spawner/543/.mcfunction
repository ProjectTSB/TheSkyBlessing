#> asset:spawner/543/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:12,Y:118,Z:-84}] in overworld positioned 12 118 -84 if entity @p[distance=..40] run function asset:island/543/register/register