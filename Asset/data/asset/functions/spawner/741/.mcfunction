#> asset:spawner/741/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-104,Y:196,Z:-11}] in overworld positioned -104 196 -11 if entity @p[distance=..40] run function asset:island/741/register/register