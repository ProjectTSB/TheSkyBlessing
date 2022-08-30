#> asset:mob/1004.tultaria/tick/2.meteor_attack/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/2.meteor_attack/2.windup

# 発動
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/2.meteor_attack/3.activate

# ちょっと遅れて首の向き
    execute if score @s RW.Tick matches 23 run item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20079}

# リセット
    execute if score @s RW.Tick matches 50.. run function asset:mob/1004.tultaria/tick/reset