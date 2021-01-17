#> player_manager:mp_viewer/check_xpbar
#
# 経験値が想定される表示とずれている場合に修正します
#
# @within function core:tick

#> private
# @private
    #declare score_holder $Lv
    #declare score_holder $LvP
    #declare score_holder $nowLvP
    #declare tag Success

# 神器assetの開発を優先するため一時的にactionbarに表示
    execute as @a run title @s actionbar [{"text":"MP: "},{"score":{"objective":"MP","name":"@s"}},{"text":"/"},{"score":{"objective":"MPMax","name":"@s"}}]

# # 取得
#     execute store result score $Lv Temporary run xp query @s levels
#     execute store result score $LvP Temporary run data get entity @s XpP
# # 現在の%を計算
#     scoreboard players operation $nowLvP Temporary = @s MP
#     scoreboard players operation $nowLvP Temporary *= $100 Const
#     scoreboard players operation $nowLvP Temporary /= @s MPMax
# # ずれている場合再調整
#     execute if score @s MP = $Lv Temporary if score $nowLvP Temporary = $LvP Temporary run tag @s add Success
#     execute if entity @s[tag=!Success] run function player_manager:mp_viewer/adjust_xpbar
#     tag @s remove Success