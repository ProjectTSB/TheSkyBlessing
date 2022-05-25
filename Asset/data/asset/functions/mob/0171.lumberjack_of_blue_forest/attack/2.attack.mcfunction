#> asset:mob/0171.lumberjack_of_blue_forest/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle soul ~ ~1.2 ~ 0.5 0.4 0.5 0.05 30 normal @a
    execute at @p[tag=Victim,distance=..6] run particle falling_dust warped_stem ~ ~1.2 ~ 0.6 0.4 0.6 0 40 normal @a
    execute at @p[tag=Victim,distance=..6] run particle block warped_stem ~ ~1.2 ~ 0.5 0.3 0.5 0 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.ghast.hurt hostile @a ~ ~ ~ 0.5 0.8 0

# 最大体力-30%
    attribute @p[tag=Victim,distance=..6] generic.max_health modifier add 00000001-0000-0002-0000-00ab00000000 "4R.max_health_down" -0.3 multiply

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 14f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって蒼い森に取り込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって魂を伐り取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset

# スコア
    scoreboard players set @p[tag=Victim,distance=..6] 4R.Attribute 0

# attribute消しのTagとスケジュールループ
    schedule function asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop 1t replace
    tag @p[tag=Victim,distance=..6] add 4R.HealthDown