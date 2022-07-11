#> asset:mob/0271.indomitable_warrior/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0271.indomitable_warrior/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 50
    execute at @p[tag=Victim] run particle dust 1 1 0.161 1.5 ~ ~2 ~ 0 2.5 0 0 50
    execute at @p[tag=Victim] run particle minecraft:poof ~ ~ ~ 0.3 0 0.3 0.05 10

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound item.trident.throw hostile @a ~ ~ ~ 1 1

# 属性ダメージ
   # 与えるダメージ
        data modify storage lib: Argument.Damage set value 19.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # プレイヤー対象に
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        function lib:damage/reset