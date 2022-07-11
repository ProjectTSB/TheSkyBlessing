#> asset:spawner/189/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:122,Y:160,Z:-116}] in overworld positioned 122 160 -116 if entity @p[distance=..40] run function asset:island/189/register/register