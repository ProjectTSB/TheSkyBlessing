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

# 80tickで発動
    execute if score @s 3L.Tick matches 80 run function asset:mob/0129.lexiel/tick/2.1.teleport

# その後発動するスキル

# スキルをランダムに選択する
    execute if score @s 3L.Tick matches 85 run function asset:mob/0129.lexiel/tick/2.2.skill_select

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