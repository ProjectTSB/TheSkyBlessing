#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/main
#
# 花火のコアのメイン処理
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop

# 一定間隔で花火召喚のためのランダムな位置にマーカーを配置する
    scoreboard players operation $Temp Temporary = @s KH.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/spread
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s KH.Tick 1

# 消滅
    execute if entity @s[scores={KH.Tick=1200..}] run kill @s

# ループ
    schedule function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop 1t replace