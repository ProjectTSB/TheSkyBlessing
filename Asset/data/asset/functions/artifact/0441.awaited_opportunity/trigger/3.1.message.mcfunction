#> asset:artifact/0441.awaited_opportunity/trigger/3.1.message
#
# メッセージを流す
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/3.main
#> Private
# @private
    #declare score_holder $Random

# マガジンマーク召喚
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] at @s positioned ~ ~1 ~ run summon area_effect_cloud ^0.5 ^ ^ {CustomNameVisible:1b,Radius:0f,Duration:20,CustomName:'{"text":"！？","bold":true}'}
# 効果音
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0

# ランダムでメッセージを垂れ流す
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0..4 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"あんまチョーシくれてっとひき肉にしちまうよ！"}]
        execute if score $Random Temporary matches 5..9 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"おまえも････ うるさい蟲だ････"}]
        execute if score $Random Temporary matches 10..14 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"殺し合いだッ...！クソ野郎！！"}]
        execute if score $Random Temporary matches 15..19 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"フザけろよ････？ コラ････"}]
        execute if score $Random Temporary matches 20..24 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"まだ”疼き”は 止まらねーゾぉ･･？"}]
        execute if score $Random Temporary matches 25..29 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"カチ割ってやんゾ！？そのド頭ぁっ！！"}]
        execute if score $Random Temporary matches 30..34 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"てめーも海に沈めてやんよォ！！"}]
        execute if score $Random Temporary matches 35..39 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"ケンカの話の時間だ！コラァ！！"}]
        execute if score $Random Temporary matches 40..44 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"おぉ！上等だよ！てめーら上等だってんだよ！！"}]
        execute if score $Random Temporary matches 45..49 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"今夜で”オワリ”にしてやるよ！"}]
        execute if score $Random Temporary matches 50..54 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"冥府に送っちまえってよォ！！"}]
        execute if score $Random Temporary matches 55..59 as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"“事故”る奴は････“不運”と”踊”っちまったんだよ････"}]
        execute if score $Random Temporary matches 60..64 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"てめェの臓物ブチまけてやる････！！"}]
        execute if score $Random Temporary matches 65..69 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"俺が手に入れてやる･･･！その領域･･！”スピードの向こう側”を･･！！"}]
        execute if score $Random Temporary matches 70..74 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"疼くんだよゥ････"}]
        execute if score $Random Temporary matches 75..79 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"楽しーぜェ！？月が狂っちまってやがるぜェ！？てめーらよぅ！！"}]
        execute if score $Random Temporary matches 80..84 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"”ひき肉”だッ！！てめーらぁ！？"}]
        execute if score $Random Temporary matches 85..94 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"”全部”････潰してくれてやんからよぅ････"}]
        execute if score $Random Temporary matches 95..99 run tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"めんどくせーから全部殺すか？あ？"}]

    # プレイヤーが"不運"と"踊"っちまった時
        execute if score $Random Temporary matches 55..59 run function asset:artifact/0441.awaited_opportunity/trigger/3.2.hardluck

    # スピードの向こう側
        execute if score $Random Temporary matches 65..69 run effect give @s speed 30 10 true

    # リセット
        scoreboard players reset $Random Temporary