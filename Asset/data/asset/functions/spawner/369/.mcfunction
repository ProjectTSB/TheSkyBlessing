#> asset:spawner/369/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:248,Y:168,Z:101}] in overworld positioned 248 168 101 if entity @p[distance=..40] run function asset:island/369/register/register