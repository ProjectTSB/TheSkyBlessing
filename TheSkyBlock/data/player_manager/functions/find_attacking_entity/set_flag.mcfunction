#> player_manager:find_attacking_entity/set_flag
#
# Mobにフラグをセットします
#
# @within function core:tick

#> Private
# @private
    #declare score_holder $FlagIndex
    #declare score_holder $CloneFlagIndex

# 初期化フラグ追加
    tag @s add AlreadyInitMob
# グローバルインデックス増加
    scoreboard players add $FlagIndex Global 1
    scoreboard players operation $FlagIndex Global %= $2^15 Const
    execute if score $FlagIndex Global matches 0 run scoreboard players add $FlagIndex Global 1
# Clone
    scoreboard players operation $CloneFlagIndex Temporary = $FlagIndex Global
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex Temporary *= $2^16 Const
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag0
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag2
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag3
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag4
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag5
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag6
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag7
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag8
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag9
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag10
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag11
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag12
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag13
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag14
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag15
# リセット
    scoreboard players reset $CloneFlagIndex Temporary