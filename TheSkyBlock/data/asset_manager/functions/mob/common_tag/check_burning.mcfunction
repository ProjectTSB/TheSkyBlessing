#> asset_manager:mob/common_tag/check_burning
#
# FireNBTをチェックします
#
# @within function asset_manager:mob/common_tag/

#> Temp
# @private
    #declare score_holder $Fire

# Fireを取得
    execute store result score $Fire Temporary run data get entity @s Fire 100
# AntiかAlwaysかによって処理を変える
    execute if entity @s[tag=AntiBurn] if score $Fire Temporary matches 1.. run data modify entity @s Fire set value 0s
    execute if entity @s[tag=AlwaysBurn] if score $Fire Temporary matches 0 run data modify entity @s Fire set value 32767s
# リセット
    scoreboard players reset $Fire Temporary