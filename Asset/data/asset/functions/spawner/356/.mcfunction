#> asset:spawner/356/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:61,Y:220,Z:123}] in overworld positioned 61 220 123 if entity @p[distance=..40] run function asset:island/356/register/register