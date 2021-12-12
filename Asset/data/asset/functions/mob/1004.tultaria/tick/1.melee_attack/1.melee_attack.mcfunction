#> asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack
#
# 近接攻撃する際にうごくの
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active


# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/1.melee_attack/2.first_tick

# 0.9秒後攻撃
    execute if score @s RW.Tick matches 18 run function asset:mob/1004.tultaria/tick/1.melee_attack/3.slash

# 1.1病後腕を変える
    execute if score @s RW.Tick matches 22 if entity @s[tag=RW.HPless75per] run data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,0f,94f]

# 1.3病後、HPが減っていたら攻撃
    execute if score @s RW.Tick matches 26 if entity @s[tag=RW.HPless75per] run function asset:mob/1004.tultaria/tick/1.melee_attack/4.slash2

# リセット
    execute if score @s RW.Tick matches 37 run function asset:mob/1004.tultaria/tick/reset