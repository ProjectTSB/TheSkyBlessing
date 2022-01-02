#> asset:mob/0214.water_magic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0214.water_magic/tick/1.trigger

# 一定間隔でダメージ&演出

# 自分を回転
    execute if score @s 5Y.Tick matches ..20 at @s run tp @s ~ ~ ~ ~15 0
# 発動前にパーティクル
    execute if score @s 5Y.Tick matches ..20 at @s run function asset:mob/0214.water_magic/tick/particle


# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 5Y.Tick
# 一定間隔毎にMP回復と魔法陣の表示
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score @s 5Y.Tick matches 20.. if score $Temp Temporary matches 0 at @s run function asset:mob/0214.water_magic/tick/03.damage_and_vfx

# tickスコア
    scoreboard players add @s 5Y.Tick 1

# リセット
    scoreboard players reset $Temp Temporary

# 25tick目でkill
    execute if score @s 5Y.Tick matches 45.. run kill @s