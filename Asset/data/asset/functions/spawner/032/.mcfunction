#> asset:spawner/032/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:73,Y:35,Z:32}] in overworld positioned 73 35 32 if entity @p[distance=..40] run function asset:island/032/register/register