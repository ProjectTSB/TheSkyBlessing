#> asset:spawner/130/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:166,Y:98,Z:259}] in overworld positioned 166 98 259 if entity @p[distance=..40] run function asset:island/130/register/register