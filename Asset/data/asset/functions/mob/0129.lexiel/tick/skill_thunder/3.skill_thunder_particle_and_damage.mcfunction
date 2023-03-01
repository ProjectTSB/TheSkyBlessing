#> asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage
#
# 雷ダメージを発生させる
#
# @within function asset:mob/0129.lexiel/tick/skill_thunder/1.skill_thunder


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
        data modify storage lib: Argument.Damage set value 20.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 切キル
    kill @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=nearest,limit=1]