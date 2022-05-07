#> asset:mob/0262.frestchika/death/text_summon
#
#
#
# @within function asset:mob/0262.frestchika/death/3.death_animation

# マーカー召喚
    summon marker ~ ~0.5 ~ {Tags:["Object","7A.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[2d,2d],[2d,2d],[2d,2d]]
    execute as @e[type=marker,tag=7A.This,distance=..10] at @s run function lib:spread_entity/

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $9 Const
# メッセージ
    execute if score $Random Temporary matches 0 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110110","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 1 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110001","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 2 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110101","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 3 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110110","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 4 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110101","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 5 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"0110","font":"mob/262/01"},{"text":"#","font":"invisible_bg"}]'}
    execute if score $Random Temporary matches 6 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"faild","font":"mob/262/01","obfuscated":true},{"text":"#","font":"invisible_bg","obfuscated":false}]'}
    execute if score $Random Temporary matches 7 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"error","font":"mob/262/01","obfuscated":true},{"text":"#","font":"invisible_bg","obfuscated":false}]'}
    execute if score $Random Temporary matches 8 at @e[type=marker,tag=7A.This,distance=..3.5] run summon area_effect_cloud ^ ^ ^ {CustomNameVisible:1b,Particle:"block air",Duration:40,Tags:["Object"],CustomName:'[{"text":"shutdown","font":"mob/262/01","obfuscated":true},{"text":"#","font":"invisible_bg","obfuscated":false}]'}
# リセット
    scoreboard players reset $Random Temporary


# リセット
    kill @e[type=marker,tag=7A.This,distance=..10]