#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_attack
#
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack

# 攻撃対象への攻撃パーティクル
    execute if score @s MS.AttackLevel matches 3.. positioned ^0 ^1 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_blue
    execute if score @s MS.AttackLevel matches 1.. positioned ^0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_red
    execute if score @s MS.AttackLevel matches 2.. positioned ^0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_yellow
    execute if score @s MS.AttackLevel matches 4.. positioned ^-0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_green
    execute if score @s MS.AttackLevel matches 4.. positioned ^-0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_purple
