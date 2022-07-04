#> asset:mob/0286.456_dice_entity/tick/event/hit
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/event/beam_recursion

# 演出
    execute at @e[tag=LandingTarget,limit=1] run playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~ 1 1.5

# タグ付与
    tag @s add CU.This

# ダメージ処理
    #ダメージ設定
        data modify storage lib: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        # 属性をランダムに決定する
            # 疑似乱数取得
                execute store result score @s Temporary run function lib:random/
            # ほしい範囲に剰余算
                scoreboard players operation @s Temporary %= $3 Const

            # 火
                execute if score @s Temporary matches 0 run data modify storage lib: Argument.ElementType set value "Fire"
                execute if score @s Temporary matches 0 at @e[tag=LandingTarget,limit=1] run particle minecraft:dust 1000000000 1 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force

            # 水
                execute if score @s Temporary matches 1 run data modify storage lib: Argument.ElementType set value "Water"
                execute if score @s Temporary matches 1 at @e[tag=LandingTarget,limit=1] run particle dust 1 1000000000 1000000000 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force

            # 雷
                execute if score @s Temporary matches 2 run data modify storage lib: Argument.ElementType set value "Thunder"
                execute if score @s Temporary matches 2 at @e[tag=LandingTarget,limit=1] run particle dust 10000000000 10000000000 1 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force

    # ダメージ
        execute as @a if score @s UserID = @e[type=armor_stand,tag=CU.This,distance=..1,limit=1] CU.UserID run function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @s remove CU.This

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget