#> asset:spawner/511/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:94,Y:25,Z:151}] in overworld positioned 94 25 151 if entity @p[distance=..40] run function asset:island/511/register/register