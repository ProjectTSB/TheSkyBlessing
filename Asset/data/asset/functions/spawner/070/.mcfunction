#> asset:spawner/070/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:168,Y:8,Z:123}] in overworld positioned 168 8 123 if entity @p[distance=..40] run function asset:island/070/register/register