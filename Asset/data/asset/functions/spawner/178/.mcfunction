#> asset:spawner/178/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:152,Y:82,Z:45}] in overworld positioned 152 82 45 if entity @p[distance=..40] run function asset:island/178/register/register