#> mob_manager:detect_hurt_entity/set_flag
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
# Clone
    scoreboard players operation $CloneFlagIndex Temporary = $FlagIndex Global
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex Temporary *= $2^16 Const
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-0
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-2
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-3
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-4
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-5
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-6
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-7
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-8
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-9
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-10
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-11
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-12
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-13
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-14
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add DetectFlag-15
# リセット
    scoreboard players reset $CloneFlagIndex Temporary