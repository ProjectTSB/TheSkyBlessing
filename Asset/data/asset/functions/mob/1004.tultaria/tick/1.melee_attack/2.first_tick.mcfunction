#> asset:mob/1004.tultaria/tick/1.melee_attack/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
# 腕、頭を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20069}
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20072}
# 数値決定
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0],[3d,3d]]
# プレイヤーの周囲にテレポート
    function asset:mob/1004.tultaria/tick/move/spread
# 演出
    execute at @s run function asset:mob/1004.tultaria/tick/move/vfx

# プレイヤーを見る
    execute at @s facing entity @p[distance=..100] feet positioned ~ ~0.4 ~ run function asset:mob/1004.tultaria/tick/move/tereport