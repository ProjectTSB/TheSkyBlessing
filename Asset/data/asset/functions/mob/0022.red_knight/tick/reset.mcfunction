#> asset:mob/0022.red_knight/tick/reset
#
# 挙動のリセットをします
#
# @within function asset:mob/0022.red_knight/tick/**

# 体の状態リセット
    data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-15f,55f,15f]
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20279}
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20271}
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20277}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]

# タグのリセット
    # スキル関連
        tag @s remove M.SkillSlash
        tag @s remove M.SkillCombo
        tag @s remove M.SkillParry
        tag @s remove M.SkillWave
    # ダッシュ関連
        tag @s remove M.DashTriple
        tag @s remove M.DashStraight
        tag @s remove M.DashStab
    # 行動関連
        tag @s remove M.InAction
        tag @s remove M.Move
        tag @s remove M.ActiveInertia
        tag @s remove M.HPless50per
    #モデル関連
        tag @s add M.BodyFacing45
        tag @s remove M.BodyFacing0
        tag @s remove M.FacingLock
    # 状態関連
        tag @s remove Uninterferable

# スコアのリセット
    scoreboard players set @s M.Tick 0
    scoreboard players set @s M.LoopCount 0

# データリセット
    data modify entity @s NoAI set value 0b
    data modify entity @s Invulnerable set value 0b
