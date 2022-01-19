#> asset:mob/0241.water_jail/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0241.water_jail/tick/1.trigger

# ダメージエリアの判定
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=3.5..9] run function asset:mob/0241.water_jail/tick/3.damage

# スコア
    scoreboard players add @s 6P.Tick 1

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6P.Tick
# 1秒毎にMP回復と魔法陣の表示
    scoreboard players operation $Temp Temporary %= $6 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0241.water_jail/tick/4.vfx

# 消滅
    execute if score @s 6P.Tick matches 120.. run kill @s