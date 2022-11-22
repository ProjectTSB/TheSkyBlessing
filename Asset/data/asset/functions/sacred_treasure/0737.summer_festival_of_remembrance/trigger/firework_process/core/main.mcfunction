#> asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/main
#
# 花火のコアのメイン処理
#
# @within function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop

# 回転
    tp @s ~ ~ ~ ~2 ~

# vfx
    execute if entity @p[distance=..5] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/vfx

# 一定間隔で花火召喚のためのランダムな位置にマーカーを配置する
    scoreboard players operation $Temp Temporary = @s KH.Tick
    scoreboard players operation $Temp Temporary %= $6 Const
    execute if score $Temp Temporary matches 0 run function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/spread
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s KH.Tick 1

# プレイヤーが少しの間スニークした場合、消えるという処理
    execute if entity @p[predicate=lib:is_sneaking] run function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/stop
    execute if entity @s[scores={KH.SneakTime=1..}] unless entity @p[predicate=lib:is_sneaking] run scoreboard players reset @s KH.SneakTime

# 消滅
    execute if entity @s[scores={KH.Tick=1800..}] run kill @s

# ループ
    schedule function asset:sacred_treasure/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop 1t replace