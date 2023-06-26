#> asset:mob/0284.lexiel/tick/wait_time/base_move/tick
#
#
#
# @within function asset:mob/0284.lexiel/tick/2.tick

# こっち向く
    execute if entity @s[tag=!7W.InAction] unless entity @s[scores={7W.FakeInertia=0..}] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!7W.InAction,tag=!7W.Move] 7W.Tick matches 25.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0284.lexiel/tick/3.skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s[tag=!7W.InAction,tag=!7W.Move] 7W.Tick matches 25.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 7W.Tick 0

# 選択したスキル発動
    execute if entity @s[tag=7W.InAction] run function asset:mob/0284.lexiel/tick/4.skill_active

# モデルの向き
    # 頭がプレイヤーの方を向く
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5] facing entity @p feet run tp @s ~ ~ ~ ~ ~
    # リミット
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=34..90] run tp @s ~ ~ ~ ~ 35
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=-90..-24] run tp @s ~ ~ ~ ~ -25
    # 頭のモデルのデータに移す
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

    # 体
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5] facing entity @p eyes run tp @s ~ ~ ~ ~-35 ~
        execute if entity @s[tag=!7W.InAction] as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5] run item replace entity @s armor.head with stick{CustomModelData:20292}

# 移動タグ付きなら移動
    execute if entity @s[tag=7W.Move,tag=!7W.InAction] run function asset:mob/0284.lexiel/tick/move/teleport/move_to_marker

# 嘘慣性
    # 下が空気なら通常実行
        execute if entity @s[scores={7W.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/0284.lexiel/tick/wait_time/base_move/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute if entity @s[scores={7W.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/0284.lexiel/tick/wait_time/base_move/fake_inertia
