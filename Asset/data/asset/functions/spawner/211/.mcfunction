#> asset:spawner/211/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:31,Y:130,Z:-80}] in overworld positioned 31 130 -80 if entity @p[distance=..40] run function asset:spawner/211/register