#> asset:sacred_treasure/0647.thorn_armor/5.fullset_performance
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/4.fullset

# 演出
    particle dust 0 0.2 0 1 ~ ~1.2 ~ 0.4 0.5 0.6 0 80 normal @a
    playsound block.sweet_berry_bush.place master @a ~ ~ ~ 1 0 0

# 少しウィザー
    effect give @s wither 3 0 true

# 少しダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    function lib:damage/
# リセット
    data remove storage lib: Argument
