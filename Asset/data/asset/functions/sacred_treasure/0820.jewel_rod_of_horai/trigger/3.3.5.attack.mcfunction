#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack
#
# 攻撃エフェクトと攻撃判定発生のループ処理
# @input
#   as @e[type=area_effect_cloud,tag=MS.AttackPosition]
#   at @e[type=area_effect_cloud,tag=MS.AttackPosition]
#
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.4.attack_loop

# 攻撃対象のmobにタグ付け　攻撃発生前に魔法陣から25ブロック以上離れたら不発
    scoreboard players operation $MS.TargetUUID Temporary = @s MS.TargetUUID
    execute as @e[type=#lib:living,tag=!Friend,distance=..25] if score @s MobUUID = $MS.TargetUUID Temporary run tag @s add MS.AttackTarget

# パーティクル
    execute if score @s MS.AttackLevel matches 0 run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_0
    execute if score @s MS.AttackLevel matches 1 run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_1
    execute if score @s MS.AttackLevel matches 2 run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_2
    execute if score @s MS.AttackLevel matches 3 run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_3
    execute if score @s MS.AttackLevel matches 4 run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_4
    execute if data entity @s {Age:20} run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_attack

# ダメージ
    execute if data entity @s {Age:20} run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.6.damage

# タグリセット
    tag @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] remove MS.AttackTarget
