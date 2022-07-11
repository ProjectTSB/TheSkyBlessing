#> asset:spawner/709/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:388,Y:113,Z:48}] in overworld positioned 388 113 48 if entity @p[distance=..40] run function asset:island/709/register/register