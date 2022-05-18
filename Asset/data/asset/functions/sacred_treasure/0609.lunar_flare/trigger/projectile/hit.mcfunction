#> asset:sacred_treasure/0609.lunar_flare/trigger/projectile/hit
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/**


# 演出
    particle minecraft:dust 0 0.8 0.8 1 ~ ~-0.5 ~ 1.0 1.0 1.0 0 25 force @a[distance=..30]
    particle minecraft:dust 0 0.8 0.6 0.8 ~ ~-0.5 ~ 1.0 1.0 1.0 0 25 force @a[distance=..30]
    particle glow ~ ~-0.5 ~ 0.8 0.8 0.8 0 10 force @a[distance=..30]
    particle explosion ~ ~-0.5 ~ 0 0 0 0 0 force @a[distance=..30]
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 1 1.5

# タグ付与
    tag @s add GX.This

# ダメージ設定
    # 与えるダメージ = 60
        data modify storage lib: Argument.Damage set value 40.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ 原作再現と他のエイム武器との差別化を兼ねて範囲攻撃
        execute as @a if score @s UserID = @e[type=armor_stand,tag=GX.This,distance=..1,limit=1] GX.UserID run function lib:damage/modifier
        execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2.5] run function lib:damage/
        execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2.5] run function lib:damage/

# リセット
    data remove storage lib: Argument
    kill @s