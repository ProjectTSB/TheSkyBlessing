#> asset:sacred_treasure/0609.lunar_flare/trigger/3.4.hit
#
# ビーム部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/**


# 演出
    particle explosion ~ ~ ~ 0 0 0 1 0
    particle minecraft:block sea_lantern ~ ~ ~ 0.2 0.2 0.2 1 30
    particle composter ~ ~ ~ 0.2 0.2 0.2 0.4 10
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