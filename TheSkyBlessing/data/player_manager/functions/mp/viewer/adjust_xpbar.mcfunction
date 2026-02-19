#> player_manager:mp/viewer/adjust_xpbar
#
# xpbarを調整します
#
# @within function player_manager:mp/viewer/check_xpbar

#> private
# @private
    #declare score_holder $NowMP

#初期化 //40levelは最大が201pointであることを利用して100%までを表現する
    xp set @s 40 levels
    xp set @s 0 points
    scoreboard players operation $NowMP Temporary = @s MP
    scoreboard players operation $NowMP Temporary /= $10 Const

# pointを設定
    scoreboard players operation $NowLvP Temporary *= $2^24 Const
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 128 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 64 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 32 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 16 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 8 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 4 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 2 points
    scoreboard players operation $NowLvP Temporary *= $2 Const
    execute if score $NowLvP Temporary matches ..-1 run xp add @s 1 points

# levelを設定
    xp set @s 0 levels
    scoreboard players operation $NowMP Temporary *= $2^20 Const
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 1024 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 512 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 256 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 128 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 64 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 32 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 16 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 8 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 4 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 2 levels
    scoreboard players operation $NowMP Temporary *= $2 Const
    execute if score $NowMP Temporary matches ..-1 run xp add @s 1 levels

# リセット
    scoreboard players reset $NowMP Temporary
