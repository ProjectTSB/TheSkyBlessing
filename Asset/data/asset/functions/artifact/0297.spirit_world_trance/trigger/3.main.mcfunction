#> asset:artifact/0297.spirit_world_trance/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0297.spirit_world_trance/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 座標を管理するAEC召喚
    summon minecraft:area_effect_cloud ~ ~ ~ {Duration:201,Tags:["89.PosManager"],NoGravity:1b}

# トランス対象のプレイヤーにタグを付与
    tag @s add 89.Player

# スコアボードを初期化
    scoreboard players set @s 89.TickCount 200
    scoreboard players add $4F.UserManager 89.UserID 1
    scoreboard players operation @s 89.UserID = $4F.UserManager 89.UserID
    scoreboard players operation @e[type=area_effect_cloud,tag=89.PosManager,sort=nearest,limit=1] 89.UserID = $4F.UserManager 89.UserID

# 現在のゲームモードを取得
    scoreboard players set @s[gamemode=survival] 89.GameMode 0
    scoreboard players set @s[gamemode=creative] 89.GameMode 1
    scoreboard players set @s[gamemode=adventure] 89.GameMode 2

# 演出
    playsound entity.wither.ambient player @s ~ ~ ~ 1 2

# ゲームモードをスペクテイターモードに変更
    gamemode spectator @s

# 秒数カウント開始
    schedule function asset:artifact/0297.spirit_world_trance/trigger/3.1.trance 1t