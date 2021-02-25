#> asset:sacred_treasure/0297.spirit_world_trance/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0297.spirit_world_trance/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# スコアボードを初期化
    scoreboard players set @s 4F.TickCount 200

# 現在のゲームモードを取得
    execute if entity @s[gamemode=survival] run scoreboard players set @s 4F.GameMode 0
    execute if entity @s[gamemode=creative] run scoreboard players set @s 4F.GameMode 1
    execute if entity @s[gamemode=adventure] run scoreboard players set @s 4F.GameMode 2

# ゲームモードをスペクテイターモードに変更
    gamemode spectator @s

# 秒数カウント開始
    schedule function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance 1t