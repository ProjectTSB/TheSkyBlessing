#> asset:mob/0022.red_knight/tick/wait_time/phase2_transition/3.phase_change
#
# フェイズ移行
#
# @within function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/1.tick

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-15f,5f,-75f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-25f,55f,15f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~45 ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20271}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ 0

# フェイズ加算
    scoreboard players add @s M.Phase 1

# 演出
    execute at @a[distance=..50] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 2 1.5
    execute at @a[distance=..50] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 3 0.8
    execute at @a[distance=..50] run playsound minecraft:item.trident.return hostile @p ~ ~ ~ 3 0.6
    execute at @a[distance=..50] run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 3 1.5
    particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.01 25
    particle minecraft:dust 1 0.616 0 2 ~ ~1 ~ 0.3 0.5 0.3 0 50
    particle minecraft:dust 1 0.416 0 2 ~ ~1 ~ 0.3 0.5 0.3 0 50