#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/3.hit
#
# ヒット時
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_shot/2.main

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @a[tag=R4.OwnerPlayer] run function lib:damage/modifier
# 範囲5m以内のゾンビを対象に
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばし続ける
    data modify storage lib: Argument.VectorMagnitude set value 0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @e[type=armor_stand,tag=R4.SlashShot,sort=nearest,limit=1] feet rotated ~ ~ run function lib:motion/

# リセット
    function lib:damage/reset
    data remove storage lib: Argument