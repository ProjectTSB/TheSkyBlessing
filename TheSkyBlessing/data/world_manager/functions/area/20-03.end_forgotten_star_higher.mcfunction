#> world_manager:area/20-03.end_forgotten_star_higher
#
#
#
# @within function world_manager:area/20.end/on_tick

#> Private
# @private
    #declare tag NotInLava

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02

# 溶岩に触れていないか判定
# スペクテイターだろうがダメージを食らうようにする
    execute if entity @s[gamemode=!creative,tag=!DevPrivilege] positioned ~0.3 ~0.0 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~0.3 ~0.0 ~-.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~0.0 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~0.0 ~-.3 unless predicate lib:in_lava/include_flowing positioned ~0.3 ~0.9 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~0.3 ~0.9 ~-.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~0.9 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~0.9 ~-.3 unless predicate lib:in_lava/include_flowing positioned ~0.3 ~1.8 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~0.3 ~1.8 ~-.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~1.8 ~0.3 unless predicate lib:in_lava/include_flowing positioned ~-.3 ~1.8 ~-.3 unless predicate lib:in_lava/include_flowing run tag @s add NotInLava

# おおよそ2秒で死ぬようにする
    data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
# デスログ
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは溶岩の温度を甘く見ていた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは溶けた","with":[{"selector":"@s"}]}]'
# ダメージ
    execute if entity @s[tag=!NotInLava] unless score @s LavaDamageCooldown matches 1.. run function api:damage/
    function api:damage/reset

# 溶岩ダメージのクールダウン
    execute if entity @s[tag=!NotInLava] run scoreboard players add @s LavaDamageCooldown 1
    execute if entity @s[tag=!NotInLava] if score @s LavaDamageCooldown matches 10.. run scoreboard players reset @s LavaDamageCooldown

# 溶岩の外に出たならクールダウンをリセット
    execute if entity @s[tag=NotInLava] run scoreboard players reset @s LavaDamageCooldown

# リセット
    tag @s[tag=NotInLava] remove NotInLava
