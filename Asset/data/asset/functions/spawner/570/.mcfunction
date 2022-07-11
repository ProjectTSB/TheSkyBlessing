#> asset:spawner/570/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:428,Y:115,Z:60}] in overworld positioned 428 115 60 if entity @p[distance=..40] run function asset:island/570/register/register