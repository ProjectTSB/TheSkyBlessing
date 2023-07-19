#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/move_to_center
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/return_to_neutral/play

# 速度設定
    scoreboard players set @s RW.Speed 7

# 中心に移動
    function asset:mob/1004.tultaria/tick/move/teleport/move_to_center

# 中心を向く
    execute facing entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 移動終了までTick加算停止
    tag @s add RW.TickLock

# この動作をループしないようにスコア1だけ増やす
    scoreboard players add @s RW.Tick 1