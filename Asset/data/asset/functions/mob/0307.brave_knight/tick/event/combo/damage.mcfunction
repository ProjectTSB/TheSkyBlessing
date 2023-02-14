#> asset:mob/0307.brave_knight/tick/event/combo/damage
#
#
#
# @within function asset:mob/0307.brave_knight/tick/event/combo/**

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=0307.OwnerPlayer] run function lib:damage/modifier

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.3
    data modify storage lib: Argument.KnockbackResist set value true
    execute facing entity @e[type=armor_stand,scores={MobID=307},sort=nearest,limit=1] feet rotated ~ ~25 run function lib:motion/

# ダメージを与える
    function lib:damage/
# リセット
    function lib:damage/reset