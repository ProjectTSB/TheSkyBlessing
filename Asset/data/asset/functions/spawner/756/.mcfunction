#> asset:spawner/756/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:198,Y:182,Z:-199}] in overworld positioned 198 182 -199 if entity @p[distance=..40] run function asset:island/756/register/register