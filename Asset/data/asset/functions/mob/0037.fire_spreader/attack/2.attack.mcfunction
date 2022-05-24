#> asset:mob/0037.fire_spreader/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0037.fire_spreader/attack/1.trigger

# 演出
    execute at @p[gamemode=survival,tag=Victim,distance=..6] run particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0.1 40 normal @a
    execute at @p[gamemode=survival,tag=Victim,distance=..6] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.4 1.2 0

# 延焼能力
    execute at @p[gamemode=survival,tag=Victim,distance=..6] run fill ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 fire replace #lib:air

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって炎の中で燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの炎の延焼で灰となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute at @p[tag=Victim,distance=..6] as @a[gamemode=!spectator,predicate=lib:is_burning,distance=..4.0] run function lib:damage/
# リセット
    function lib:damage/reset