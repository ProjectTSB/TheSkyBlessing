#> asset:sacred_treasure/0207.life_is_transitory/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0207.life_is_transitory/2.check_condition

#> private
# @private
    #declare score_holder $OneHealth

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/offhand

# ここから先は神器側の効果の処理を書く

# AttributeModifierの最大HPをいじった際のバグ防止

    # 使用者のHP-1の数値を取得(*100)
        execute store result score $OneHealth Temporary run data get entity @s Health 100
        scoreboard players operation $OneHealth Temporary -= $100 Const
    # 使用者のHPを1に
        execute store result storage lib: Argument.Damage float 0.01 run scoreboard players get $OneHealth Temporary
        function lib:damage/simple
    # リセット
        data remove storage lib: Argument

# 効果・演出
    effect give @s invisibility 1 1 true
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1