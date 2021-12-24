#> mob_manager:init/add_flag
#
# Mobにフラグをセットします
#
# @within function mob_manager:init/

#> Private
# @private
    #declare score_holder $CloneFlagIndex

# グローバルインデックス増加
    scoreboard players add $FlagIndex Global 1
    scoreboard players operation $FlagIndex Global %= $2^15 Const
    execute if score $FlagIndex Global matches 0 run scoreboard players add $FlagIndex Global 1
# 直接UUIDとして突っ込む
    scoreboard players operation @s MobUUID = $FlagIndex Global
# Clone
    scoreboard players operation $CloneFlagIndex Temporary = $FlagIndex Global
# FlagIndex << 16
    scoreboard players operation $CloneFlagIndex Temporary *= $2^16 Const
# オーバーフローしてたらtag追加
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag0.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag0.1
# 0になるまでやる
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag1.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag1.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag2.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag2.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag3.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag3.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag4.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag4.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag5.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag5.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag6.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag6.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag7.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag7.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag8.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag8.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag9.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag9.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag10.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag10.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag11.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag11.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag12.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag12.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag13.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag13.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag14.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag14.1
    scoreboard players operation $CloneFlagIndex Temporary *= $2 Const
    execute if score $CloneFlagIndex Temporary matches 00.. run tag @s add FindFlag15.0
    execute if score $CloneFlagIndex Temporary matches ..-1 run tag @s add FindFlag15.1
# リセット
    scoreboard players reset $CloneFlagIndex Temporary