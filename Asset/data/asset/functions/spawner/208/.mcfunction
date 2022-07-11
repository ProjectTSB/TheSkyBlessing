#> asset:spawner/208/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:103,Z:-77}] in overworld positioned 338 103 -77 if entity @p[distance=..40] run function asset:island/208/register/register