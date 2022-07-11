#> asset:spawner/728/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:111,Y:144,Z:-106}] in overworld positioned 111 144 -106 if entity @p[distance=..40] run function asset:island/728/register/register