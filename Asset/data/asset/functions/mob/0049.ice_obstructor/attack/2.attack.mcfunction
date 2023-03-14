#> asset:mob/0049.ice_obstructor/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0049.ice_obstructor/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..32] run particle minecraft:falling_dust diamond_block ~ ~1.75 ~ 0.4 0.4 0.4 1 15
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.8 1.3 0

# デバフ
    effect give @p[tag=Victim,distance=..32] slowness 3 2 true
    effect give @p[tag=Victim,distance=..32] mining_fatigue 3 2 true

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 3f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍結した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute at @p[tag=Victim,distance=..32] as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function lib:damage/

# 粉雪を設置
    execute at @p[gamemode=survival,tag=Victim,distance=..32] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air
# リセット
    function lib:damage/reset