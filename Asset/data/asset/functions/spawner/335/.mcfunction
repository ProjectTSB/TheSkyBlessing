#> asset:spawner/335/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:257,Y:164,Z:266}] in overworld positioned 257 164 266 if entity @p[distance=..40] run function asset:island/335/register/register