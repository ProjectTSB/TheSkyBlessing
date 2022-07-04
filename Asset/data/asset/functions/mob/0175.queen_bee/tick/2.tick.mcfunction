#> asset:mob/0175.queen_bee/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0175.queen_bee/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 4V.Tick 1

# teleportするやつ
    execute if score @s 4V.Tick matches -59 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0175.queen_bee/tick/teleport

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 4V.Tick matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0175.queen_bee/tick/3.skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 4V.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 4V.Tick -60

# 選択したスキル発動
    execute if score @s 4V.Tick matches 0.. run function asset:mob/0175.queen_bee/tick/4.skill_active

# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0175.queen_bee/tick/teleport
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s 4V.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01] run function asset:mob/0175.queen_bee/tick/armorstand_respawn