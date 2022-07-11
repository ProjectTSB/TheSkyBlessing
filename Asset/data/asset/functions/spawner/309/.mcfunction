#> asset:spawner/309/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:288,Y:41,Z:243}] in overworld positioned 288 41 243 if entity @p[distance=..40] run function asset:island/309/register/register