#> asset:artifact/0297.spirit_world_trance/trigger/3.2.reset
#
# 数秒遅れての処理
#
# @within
#   function asset:artifact/0297.spirit_world_trance/trigger/3.1.trance
#   function asset:artifact/0297.spirit_world_trance/trigger/rejoin_process

# 帰還
    tag @s add 89.End
    tag @s add 89.Kill
    execute as @e[type=area_effect_cloud,tag=89.PosManager] if score @s 89.UserID = @a[tag=89.End,limit=1] 89.UserID run tp @a[tag=89.End,limit=1] @s

# ゲームモードを戻す
    gamemode survival @s[scores={89.GameMode=0}]
    gamemode creative @s[scores={89.GameMode=1}]
    gamemode adventure @s[scores={89.GameMode=2}]

# 転移先が検知できた場合タグを消す
    execute as @e[type=area_effect_cloud,tag=89.PosManager] if score @s 89.UserID = @a[tag=89.End,limit=1] 89.UserID run tag @a[tag=89.End,limit=1] remove 89.Kill

# リセット処理
    execute as @e[type=area_effect_cloud,tag=89.PosManager] if score @s 89.UserID = @a[tag=89.End,limit=1] 89.UserID run kill @s
    scoreboard players reset @s 89.UserID
    scoreboard players reset @s 89.GameMode
    scoreboard players reset @s 89.TickCount
    scoreboard players remove $4F.UserManager 89.UserID 1
    tag @s remove 89.End

# 他にトランス状態のプレイヤーがいない場合はスコアホルダーを削除
    execute if score $4F.UserManager 89.UserID matches 0 run scoreboard players reset $4F.UserManager

# 不正した人間をぶっ殺す
    execute if entity @s[tag=89.Kill] run tellraw @a [{"selector":"@s"},{"text":" が現れることはなかった..."}]
    kill @s[tag=89.Kill]