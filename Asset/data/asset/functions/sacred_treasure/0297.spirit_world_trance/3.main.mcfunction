#> asset:sacred_treasure/0297.spirit_world_trance/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0297.spirit_world_trance/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 座標を管理するAEC召喚
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["4F.PosManager"],NoGravity:1b}

# トランス対象のプレイヤーにタグを付与
    tag @s add 4F.Player

# スコアボードを初期化
    scoreboard players set @s 4F.TickCount 200
    scoreboard players add $4F.UserManager 4F.UserID 1
    scoreboard players operation @s 4F.UserID = $4F.UserManager 4F.UserID
    scoreboard players operation @e[tag=4F.PosManager,sort=nearest,limit=1] 4F.UserID = $4F.UserManager 4F.UserID

# 現在のゲームモードを取得
    scoreboard players set @s[gamemode=survival] 4F.GameMode 0
    scoreboard players set @s[gamemode=creative] 4F.GameMode 1
    scoreboard players set @s[gamemode=adventure] 4F.GameMode 2

# 演出
    playsound entity.wither.ambient master @s ~ ~ ~ 1 2

# ゲームモードをスペクテイターモードに変更
    gamemode spectator @s

# 秒数カウント開始
    schedule function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance 1t