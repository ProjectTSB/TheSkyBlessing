#> asset:sacred_treasure/0369.fire_magic/3.3.attack
#
# 弾が着弾した時
#
# @within function asset:sacred_treasure/0369.fire_magic/3.2.fireball

# 自身にタグ付与
    tag @s add 5X.This

# 周囲2mから最寄りの敵にタグを付与
    tag @e[type=#lib:living,type=!player,tag=!5X.Fire,distance=..2,sort=nearest,limit=1] add 5X.Target

# 演出
    particle lava ~ ~1 ~ 0 1 0 0 20 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode master @a ~ ~ ~ 1 1
    playsound entity.generic.explode master @a ~ ~ ~ 1 0
    playsound entity.blaze.burn master @a ~ ~ ~ 1 1

# 攻撃を与える
    # 与えるダメージ = 26
        data modify storage lib: Argument.Damage set value 26f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=5X.This,limit=1] 5X.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[tag=5X.Target] run function lib:damage/
# リセット
    data remove storage lib: Argument

#自身を殺す
    kill @s