#> asset:mob/0022.red_knight/tick/skill_slash/1.skill_slash
#
# 乱切り
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [40f,0f,0f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,0f,10f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [0f,0f,354f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [16f,0f,22f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [20f,183f,312f]

# 演出
    execute if score @s M.Tick matches 7..20 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s M.Tick matches 7 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~190 ~290 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 8 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~200 ~20 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 9 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~100 ~180 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 10 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~360 ~230 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 11 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~100 ~0 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 12 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~310 ~80 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 13 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~140 ~260 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 14 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~120 ~350 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 15 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~70 ~210 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 16 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~180 ~130 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 17 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~190 ~350 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 18 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~360 ~0 run function asset:mob/0022.red_knight/tick/particle_6
    execute if score @s M.Tick matches 19 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~10 ~280 run function asset:mob/0022.red_knight/tick/particle_5
    execute if score @s M.Tick matches 20 rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^4 rotated ~310 ~130 run function asset:mob/0022.red_knight/tick/particle_6

# 前にいるプレイヤーに移動速度低下
    execute if score @s M.Tick matches 7..20 positioned ^ ^ ^4 run effect give @a[distance=..4] slowness 2 1 true

# ポーズ
    execute if score @s M.Tick matches 35 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,175f,302f]

# ダメージ発生
    execute if score @s M.Tick matches 35 positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/skill_slash/2.skill_slash_damage

# テレポートして演出を入れる
    execute if score @s M.Tick matches 35 run function asset:mob/0022.red_knight/tick/skill_slash/3.skill_slash_teleport


# 共通リセットへ
    execute if score @s M.Tick matches 75 run function asset:mob/0022.red_knight/tick/reset