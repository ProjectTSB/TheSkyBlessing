#> asset:sacred_treasure/0441.awaited_opportunity/3.2.hardluck
#
# ダンスる
#
# @within function asset:sacred_treasure/0441.awaited_opportunity/3.1.message

# プレイヤーが"不運"と"踊"っちまった時
    tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"があああああッ･･！！"}]
    effect give @s unluck 30 1

# ダメージを受ける
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 7.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    function lib:damage/modifier
# 対象は自分
    function lib:damage/
# リセット
    data remove storage lib: Argument