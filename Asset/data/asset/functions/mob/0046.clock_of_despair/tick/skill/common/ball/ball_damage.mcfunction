#> asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_tick


# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 50.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ(厳密な紐づけじゃないけど許して)
        execute as @e[type=zombie,scores={MobID=46},distance=..100,limit=1] run function lib:damage/modifier
        execute as @a[gamemode=!creative,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# キル
    kill @s