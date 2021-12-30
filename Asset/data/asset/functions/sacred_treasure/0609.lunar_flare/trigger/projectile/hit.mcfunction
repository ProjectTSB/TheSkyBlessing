#> asset:sacred_treasure/0609.lunar_flare/trigger/projectile/hit
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/**


# 演出
    particle minecraft:dust 0 0.8 0.8 1 ~ ~-0.5 ~ 0.5 0.5 0.5 0 5 force @a[distance=..30]
    particle minecraft:dust 0 0.8 0.6 0.8 ~ ~-0.5 ~ 0.5 0.5 0.5 0 5 force @a[distance=..30]
    particle glow ~ ~-0.5 ~ 0.5 0.5 0.5 0 3 force @a[distance=..30]
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 1 1.5

# タグ付与
    tag @s add this

# ダメージ設定
    # 与えるダメージ = 30
        data modify storage lib: Argument.Damage set value 30.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ 原作再現と他のエイム武器との差別化を兼ねて範囲攻撃
        execute as @a if score @s UserID = @e[type=armor_stand,tag=this,distance=..1,limit=1] GX.UserID run function lib:damage/modifier
        execute at @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3,sort=nearest,limit=1] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1] run function lib:damage/
        #execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3,sort=nearest,limit=1] run function lib:damage/

# リセット
    data remove storage lib: Argument
    kill @s