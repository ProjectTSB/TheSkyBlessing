#> asset:mob/0120.convict/tick/3.slash/4.slash_attack2
#
#
#
# @within function asset:mob/0120.convict/tick/3.slash/1.slash

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 盲目を与える
    effect give @a[distance=..2] blindness 4 0 false

# 演出
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [330f,0f,40f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [330f,0f,320f]
    execute rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_1
    execute rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
