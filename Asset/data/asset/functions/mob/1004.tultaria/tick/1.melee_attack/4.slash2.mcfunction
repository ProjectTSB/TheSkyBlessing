#> asset:mob/1004.tultaria/tick/1.melee_attack/4.slash2
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack

# 腕を降る
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,88f]
# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20074}
# 演出
    execute positioned ^ ^ ^1 positioned ~ ~1 ~ rotated ~ 0 run function asset:mob/1004.tultaria/tick/1.melee_attack/particle2

# ダメージ
    execute positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/1.melee_attack/5.vfx_damage

# テレポートする
    execute positioned ^ ^ ^3 run function asset:mob/1004.tultaria/tick/move/tereport