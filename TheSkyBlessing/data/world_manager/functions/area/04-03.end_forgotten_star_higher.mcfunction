#> world_manager:area/04-03.end_forgotten_star_higher
#
#
#
# @within function world_manager:area/04.end/on_tick

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
    data modify storage lib: Argument.Damage set value 3
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.Fixed set value true
    data modify storage lib: Argument.BypassResist set value true
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは溶岩の温度を甘く見ていた","with":[{"selector":"@s"}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは溶けた","with":[{"selector":"@s"}]}]'
# ダメージ (スペクテイターだろうがダメージを食らうようにする)
    execute if entity @s[gamemode=!creative,tag=InLava] run function lib:damage/
    function lib:damage/reset
# リセット
    tag @s remove InLava