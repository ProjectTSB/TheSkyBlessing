#> asset:spawner/208/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-83,Y:143,Z:254}] in overworld positioned -83 143 254 if entity @p[distance=..40] run function asset:spawner/208/register