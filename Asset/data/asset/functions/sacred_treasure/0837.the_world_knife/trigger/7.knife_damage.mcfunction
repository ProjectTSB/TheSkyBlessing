#> asset:sacred_treasure/0837.the_world_knife/trigger/7.knife_damage
#
#
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/6.knife_move
    #declare tag N9.This
    #declare tag N9.Target

# 自身にタグ付与
    tag @s add N9.This

# 周囲2mから最寄りの敵にタグを付与
    tag @e[type=#lib:living,type=!player,tag=!N9.Knife,distance=..2,sort=nearest,limit=1] add N9.Target

# 演出
    particle sweep_attack ~ ~ ~ 0 0 0 0 1 force
    playsound item.trident.hit_ground player @a ~ ~ ~ 1 1

# 攻撃を与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=armor_stand,tag=N9.This,limit=1] N9.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[tag=N9.Target] run function lib:damage/
# リセット
    data remove storage lib: Argument
    tag @e[type=#lib:living,type=!player,tag=N9.Target,distance=..2,sort=nearest,limit=1] remove N9.Target
#自身を殺す
    kill @s