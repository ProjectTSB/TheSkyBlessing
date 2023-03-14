#> asset:artifact/0981.soulfire_burst/trigger/big_fireball/damage
#
#
#
# @within function asset:artifact/0981.soulfire_burst/trigger/big_fireball/hit

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s instant_health
    effect give @s instant_damage

# デバフ
    effect give @s slowness 2 10

# ダメージ値設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ発生
          scoreboard players operation $RandomDamage Temporary %= $300 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 900
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"

# マスターとして補正functionを実行
    execute as @p[tag=R9.OwnerPlayer] run function lib:damage/modifier

# ダメージ実行
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -1
    data modify storage lib: Argument.KnockbackResist set value true
    execute at @s facing entity @e[type=armor_stand,tag=R9.BigFireball,sort=nearest,limit=1] feet rotated ~ 15 run function lib:motion/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Arugument