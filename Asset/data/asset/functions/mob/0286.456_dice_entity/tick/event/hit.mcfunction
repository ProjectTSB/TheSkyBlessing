#> asset:mob/0286.456_dice_entity/tick/event/hit
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/event/cast_attack

# 演出
    execute at @e[tag=LandingTarget,limit=1] run playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~ 1 1.5

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget