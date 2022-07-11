#> asset:spawner/322/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:394,Y:85,Z:269}] in overworld positioned 394 85 269 if entity @p[distance=..40] run function asset:island/322/register/register