#> asset:spawner/069/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:175,Y:8,Z:92}] in overworld positioned 175 8 92 if entity @p[distance=..40] run function asset:island/069/register/register