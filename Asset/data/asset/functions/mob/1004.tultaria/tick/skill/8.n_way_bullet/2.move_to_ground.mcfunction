#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.move_to_ground
#
# 地面に移動
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
#   asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick_phase3


# 中心に移動
    scoreboard players set @s RW.Speed 6
    function asset:mob/1004.tultaria/tick/move/teleport/move_to_ground/1.search_ground

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,15f]
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.0f,0.0f,0.0f]

# 体変える
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20077}

# 体の向き
    execute at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 移動終了までTick加算停止
    tag @s add RW.TickLock

# この動作をループしないようにスコア1だけ増やす
    scoreboard players add @s RW.Tick 1