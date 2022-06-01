#> asset:mob/0120.convict/player_process/2.main
#
# デバフのメイン処理
#
# @within function asset:mob/0120.convict/player_process/1.loop

#> Private
# @private
    #declare score_holder $Temp

# 演出
    particle block redstone_block ~ ~0.8 ~ 0.4 0.6 0.4 0 3 normal @a

# 音
    scoreboard players operation $Temp Temporary = @s 3C.DebuffTime
    scoreboard players operation $Temp Temporary %= $30 Const
    execute if score $Temp Temporary matches 0 run playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.25 0.5 0
    execute if score $Temp Temporary matches 0 run playsound entity.spider.step player @a ~ ~ ~ 0.8 1.2 0
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players remove @s 3C.DebuffTime 1

# 効果終了処理
    execute if entity @s[scores={3C.DebuffTime=..0}] run function asset:mob/0120.convict/player_process/3.reset

# ループ
    execute if entity @s[scores={3C.DebuffTime=0..}] run schedule function asset:mob/0120.convict/player_process/1.loop 1t replace
