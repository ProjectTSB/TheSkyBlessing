#> asset:spawner/557/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:445,Y:84,Z:103}] in overworld positioned 445 84 103 if entity @p[distance=..40] run function asset:island/557/register/register