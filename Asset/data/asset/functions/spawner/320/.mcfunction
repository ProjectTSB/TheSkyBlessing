#> asset:spawner/320/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:388,Y:79,Z:257}] in overworld positioned 388 79 257 if entity @p[distance=..40] run function asset:island/320/register/register