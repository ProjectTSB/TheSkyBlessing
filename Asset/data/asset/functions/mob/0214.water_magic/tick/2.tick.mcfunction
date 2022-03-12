#> asset:mob/0214.water_magic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0214.water_magic/tick/1.trigger

# 一定間隔でダメージ&演出

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 5Y.Tick

    execute if score @s 5Y.Tick matches ..25 run scoreboard players operation $Temp Temporary %= $2 Const

# 自分を回転
    execute if score @s 5Y.Tick matches ..30 if score $Temp Temporary matches 0 at @s run tp @s ~ ~ ~ ~15 0
# 発動前にパーティクル
    execute if score @s 5Y.Tick matches ..30 if score $Temp Temporary matches 0 at @s run function asset:mob/0214.water_magic/tick/03.ready_vfx

# 一定間隔毎に魔方陣とダメージ
    execute if score @s 5Y.Tick matches 30.. run scoreboard players operation $Temp Temporary %= $5 Const
    execute if score @s 5Y.Tick matches 30.. if score $Temp Temporary matches 0 run function asset:mob/0214.water_magic/tick/04.damage_and_vfx

# tickスコア
    scoreboard players add @s 5Y.Tick 1

# リセット
    scoreboard players reset $Temp Temporary

# kill
    execute if score @s 5Y.Tick matches 55.. run kill @s