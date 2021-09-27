#> asset:mob/0129.lexiel/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0129.lexiel/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 3L.Tick 1
    scoreboard players add @s 3L.Tick2 1

# 4tick毎に発動するコマンド
    execute if score @s 3L.Tick2 matches 4.. run function asset:mob/0129.lexiel/tick/regularly

# プレイヤーが周囲にいたら80tickでテレポート
    execute if score @s 3L.Tick matches 80 if entity @p[distance=..100] run function asset:mob/0129.lexiel/tick/2.1.teleport

# その後発動するスキル

# プレイヤーが周囲にいたら
    execute if score @s 3L.Tick matches 85 if entity @p[distance=..100] run function asset:mob/0129.lexiel/tick/2.2.skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 3L.Tick matches 85 unless entity @p[distance=..100] run scoreboard players reset @s 3L.Tick

# 発動中
    execute if score @s 3L.Tick matches 85.. run function asset:mob/0129.lexiel/tick/2.3.skill_active

# 以下エラー時の処理

# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary run execute if entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0129.lexiel/tick/2.1.teleport
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s 3L.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01] run function asset:mob/0129.lexiel/tick/armorstand_respawn