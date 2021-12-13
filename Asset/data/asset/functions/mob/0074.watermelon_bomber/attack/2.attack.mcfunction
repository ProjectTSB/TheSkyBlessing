#> asset:mob/0074.watermelon_bomber/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0074.watermelon_bomber/attack/1.trigger

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 4.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    execute at @p[tag=Victim] run playsound entity.player.splash master @a ~ ~ ~ 0.8 0.8 0
    execute at @p[tag=Victim] run particle dust 1 0.141 0.141 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a