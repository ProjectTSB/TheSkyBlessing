#> asset:artifact/0837.the_world_knife/trigger/knife/3.damage
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/knife/2.2.move

#> private
# @private
    #declare tag N9.This
    #declare tag N9.Target

# 自身にタグ付与
    tag @s add N9.This

# 周囲2mから最寄りの敵にタグを付与
    tag @e[type=#lib:living,type=!player,tag=!Friend,tag=!N9.Knife,distance=..2,sort=nearest,limit=1] add N9.Target

# 演出
    playsound item.trident.hit_ground player @a ~ ~ ~ 1 1
    particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 20
    particle end_rod ~ ~ ~ 0 0 0 0.5 7
# 攻撃を与える
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 141f
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
# 補正functionを実行
    execute at @s as @a if score @s UserID = @e[type=armor_stand,tag=N9.This,distance=..0.01,limit=1] N9.UserID run function api:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,tag=N9.Target,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
    tag @e[type=#lib:living,type=!player,tag=N9.Target,distance=..2,sort=nearest,limit=1] remove N9.Target
# 自身を殺す
    kill @s
