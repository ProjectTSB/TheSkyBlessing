#> asset:sacred_treasure/0609.lunar_flare/trigger/projectile/hit
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/**


# 演出
    particle minecraft:dust 0 0.8 0.8 1 ~ ~-0.5 ~ 0.5 0.5 0.5 0 10 force @a[distance=..30]
    particle minecraft:dust 0 0.8 0.6 0.8 ~ ~-0.5 ~ 0.5 0.5 0.5 0 10 force @a[distance=..30]
    particle glow ~ ~-0.5 ~ 0.5 0.5 0.5 0 5 force @a[distance=..30]
    playsound entity.generic.explode master @a ~ ~ ~ 1 1

# タグ付与
    tag @s add this

# ダメージ設定
    # 与えるダメージ = 10
        data modify storage lib: Argument.Damage set value 20.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        execute as @a if score @s UserID = @e[type=armor_stand,tag=this,distance=..1,limit=1] GX.UserID run function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3,sort=nearest,limit=1] run function lib:damage/
# リセット
    data remove storage lib: Argument
    kill @s