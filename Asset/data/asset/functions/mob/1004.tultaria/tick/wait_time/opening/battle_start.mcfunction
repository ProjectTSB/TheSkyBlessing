#> asset:mob/1004.tultaria/tick/wait_time/opening/battle_start
#
# 戦闘開始する
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# タグ調整
    tag @s remove RW.Opening
    tag @s add RW.Phase3

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# スコアセット
    scoreboard players reset @s RW.Tick
    scoreboard players set @s RW.LoopCount 0


# 移動する
    scoreboard players set @s RW.Speed 10
    function asset:mob/1004.tultaria/tick/reset