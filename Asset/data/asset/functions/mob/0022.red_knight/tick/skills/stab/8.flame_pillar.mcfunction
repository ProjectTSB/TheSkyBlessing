#> asset:mob/0022.red_knight/tick/skills/stab/8.flame_pillar
#
# 縦に判定が長い火柱攻撃
#
# @within function asset:mob/0022.red_knight/tick/skills/stab/7.place_pillar


# 演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 1.5
    particle explosion ~ ~0.5 ~ 0 0 0 0 0
    particle dust 1 0.616 0 3 ~ ~5 ~ 0.1 5 0.1 0 50 force @a[distance=..20]
    particle dust 1 0.416 0 3 ~ ~5 ~ 0.1 5 0.1 0 50 force @a[distance=..20]

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第1属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第2属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute positioned ~-0.7 ~-0.7 ~-0.7 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dy=5,dz=0.5] run function lib:damage/
# リセット
    function lib:damage/reset
