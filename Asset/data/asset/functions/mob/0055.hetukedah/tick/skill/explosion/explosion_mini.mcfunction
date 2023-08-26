#> asset:mob/0055.hetukedah/tick/skill/explosion/explosion_mini
#
# ハード限定ミニ爆発
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/explosion

# 演出
    particle minecraft:lava ~ ~ ~ 2 0.1 2 0 15
    particle minecraft:explosion ~ ~ ~ 1 0 1 0 3 force @a[distance=..30]
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
    # 打ち上げ
        execute at @a[tag=!PlayerShouldInvulnerable,distance=..2] run summon area_effect_cloud ~ ~ ~ {Particle:"poof",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:15b,Duration:5,ShowParticles:1b}]}
# リセット
    function lib:damage/reset