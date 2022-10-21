#> asset:mob/0022.red_knight/tick/reset
#
# 挙動のリセットをします
#
# @within function asset:mob/0022.red_knight/tick/**

# ポーズを戻す
    data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [-15f,55f,15f]
    item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}

# 頭のモデル、向き
    data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]

# タグのリセット
    tag @s remove M.SkillSword
    tag @s remove M.SkillSlash
    tag @s remove M.SkillBeam
    tag @s remove M.SkillTpSlash

# スコアのリセット
    scoreboard players set @s M.Tick 0
    scoreboard players set @s M.LoopCount 0

# データリセット
    data modify entity @s NoGravity set value 0b
