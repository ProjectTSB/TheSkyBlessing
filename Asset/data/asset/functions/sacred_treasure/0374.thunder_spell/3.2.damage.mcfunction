#> asset:sacred_treasure/0374.thunder_spell/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/0374.thunder_spell/3.1.line

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
# ダメージ
    # 与えるダメージ = 60
        data modify storage lib: Argument.Damage set value 60f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    function lib:damage/
# リセット
    data remove storage lib: Argument