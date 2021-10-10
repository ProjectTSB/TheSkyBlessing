#> asset:mob/0022.red_knight/tick/2.8.skill_beam
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ

    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute if score @s M.Tick matches 95 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]


# 斬撃演出
    execute if score @s M.Tick matches 95 positioned ^0.6 ^ ^2 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 95 positioned ^0.6 ^ ^2 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 97 positioned ^0.6 ^ ^4 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 97 positioned ^0.6 ^ ^4 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 99 positioned ^0.6 ^ ^6 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 99 positioned ^0.6 ^ ^6 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 101 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 101 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 103 positioned ^0.6 ^ ^10 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 103 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 105 positioned ^0.6 ^ ^12 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 105 positioned ^0.6 ^ ^12 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 107 positioned ^0.6 ^ ^14 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 107 positioned ^0.6 ^ ^14 run function asset:mob/0022.red_knight/tick/2.9.skill_beam_damage

    execute if score @s M.Tick matches 95 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 共通リセットへ
    execute if score @s M.Tick matches 115 run function asset:mob/0022.red_knight/tick/reset