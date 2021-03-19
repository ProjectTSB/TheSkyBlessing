#> asset:sacred_treasure/0297.spirit_world_trance/3.2.reset
#
# 数秒遅れての処理
#
# @within
#   function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance

# 帰還
    tag @s add 4F.End
    execute as @e[type=area_effect_cloud,tag=4F.PosManager] if score @s 4F.UserID = @a[tag=4F.End,limit=1] 4F.UserID run tp @a[tag=4F.End,limit=1] @s

# ゲームモードを戻す
    gamemode survival @s[scores={4F.GameMode=0}]
    gamemode creative @s[scores={4F.GameMode=1}]
    gamemode adventure @s[scores={4F.GameMode=2}]

# リセット処理
    execute as @e[type=area_effect_cloud,tag=4F.PosManager] if score @s 4F.UserID = @a[tag=4F.End,limit=1] 4F.UserID run kill @s
    scoreboard players reset @s 4F.UserID
    scoreboard players reset @s 4F.GameMode
    scoreboard players reset @s 4F.TickCount
    scoreboard players remove $4F.UserManager 4F.UserID 1
    tag @s remove 4F.End

# 他にトランス状態のプレイヤーがいない場合はスコアホルダーを削除
    execute if score $4F.UserManager 4F.UserID matches 0 run scoreboard players reset $4F.UserManager
