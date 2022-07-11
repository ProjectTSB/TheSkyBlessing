#> asset:spawner/285/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-156,Y:175,Z:-11}] in overworld positioned -156 175 -11 if entity @p[distance=..40] run function asset:island/285/register/register