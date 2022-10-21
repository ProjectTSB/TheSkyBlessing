#> asset:mob/0022.red_knight/tick/wait_time/base_move/tick
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.tick

# 滞空中と接地中でモデル変える
    execute if entity @s[tag=!M.InAction,nbt={OnGround:1b}] run item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20276}
    execute if entity @s[tag=!M.InAction,nbt={OnGround:0b}] run item replace entity @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20277}

# モデルを持ってくる
    #execute if entity @s[tag=!M.FacingLock] run function asset:mob/0022.red_knight/tick/move/call_model

# こっち向く
    execute if entity @s[tag=!M.FacingLock] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!M.InAction,scores={M.Phase=1..2}] M.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0022.red_knight/tick/2.2.skill_select

# 選択したスキル発動
    execute if entity @s[tag=M.InAction] run function asset:mob/0022.red_knight/tick/2.3.skill_active

# モデルの向き
    # 頭がプレイヤーの方を向く
        execute if entity @s[tag=!M.FacingLock] as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] facing entity @p feet run tp @s ~ ~ ~ ~ ~
    # リミット
        execute if entity @s[tag=!M.FacingLock] as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=44..90] run tp @s ~ ~ ~ ~ 45
        execute if entity @s[tag=!M.FacingLock] as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=-90..-44] run tp @s ~ ~ ~ ~ -45
    # 頭のモデルのデータに移す
        execute if entity @s[tag=!M.FacingLock] as @e[type=armor_stand,tag=M.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

    # 体
        execute if entity @s[tag=!M.FacingLock] as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] facing entity @p eyes run tp @s ~ ~ ~ ~45 ~

# 移動タグ付きなら移動
    execute if entity @s[tag=M.Move] run function asset:mob/0022.red_knight/tick/move/teleport/move_to_marker