#> asset:spawner/172/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-100,Y:202,Z:247}] in overworld positioned -100 202 247 if entity @p[distance=..40] run function asset:spawner/172/register