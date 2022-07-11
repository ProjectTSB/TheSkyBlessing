#> asset:mob/0186.ferocious_bee/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0186.ferocious_bee/attack/1.trigger

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# ダメージを与える
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 14.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset