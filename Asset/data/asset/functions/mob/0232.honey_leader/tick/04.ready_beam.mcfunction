#> asset:mob/0232.honey_leader/tick/04.ready_beam
#
# ビーム準備
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

#> Private
# @private
    #declare tag Target

# 対象となるプレイヤーにTagをつける
    execute positioned ^ ^ ^10 run tag @p[gamemode=!spectator,distance=..10] add Target

# NoAI
    data modify entity @s NoAI set value 1b

# Tagがついたプレイヤーの方向を見てパーティクルを出す
    execute anchored eyes facing entity @p[tag=Target,distance=..20] eyes positioned ^ ^ ^0.3 run function asset:mob/0232.honey_leader/tick/05.vfx

# Targetを見る
    execute anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=Target,distance=..20] eyes

# Tag消し
    tag @a[tag=Target,distance=..20] remove Target