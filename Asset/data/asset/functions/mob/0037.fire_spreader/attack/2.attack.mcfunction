#> asset:mob/0037.fire_spreader/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0037.fire_spreader/attack/1.trigger

# 演出
    execute at @p[gamemode=survival,tag=Victim] run particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0.1 40 normal @a
    execute at @p[gamemode=survival,tag=Victim] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.4 1.2 0

# 延焼能力
    fill ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 fire replace #lib:air

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute at @p[tag=Victim] as @a[gamemode=!spectator,predicate=lib:is_burning,distance=..4.0] run function lib:damage/
# リセット
    data remove storage lib: Argument