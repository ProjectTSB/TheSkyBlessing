#> asset:artifact/0078.self_destruct_order/trigger/explosion
#
#
#
# @within function
#    asset:artifact/0078.self_destruct_order/trigger/count_down

# ダメージ処理(アイアンゴーレム)
    # 与えるダメージ = 250
        data modify storage lib: Argument.Damage set value 250.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value true
# キルログ
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはゴーレムの自爆に巻き込まれてしまった。","with":[{"selector":"@s"}]}]']
# 対象指定
    execute at @e[type=iron_golem,tag=26.GolemBomb] as @e[type=#lib:living,tag=!Uninterferable,tag=!26.GolemBomb,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset

# ダメージ処理(スノウゴーレム)
    # 与えるダメージ = 125
        data modify storage lib: Argument.Damage set value 125.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.FixedDamage set value true
# キルログ
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはゴーレムの自爆に巻き込まれてしまった。","with":[{"selector":"@s"}]}]']
# 対象指定
    execute at @e[type=snow_golem,tag=26.GolemBomb] as @e[type=#lib:living,tag=!Uninterferable,tag=!26.GolemBomb,distance=..5] run function lib:damage/
# キルログ
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはゴーレムの自爆に巻き込まれてしまった。","with":[{"selector":"@s"}]}]']
# リセット
    function lib:damage/reset

# 演出(アイアンゴーレム)
    execute at @e[type=iron_golem,tag=26.GolemBomb] run particle minecraft:explosion ~ ~ ~ 3 3 3 1 100 force @a[distance=..30]
    execute at @e[type=iron_golem,tag=26.GolemBomb] run playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 1 0.1

#演出(スノウゴーレム)
    execute at @e[type=snow_golem,tag=26.GolemBomb] run particle minecraft:explosion ~ ~ ~ 1 1 1 1 100 force @a[distance=..30]
    execute at @e[type=snow_golem,tag=26.GolemBomb] run playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 1 0.1

# 自滅
    tp @e[tag=26.GolemBomb] ~ -100 ~
    kill @e[tag=26.GolemBomb]

# 後処理
    scoreboard players reset @s 26.TickCount
    tag @s remove 26.Owner