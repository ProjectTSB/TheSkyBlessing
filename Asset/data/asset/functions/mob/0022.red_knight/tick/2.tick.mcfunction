#> asset:mob/0022.red_knight/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0022.red_knight/tick/1.trigger


# スコアを増やす
    scoreboard players add @s M.Tick 1

# たまにプレイヤーが周囲にいたらテレポート
    execute if score @s M.Tick matches -15 if predicate lib:random_pass_per/20 if entity @p[distance=..100] run function asset:mob/0022.red_knight/tick/2.1.teleport

# プレイヤーが周囲にいたらテレポート
    execute if score @s M.Tick matches -5 if entity @p[distance=..100] run function asset:mob/0022.red_knight/tick/2.1.teleport

# その後発動するスキル
# プレイヤーが周囲にいたら
    execute if score @s M.Tick matches 0 if entity @p[distance=..100] run function asset:mob/0022.red_knight/tick/2.2.skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s M.Tick matches 0 unless entity @p[distance=..100] run scoreboard players set @s M.Tick -30

# 発動中
    execute if score @s M.Tick matches 0.. run function asset:mob/0022.red_knight/tick/2.3.skill_active

# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0022.red_knight/tick/2.1.teleport
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players set @s M.Tick -10
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01] run function asset:mob/0022.red_knight/tick/armorstand_respawn
