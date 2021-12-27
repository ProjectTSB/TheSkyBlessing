#> asset:island/15/register/
#
# 島の呪われた神器の位置を書く
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:Overworld,X:90,Y:15,Z:75}] in overworld positioned 90 15 75 if entity @p[distance=..40] run function asset:island/15/register/register