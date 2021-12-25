#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.2.fairy_init
#
# 最初に実行するやつ
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.main

# 天空から降ろす
    tp @s ~ ~-255 ~
#    execute at @p run tp @s ~ ~ ~

# 万が一仕様変更でunivrsalAngerがfalseになったとき用
    execute at @s run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[295Fa.AEC],Radius:0.4f,Duration:6,DurationOnUse:0,Age:4,WaitTime:0,Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute as @e[type=area_effect_cloud,tag=295Fa.AEC,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID

# タグ整備
    tag @s remove 295Fa.Init
    tag @s add 295Fa.Main

# 最寄のプレイヤー(実行者)のMP最大値取得
# まだ