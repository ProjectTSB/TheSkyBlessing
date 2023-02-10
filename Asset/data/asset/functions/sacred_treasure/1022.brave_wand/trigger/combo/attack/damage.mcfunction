#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/damage
#
# 波動オーブ1: ダメージ判定
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack/effect

# 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 300
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

# 減速付与
    effect give @s slowness 1 0

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
    data remove storage lib: Argument