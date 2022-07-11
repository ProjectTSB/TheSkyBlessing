#> asset:spawner/199/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:118,Y:160,Z:-106}] in overworld positioned 118 160 -106 if entity @p[distance=..40] run function asset:island/199/register/register