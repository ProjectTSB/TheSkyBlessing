#> asset:spawner/131/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:182,Y:100,Z:265}] in overworld positioned 182 100 265 if entity @p[distance=..40] run function asset:island/131/register/register