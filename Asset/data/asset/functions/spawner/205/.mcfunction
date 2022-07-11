#> asset:spawner/205/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:337,Y:148,Z:-78}] in overworld positioned 337 148 -78 if entity @p[distance=..40] run function asset:island/205/register/register