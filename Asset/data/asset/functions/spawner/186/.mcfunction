#> asset:spawner/186/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:238,Y:132,Z:-80}] in overworld positioned 238 132 -80 if entity @p[distance=..40] run function asset:island/186/register/register