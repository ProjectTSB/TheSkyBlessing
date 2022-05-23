#> asset:mob/0229.burning_blaze.shot/hit
#
#
#
# @within function asset:mob/0229.burning_blaze.shot/tick/2.tick

# ダメージ
    data modify storage lib: Argument set value {Damage:22,AttackType:Physical,AttackElement:Fire}
    function lib:damage/modifier
    execute as @a[tag=Hit,distance=..2] run function lib:damage/
    data remove storage lib: Argument

# タグ消し
    tag @a[tag=Hit,distance=..5] remove Hit