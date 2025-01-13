#> world_manager:area/20-03.end_forgotten_star_higher
#
#
#
# @within function world_manager:area/20.end/on_tick

#> Val
# @private
    #declare tag InLava

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02

# 溶岩に入ったら死ぬほど痛いダメージを与える
    execute if block ~0.3 ~0.0 ~0.3 lava run tag @s add InLava
    execute if block ~0.3 ~0.0 ~-.3 lava run tag @s add InLava
    execute if block ~-.3 ~0.0 ~0.3 lava run tag @s add InLava
    execute if block ~-.3 ~0.0 ~-.3 lava run tag @s add InLava
    execute if block ~0.3 ~1.8 ~0.3 lava run tag @s add InLava
    execute if block ~0.3 ~1.8 ~-.3 lava run tag @s add InLava
    execute if block ~-.3 ~1.8 ~0.3 lava run tag @s add InLava
    execute if block ~-.3 ~1.8 ~-.3 lava run tag @s add InLava
# おおよそ2秒で死ぬようにする
    data modify storage api: Argument.Damage set value 3
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
# デスログ
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは溶岩の温度を甘く見ていた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは溶けた","with":[{"selector":"@s"}]}]'
# ダメージ (スペクテイターだろうがダメージを食らうようにする)
    execute if entity @s[gamemode=!creative,tag=InLava] run function api:damage/modifier
    execute if entity @s[gamemode=!creative,tag=InLava] run function api:damage/
    function api:damage/reset
# リセット
    tag @s remove InLava
