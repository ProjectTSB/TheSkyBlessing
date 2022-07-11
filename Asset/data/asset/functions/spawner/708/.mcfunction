#> asset:spawner/708/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:420,Y:117,Z:32}] in overworld positioned 420 117 32 if entity @p[distance=..40] run function asset:island/708/register/register