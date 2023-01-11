#> asset:mob/0214.water_magic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0214.water_magic/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 一定間隔でダメージ&演出を行う

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 5Y.Tick
    execute if entity @s[scores={5Y.Tick=..30}] run scoreboard players operation $Temp Temporary %= $2 Const

# 最初の数tickだけ当たり判定の円を表示
    execute if entity @s[scores={5Y.Tick=..5}] run function asset:mob/0214.water_magic/tick/vfx

# 発動前にパーティクル
    execute if entity @s[scores={5Y.Tick=..30}] if score $Temp Temporary matches 0 run function asset:mob/0214.water_magic/tick/3.ready_vfx

# 一定間隔毎に魔方陣表示とダメージ
    execute if entity @s[scores={5Y.Tick=30..}] run scoreboard players operation $Temp Temporary %= $5 Const
    execute if entity @s[scores={5Y.Tick=30..}] if score $Temp Temporary matches 0 run function asset:mob/0214.water_magic/tick/4.damage_and_vfx

# スコア加算
    scoreboard players add @s 5Y.Tick 1

# リセット
    scoreboard players reset $Temp Temporary

# kill
    execute if entity @s[scores={5Y.Tick=55..}] run kill @s