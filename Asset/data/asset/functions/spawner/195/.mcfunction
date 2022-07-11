#> asset:spawner/195/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:96,Y:160,Z:-96}] in overworld positioned 96 160 -96 if entity @p[distance=..40] run function asset:island/195/register/register