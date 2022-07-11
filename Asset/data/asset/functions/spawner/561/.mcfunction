#> asset:spawner/561/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:422,Y:97,Z:33}] in overworld positioned 422 97 33 if entity @p[distance=..40] run function asset:island/561/register/register