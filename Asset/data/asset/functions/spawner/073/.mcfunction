#> asset:spawner/073/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:212,Y:7,Z:85}] in overworld positioned 212 7 85 if entity @p[distance=..40] run function asset:island/073/register/register