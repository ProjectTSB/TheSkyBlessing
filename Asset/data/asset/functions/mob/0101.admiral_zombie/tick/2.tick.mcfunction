#> asset:mob/0101.admiral_zombie/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0101.admiral_zombie/tick/1.trigger

# 最初に旗を持つアーマースタンドを召喚
    execute positioned ~ ~1.5 ~ unless entity @e[type=armor_stand,tag=2T.BannerAS,distance=..10] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["2T.BannerAS"],ArmorItems:[{},{},{},{id:"green_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Color:0,Pattern:"sku"},{Color:15,Pattern:"bo"}]}}}]}

# 旗を背中に固定
    tp @e[type=armor_stand,tag=2T.BannerAS,distance=..10,sort=nearest,limit=1] ~ ~ ~ ~ ~

# スコア
    scoreboard players add @s 2T.Tick 1

# 4秒ごとに周囲にゾンビ類(95-99)が12体以上いないか検知し、いない場合召喚
    execute if score @s 2T.Tick matches 80.. run function asset:mob/0101.admiral_zombie/tick/3.check_zombie_count