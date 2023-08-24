#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 円sy痛
    function asset:mob/0055.hetukedah/tick/skill/explosion/shape
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 30
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 12.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function lib:damage/
    # 打ち上げ
        execute at @a[tag=!PlayerShouldInvulnerable,distance=..4] run summon area_effect_cloud ~ ~ ~ {Particle:"poof",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:30b,Duration:5,ShowParticles:1b}]}
# リセット
    function lib:damage/reset