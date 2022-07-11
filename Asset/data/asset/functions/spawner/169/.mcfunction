#> asset:spawner/169/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-104,Y:93,Z:254}] in overworld positioned -104 93 254 if entity @p[distance=..40] run function asset:island/169/register/register