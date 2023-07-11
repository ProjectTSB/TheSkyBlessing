#> asset:mob/0186.ferocious_bee/tick/3.damage
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/2.tick

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# 攻撃のCT設定
    scoreboard players set @s 56.AttackCT 20
# ダメージを与える
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 7.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset