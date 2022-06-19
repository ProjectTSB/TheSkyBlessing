#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/damage
#
# ヒット
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/2.main

# どうしてもダメージを受けてほしい
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~30の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $30 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 90
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @a[tag=R4.OwnerPlayer] run function lib:damage/modifier
# ダメージ実行
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.2
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=R4.OwnerPlayer] feet rotated ~ ~25 run function lib:motion/

# リセット
    function lib:damage/reset
    data remove storage lib: Argument