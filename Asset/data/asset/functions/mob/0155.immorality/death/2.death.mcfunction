#> asset:mob/0155.immorality/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0155.immorality/death/1.trigger
#> Private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $11 Const
# メッセージ出力
    execute if score $Random Temporary matches 0 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Crime?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 1 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Wickedness?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 2 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Sad?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 3 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Theft?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 4 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Hopelessness?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 5 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Foolishness?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 6 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Violence?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 7 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Will?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 8 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Soul?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 9 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Ego?","color":"dark_red","bold":true,"underlined":true}'}
    execute if score $Random Temporary matches 10 run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'{"text":"Unity?","color":"dark_red","bold":true,"underlined":true}'}
# リセット
    scoreboard players reset $Random Temporary
