#> asset:spawner/323/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:394,Y:85,Z:263}] in overworld positioned 394 85 263 if entity @p[distance=..40] run function asset:island/323/register/register