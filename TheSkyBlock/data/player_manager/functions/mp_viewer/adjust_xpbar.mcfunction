#> player_manager:mp_viewer/adjust_xpbar
#
# xpbarを調整します
#
# @within function player_manager:mp_viewer/check_xpbar

#> private
# @private
    #declare score_holder $NowMP

#初期化
    xp set @s 40 levels
    xp set @s 0 points
    scoreboard players operation $NowMP Temporary = @s MP

# pointを設定
    execute if score $NowLvP Temporary matches 64.. run xp add @s 128 points
    execute if score $NowLvP Temporary matches 64.. run scoreboard players remove $NowLvP Temporary 64
    execute if score $NowLvP Temporary matches 32.. run xp add @s 64 points
    execute if score $NowLvP Temporary matches 32.. run scoreboard players remove $NowLvP Temporary 32
    execute if score $NowLvP Temporary matches 16.. run xp add @s 32 points
    execute if score $NowLvP Temporary matches 16.. run scoreboard players remove $NowLvP Temporary 16
    execute if score $NowLvP Temporary matches 8.. run xp add @s 16 points
    execute if score $NowLvP Temporary matches 8.. run scoreboard players remove $NowLvP Temporary 8
    execute if score $NowLvP Temporary matches 4.. run xp add @s 8 points
    execute if score $NowLvP Temporary matches 4.. run scoreboard players remove $NowLvP Temporary 4
    execute if score $NowLvP Temporary matches 2.. run xp add @s 4 points
    execute if score $NowLvP Temporary matches 2.. run scoreboard players remove $NowLvP Temporary 2
    execute if score $NowLvP Temporary matches 1.. run xp add @s 2 points

# levelを設定
    xp set @s 0 levels
    execute if score $NowMP Temporary matches 1024.. run xp add @s 1024 levels
    execute if score $NowMP Temporary matches 1024.. run scoreboard players remove $NowMP Temporary 1024
    execute if score $NowMP Temporary matches 512.. run xp add @s 512 levels
    execute if score $NowMP Temporary matches 512.. run scoreboard players remove $NowMP Temporary 512
    execute if score $NowMP Temporary matches 256.. run xp add @s 256 levels
    execute if score $NowMP Temporary matches 256.. run scoreboard players remove $NowMP Temporary 256
    execute if score $NowMP Temporary matches 128.. run xp add @s 128 levels
    execute if score $NowMP Temporary matches 128.. run scoreboard players remove $NowMP Temporary 128
    execute if score $NowMP Temporary matches 64.. run xp add @s 64 levels
    execute if score $NowMP Temporary matches 64.. run scoreboard players remove $NowMP Temporary 64
    execute if score $NowMP Temporary matches 32.. run xp add @s 32 levels
    execute if score $NowMP Temporary matches 32.. run scoreboard players remove $NowMP Temporary 32
    execute if score $NowMP Temporary matches 16.. run xp add @s 16 levels
    execute if score $NowMP Temporary matches 16.. run scoreboard players remove $NowMP Temporary 16
    execute if score $NowMP Temporary matches 8.. run xp add @s 8 levels
    execute if score $NowMP Temporary matches 8.. run scoreboard players remove $NowMP Temporary 8
    execute if score $NowMP Temporary matches 4.. run xp add @s 4 levels
    execute if score $NowMP Temporary matches 4.. run scoreboard players remove $NowMP Temporary 4
    execute if score $NowMP Temporary matches 2.. run xp add @s 2 levels
    execute if score $NowMP Temporary matches 2.. run scoreboard players remove $NowMP Temporary 2
    execute if score $NowMP Temporary matches 1.. run xp add @s 1 levels

# リセット
    scoreboard players reset $NowMP Temporary