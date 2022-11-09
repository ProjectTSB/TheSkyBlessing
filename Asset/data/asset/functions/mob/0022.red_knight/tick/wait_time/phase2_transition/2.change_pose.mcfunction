#> asset:mob/0022.red_knight/tick/wait_time/phase2_transition/2.change_pose
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/1.tick

# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# タグのリセット
    # スキル関連
        tag @s remove M.SkillSlash
        tag @s remove M.SkillCombo
        tag @s remove M.SkillParry
    # ダッシュ関連
        tag @s remove M.DashTriple
        tag @s remove M.DashStraight
        tag @s remove M.DashStab
    # 行動関連
        tag @s remove M.Move
        tag @s remove M.ActiveInertia
    #モデル関連


# タグ付与、全基本動作停止
    tag @s add M.InAction

# 向き固定ON
    tag @s add M.FacingLock

# マーカーも消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 無敵になる
    data modify entity @s Invulnerable set value 1b

# 体
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.LeftArm set value [-40f,0f,-15f]
        data modify entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.RightArm set value [-40f,45f,15f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1] run tp @s ~ ~ ~ ~ ~
    # モデル
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20273}
        item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] armor.head with stick{CustomModelData:20279}

# 頭
    # ポーズ
        data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..1,sort=nearest,limit=1] Pose.Head set value [45f,0f,0f]
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~ 0