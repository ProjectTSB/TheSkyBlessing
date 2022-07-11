#> asset:spawner/144/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:26,Y:32,Z:265}] in overworld positioned 26 32 265 if entity @p[distance=..40] run function asset:island/144/register/register