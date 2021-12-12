#> asset:mob/1004.tultaria/tick/1.melee_attack/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20069}
# プレイヤーの周囲にテレポート
    function asset:mob/1004.tultaria/tick/move/spread

# プレイヤーを見る
    execute at @s facing entity @p feet positioned ~ ~0.4 ~ run function asset:mob/1004.tultaria/tick/move/tereport