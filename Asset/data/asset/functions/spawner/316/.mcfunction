#> asset:spawner/316/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:286,Y:83,Z:277}] in overworld positioned 286 83 277 if entity @p[distance=..40] run function asset:island/316/register/register