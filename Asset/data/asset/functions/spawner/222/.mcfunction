#> asset:spawner/222/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:178,Y:73,Z:-100}] in overworld positioned 178 73 -100 if entity @p[distance=..40] run function asset:island/222/register/register