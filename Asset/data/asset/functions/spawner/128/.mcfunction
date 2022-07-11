#> asset:spawner/128/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:124,Y:27,Z:266}] in overworld positioned 124 27 266 if entity @p[distance=..40] run function asset:island/128/register/register