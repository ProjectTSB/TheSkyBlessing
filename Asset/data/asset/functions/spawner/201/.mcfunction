#> asset:spawner/201/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:111,Y:143,Z:-77}] in overworld positioned 111 143 -77 if entity @p[distance=..40] run function asset:spawner/201/register