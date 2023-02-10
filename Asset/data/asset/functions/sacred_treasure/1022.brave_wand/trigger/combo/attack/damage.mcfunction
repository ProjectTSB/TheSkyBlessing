#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/damage
#
# 波動オーブ1: ダメージ判定
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/effect

# どうしてもダメージを受けてほしい（HurtTimeで反応を起こすモブもいるので)
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $81 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 270
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=SE.Used] run function lib:damage/modifier
# ダメージ実行
    function lib:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.5
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @s at @s facing entity @p[tag=SE.Used] feet rotated ~ ~5 run function lib:motion/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument