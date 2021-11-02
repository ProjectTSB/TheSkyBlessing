#> asset:mob/0022.red_knight/tick/skill_beam/1.skill_beam
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute if score @s M.Tick matches 15 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]


# 斬撃演出
    execute if score @s M.Tick matches 15 positioned ^0.6 ^ ^2 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 15 positioned ^0.6 ^ ^2 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 17 positioned ^0.6 ^ ^4 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 17 positioned ^0.6 ^ ^4 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 19 positioned ^0.6 ^ ^6 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 19 positioned ^0.6 ^ ^6 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 21 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 21 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 23 positioned ^0.6 ^ ^10 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 23 positioned ^0.6 ^ ^8 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 25 positioned ^0.6 ^ ^12 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 25 positioned ^0.6 ^ ^12 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 27 positioned ^0.6 ^ ^14 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 27 positioned ^0.6 ^ ^14 run function asset:mob/0022.red_knight/tick/skill_beam/2.skill_beam_damage

    execute if score @s M.Tick matches 15 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 共通リセットへ
    execute if score @s M.Tick matches 45 run function asset:mob/0022.red_knight/tick/reset