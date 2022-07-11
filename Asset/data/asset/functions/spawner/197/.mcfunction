#> asset:spawner/197/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:116,Y:170,Z:-116}] in overworld positioned 116 170 -116 if entity @p[distance=..40] run function asset:island/197/register/register