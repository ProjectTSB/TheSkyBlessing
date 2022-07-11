#> asset:spawner/729/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:96,Y:151,Z:-113}] in overworld positioned 96 151 -113 if entity @p[distance=..40] run function asset:island/729/register/register