#> asset:mob/0022.red_knight/tick/wait_time/opening/tick
#
# 開幕動作
#
# @within function asset:mob/0022.red_knight/tick/2.tick

# ポーズ(構え)
    execute if score @s M.Tick matches 10 as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0022.red_knight/tick/wait_time/opening/change_pose_1

# 画面エフェクト
    execute if score @s M.Tick matches 20 run title @a[distance=..50] times 5 30 2
    execute if score @s M.Tick matches 20 run title @a[distance=..50] title {"text":"\uE010","font":"screen_effect","color":"black"}

# 文字表示
    execute if score @s M.Tick matches 25 run title @a[distance=..50] subtitle {"text":"\uE013","font":"screen_effect","color":"white"}
    execute if score @s M.Tick matches 40 run title @a[distance=..50] subtitle {"text":"\uE014","font":"screen_effect","color":"white"}
    execute if score @s M.Tick matches 40 at @a[distance=..50] run playsound minecraft:entity.blaze.shoot neutral @p ~ ~ ~ 1 1
    execute if score @s M.Tick matches 55 as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0022.red_knight/tick/wait_time/opening/change_pose_2

# デバッグ用、この行動をループ
    #execute if score @s M.Tick matches 70.. run scoreboard players set @s M.Tick -40

# 無敵解除、戦闘開始
    execute if score @s M.Tick matches 75 run function asset:mob/0022.red_knight/tick/wait_time/opening/battle_start