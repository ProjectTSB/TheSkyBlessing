#> asset:mob/0078.messenger_of_thunder/skill/1/4.thunder_attack
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/skill/1/1

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 250
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.8 0 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function lib:damage/
# リセット
    data remove storage lib: Argument

# キル
    kill @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,sort=nearest,limit=1]