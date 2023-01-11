#> asset:mob/0120.convict/tick/3.slash/4.slash_attack2
#
#
#
# @within function asset:mob/0120.convict/tick/3.slash/1.slash

# 範囲内のプレイヤーに割合ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0120.convict/tick/3.slash/5.percent_damage

# 体力回復量-50%を付与
    data modify storage api: Argument.UUID set value [I;1,2,120,0]
    data modify storage api: Argument.Amount set value -0.5
    data modify storage api: Argument.Operation set value "multiply"
    execute as @a[distance=..2] run function api:modifier/heal/add

# スコアを与える
    scoreboard players set @a[distance=..2] 3C.DebuffTime 160
# Schedulelooopするやつ
    schedule function asset:mob/0120.convict/player_process/1.loop 1t replace

# 盲目を与える
    effect give @a[distance=..2] blindness 4 0 false

# 演出
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [330f,0f,40f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [330f,0f,320f]
    execute rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_1
    execute rotated ~ 0 positioned ~ ~1 ~ run function asset:mob/0120.convict/tick/3.slash/particle/particle_2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
