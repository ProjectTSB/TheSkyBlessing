#> asset:mob/1004.tultaria/tick/1.melee_attack/finisher/slash
#
# コンパチな強い斬撃
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,88f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [20f,-20f,0f]

# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20075}

# 演出
    execute positioned ^ ^ ^1 positioned ~ ~1 ~ rotated ~ 0 run function asset:mob/1004.tultaria/tick/1.melee_attack/finisher/particle

# テレポートする
    execute positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/move/tereport

# ダメージ
    execute positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/1.melee_attack/finisher/damage

# テレポートする
    execute positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/move/tereport