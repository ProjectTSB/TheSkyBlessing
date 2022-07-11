#> asset:spawner/366/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:245,Y:169,Z:172}] in overworld positioned 245 169 172 if entity @p[distance=..40] run function asset:island/366/register/register