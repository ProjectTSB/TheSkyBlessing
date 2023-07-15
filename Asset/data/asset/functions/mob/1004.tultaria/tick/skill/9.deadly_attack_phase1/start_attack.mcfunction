#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/start_attack
#
# 攻撃開始
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 乗らないで。","color":"white"}]

# 演出
    playsound ogg:block.respawn_anchor.deplete1 hostile @a ~ ~ ~ 3 1.5
    playsound ogg:block.respawn_anchor.deplete1 hostile @a ~ ~ ~ 3 1.7
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.6
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.7
    execute at @e[type=marker,tag=RW.BodyMarker,distance=..5,sort=nearest,limit=1] run particle minecraft:reverse_portal ~ ~1.3 ~ 0 0 0 1 200

# 杖回転モーション再生
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_rod_spin/play
