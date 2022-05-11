#> asset:mob/1004.tultaria/tick/1.melee_attack/1.melee_attack
#
# 近接攻撃する際にうごくの
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active


# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/1.melee_attack/2.first_tick

# 攻撃
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/1.melee_attack/3.slash

# 腕を変える
    execute if score @s RW.Tick matches 20 if entity @s run data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,0f,94f]

# 2チェイン
    execute if score @s RW.Tick matches 23 if entity @s run function asset:mob/1004.tultaria/tick/1.melee_attack/4.slash2

# HPが減っていたら3チェイン
    execute if score @s RW.Tick matches 26 if entity @s[tag=RW.HPless75per] run function asset:mob/1004.tultaria/tick/1.melee_attack/3.slash

# 更にHPが減っていたら4で〆る
    execute if score @s RW.Tick matches 34 if entity @s[tag=RW.HPless50per] run function asset:mob/1004.tultaria/tick/1.melee_attack/finisher/slash

# リセット
    execute if score @s[tag=!RW.HPless50per] RW.Tick matches 37 run function asset:mob/1004.tultaria/tick/reset
    execute if score @s[tag=RW.HPless50per] RW.Tick matches 47 run function asset:mob/1004.tultaria/tick/reset