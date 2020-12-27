#> asset:sacred_treasure/0078.self_destruct_order/3.1.explosion_manager
#
#
#
# @within function
#    asset:sacred_treasure/0078.self_destruct_order/3.main
#    asset:sacred_treasure/0078.self_destruct_order/3.1.explosion_manager

#> private
# @private
    #declare tag GolemBomb

# ダメージ処理
      # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # パーティクルを無効化するか否か
        data modify storage lib: Argument.DisableParticle set value false
    # 防御力/防具強度を無視するか否か
        data modify storage lib: Argument.BypassArmor set value true
    # 耐性エフェクトを無視するか否か
        data modify storage lib: Argument.BypassResist set value true
# 対象指定
    execute at @e[tag=GolemBomb] as @e[distance=..5] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    execute at @e[tag=GolemBomb] run particle minecraft:explosion ~ ~ ~ 3 3 3 1 100 force @a[distance=..30]
    execute at @e[tag=GolemBomb] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.1

# 自滅
    execute at @e[tag=GolemBomb] run tp @s ~ -100 ~