#> asset:mob/1004.tultaria/tick/1.melee_attack/3.slash
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack

# 腕を降る
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [36f,0f,-45f]

# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20073}
# 演出
    execute positioned ^ ^ ^1 positioned ~ ~0.3 ~ rotated ~ 0 run function asset:mob/1004.tultaria/tick/1.melee_attack/particle1

# ダメージ
    execute positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/1.melee_attack/5.vfx_damage

# テレポートする
    execute positioned ^ ^ ^3 run function asset:mob/1004.tultaria/tick/move/tereport

# プレイヤーを見る
    execute at @s facing entity @p[distance=..100] feet positioned ~ ~0.4 ~ run function asset:mob/1004.tultaria/tick/move/tereport