#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/7.explosion
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/6.big_laser

# 演出
    particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.5 1
    particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.1 3
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.8 1.5

# 打ち上げ
    summon area_effect_cloud ~ ~0.1 ~ {Particle:"block air",Radius:1.5f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:30b,Duration:4,ShowParticles:0b}]}

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function lib:damage/
# リセット
    function lib:damage/reset
