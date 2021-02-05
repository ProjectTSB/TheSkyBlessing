#> asset:sacred_treasure/0291.ender_chest_carrier/3.3.1.remove_tag
#
# キャリアーのinitタグ消去
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager

# キャリアーのinitタグ消去＆無敵化
    tag @s remove YvCarrierInit

    # universalAnger false
        #data modify entity @s Invulnerable set value 1b


