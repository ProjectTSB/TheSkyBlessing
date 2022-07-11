#> asset:spawner/719/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-203,Y:83,Z:238}] in overworld positioned -203 83 238 if entity @p[distance=..40] run function asset:island/719/register/register