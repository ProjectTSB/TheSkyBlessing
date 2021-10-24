#> asset:mob/0171.lumberjack_of_blue_forest/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle soul ~ ~1.2 ~ 0.5 0.4 0.5 0.05 30 normal @a
    execute at @p[tag=Victim,distance=..6] run particle falling_dust warped_planks ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.ghast.hurt master @a ~ ~ ~ 0.5 0.8 0

# 最大体力-8
    attribute @p[tag=Victim,distance=..6] generic.max_health modifier add 00000001-0000-0001-0000-00ab00000000 "4R.max_health_down" -8 add

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 5f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument

# attribute消しのTagとスケジュールループ
    schedule function asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop 1t replace
    tag @p[tag=Victim,distance=..6] add 4R.AttributeRemove