#> asset:spawner/232/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-71,Y:175,Z:-168}] in overworld positioned -71 175 -168 if entity @p[distance=..40] run function asset:island/232/register/register