#> asset:spawner/370/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:221,Y:173,Z:125}] in overworld positioned 221 173 125 if entity @p[distance=..40] run function asset:island/370/register/register