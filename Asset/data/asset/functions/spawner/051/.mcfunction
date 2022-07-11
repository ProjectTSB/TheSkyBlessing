#> asset:spawner/051/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:227,Y:59,Z:46}] in overworld positioned 227 59 46 if entity @p[distance=..40] run function asset:island/051/register/register