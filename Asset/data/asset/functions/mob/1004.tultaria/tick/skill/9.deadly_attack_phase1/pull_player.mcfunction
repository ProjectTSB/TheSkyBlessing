#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/pull_player
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 調子に…","color":"white"}]

# プレイヤーを引っ張ってくる
    execute at @s rotated ~ 0 positioned ^ ^1 ^3 as @a[distance=..30,sort=random,limit=3] run function asset:mob/1004.tultaria/tick/skill/sword_wall/player_pull

# 胴体はこの辺
    summon marker ~ ~0.5 ~ {Tags:["RW.BodyMarker"]}

# 演出
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 0.8
    playsound minecraft:block.portal.ambient hostile @a ~ ~ ~ 1 1.5
    particle minecraft:portal ~ ~1.5 ~ 0 0 0 1 200