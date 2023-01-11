#> asset:mob/1004.tultaria/tick/skill/lightning_stab/stop
#
# 埋まりそうになったら止まる
#
# @within function asset:mob/1004.tultaria/tick/skill/lightning_stab/tick

#
# タグを消す
    tag @s remove RW.Move
    tag @s remove RW.TickLock

# マーカーも消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 上向く
    execute at @s run tp @s ~ ~ ~ ~ ~-45

# 嘘慣性を設定
    scoreboard players set @s[tag=!RW.DisableInertia] RW.FakeInertia 13