#> asset:mob/0216.gray_guardian/tick/3.skill_axe/1.skill_axe
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active
#> Val
# @private
#declare score_holder $4tInterval
# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/2.first_tick

# 回転
    execute if score @s 60.Tick matches 22..154 as @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~45 ~

# プレイヤーを追尾する
    execute if score @s 60.Tick matches 25..151 facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s positioned ^ ^ ^0.2 rotated ~ 0 run function asset:mob/0216.gray_guardian/tick/move/teleport_non_facing

# 3tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 60.Tick
# 3tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $3 Const
    execute if score @s 60.Tick matches 25..151 if score $4tInterval Temporary matches 0 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/interval
# リセット
    scoreboard players reset $4tInterval


# 目を回す
    execute if score @s 60.Tick matches 156 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/4.stan

# 回している間動くやつ
    execute if score @s 60.Tick matches 156.. positioned ~ ~2.7 ~ rotated ~ 0 run function asset:mob/0216.gray_guardian/tick/3.skill_axe/particle

# 頭を振る
    execute if score @s 60.Tick matches 156 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20134}
    execute if score @s 60.Tick matches 160 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
    execute if score @s 60.Tick matches 164 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20136}
    execute if score @s 60.Tick matches 168 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
    execute if score @s 60.Tick matches 172 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20134}
    execute if score @s 60.Tick matches 176 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
    execute if score @s 60.Tick matches 180 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20136}
    execute if score @s 60.Tick matches 184 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
    execute if score @s 60.Tick matches 188 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20134}
    execute if score @s 60.Tick matches 192 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
    execute if score @s 60.Tick matches 196 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20136}
    execute if score @s 60.Tick matches 200 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}
# リセット
    execute if score @s 60.Tick matches 230.. run function asset:mob/0216.gray_guardian/tick/reset