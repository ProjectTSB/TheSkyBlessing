#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/damage
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/2.main

#> ヒット時のタグ
# @private
    #declare tag Hit

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# ダメージのブレ
    # 疑似乱数取得
        execute store result score $RandomDamage Temporary run function lib:random/
    # 剰余算する。追加ダメージ。
        scoreboard players operation $RandomDamage Temporary %= $51 Const
    # 最低ダメージ設定、解放状況でダメージ変わる
       scoreboard players add $RandomDamage Temporary 100

# ダメージ設定
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 物理属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正
        execute as @p[tag=SA.OwnerPlayer] run function lib:damage/modifier

    # ヒットしたやつに対して実行
        function lib:damage/

# ふっとばし力
    data modify storage lib: Argument.VectorMagnitude set value -0.5
    data modify storage lib: Argument.KnockbackResist set value true

# 吹っ飛ばす
    execute facing entity @p[tag=SA.OwnerPlayer] feet rotated ~ ~5 run function lib:motion/


# リセット
    function lib:damage/reset