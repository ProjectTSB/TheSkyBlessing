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
execute if entity @s[scores={MS.AttackLevel=4}] run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_4
execute if entity @s[nbt={Age:20}] run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_attack

# タグリセット
tag @e[type=#lib:living,tag=!Friend,distance=..25] remove MS.AttackTarget