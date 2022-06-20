#> asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/hit
#
# 炸裂前に敵に当てた場合。ふっ飛ばし攻撃。
#
# @within function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/4.move

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# ダメージ値設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~100の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $100 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 300
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"

# マスターとして補正functionを実行
    execute at @a[distance=..30] if score @s R9.UserID = @p UserID as @p run function lib:damage/modifier


# ダメージ実行
    execute as @e[tag=Enemy,tag=!Uninterferable,sort=nearest,limit=1] run function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.2
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=this] feet rotated ~ ~25 run function lib:motion/

# リセット
    function lib:damage/reset

# 弾をキル
    function asset:sacred_treasure/0981.soufire_shoot/trigger/big_fireball/break