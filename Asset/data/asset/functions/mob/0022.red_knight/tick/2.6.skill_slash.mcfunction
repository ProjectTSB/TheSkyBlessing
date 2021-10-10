#> asset:mob/0022.red_knight/tick/2.6.skill_slash
#
# 乱切り
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ

    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [40f,0f,0f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,0f,10f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [0f,0f,354f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [16f,0f,22f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [20f,183f,312f]

    execute if score @s M.Tick matches 115 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,175f,302f]

# 演出
    execute if score @s M.Tick matches 87..100 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s M.Tick matches 87 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 88 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 89 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 90 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 91 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~100 ~0 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 92 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~310 ~80 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 93 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~140 ~260 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 94 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~120 ~350 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 95 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~70 ~210 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 96 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~180 ~130 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 97 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~190 ~350 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 98 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~360 ~0 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 99 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~10 ~280 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 100 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~310 ~130 run function asset:mob/0022.red_knight/tick/particle_6

# 前にいるプレイヤーに移動速度低下
    execute if score @s M.Tick matches 87..100 positioned ^ ^ ^4 run effect give @a[distance=..4] slowness 2 1 true

# ダメージ発生
    execute if score @s M.Tick matches 115 positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/2.7.skill_slash_damage

# アマスタにタグを付与
    execute if score @s M.Tick matches 115 run tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# 前進
    execute if score @s M.Tick matches 115 run tp ^ ^ ^8
# アマスタを持ってきてタグを消す
    execute if score @s M.Tick matches 115 run tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    execute if score @s M.Tick matches 115 run tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# 斬撃演出
    execute if score @s M.Tick matches 115 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 115 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_2
    execute if score @s M.Tick matches 115 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_3
    execute if score @s M.Tick matches 115 positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_4
    execute if score @s M.Tick matches 115 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2



# 共通リセットへ
    execute if score @s M.Tick matches 165 run function asset:mob/0022.red_knight/tick/reset