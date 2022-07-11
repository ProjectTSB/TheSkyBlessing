#> asset:spawner/500/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:83,Y:7,Z:38}] in overworld positioned 83 7 38 if entity @p[distance=..40] run function asset:island/500/register/register