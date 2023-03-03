#> asset:artifact/0793.queen_bee_rocket/trigger/bee
#
# 火の玉が実行
#
# @within function asset:artifact/0793.queen_bee_rocket/trigger/schedule_loop

#> Private
# @private
    #declare tag M1.Target

# スコア増やす
    scoreboard players add @s M1.Time 1
# 時間経過で殺す
    execute if score @s M1.Time matches 100.. run kill @s


# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!M1.Bee,distance=..2] run tag @s add M1.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add M1.Landing

# 着弾処理
    execute if entity @s[tag=M1.Landing] run function asset:artifact/0793.queen_bee_rocket/trigger/attack

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force

# 前方にいる敵をターゲットする
    execute positioned ^ ^ ^10 if entity @e[type=#lib:living,tag=Enemy,tag=!M1.Bee,distance=..10] run tag @e[type=#lib:living,tag=Enemy,tag=!M1.Bee,distance=..10,limit=1] add M1.Target
    #tag @s[tag=M1.Target] remove M1.Target
# 進ませる
    execute if entity @e[type=#lib:living,tag=M1.Target,distance=10..32] facing entity @e[type=#lib:living,tag=M1.Target,distance=..32,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~
    execute if entity @e[type=#lib:living,tag=M1.Target,distance=..10] facing entity @e[type=#lib:living,tag=M1.Target,distance=..32,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1.5 ~ ~
    execute unless entity @e[type=#lib:living,tag=M1.Target,distance=..32] run tp @s ^ ^ ^1 ~ ~

# ターゲットタグを削除
    tag @e[type=#lib:living,tag=M1.Target,distance=..50] remove M1.Target