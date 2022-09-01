#> asset:mob/1013.tultaria_shot/summon/3.init
#
#
#
# @within function asset:mob/1013.tultaria_shot/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# スコア
    scoreboard players set @s S5.Range 400
    scoreboard players set @s S5.Speed 25

# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 1

# マーカーの方向く
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~