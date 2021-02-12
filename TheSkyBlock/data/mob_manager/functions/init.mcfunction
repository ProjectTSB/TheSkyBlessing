#> mob_manager:init
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
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag0
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag2
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag3
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag4
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag5
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag6
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag7
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag8
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag9
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag10
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag11
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag12
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag13
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag14
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag15
# リセット
    scoreboard players reset $CloneFlagIndex Temporary