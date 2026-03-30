#> debug:april/bonus/reset_bonus

# 通知
    tellraw @a {"text":"祝福がリセットされました"}
    tag @s add Temp.SelectBonus

# 選択数初期化
    scoreboard players set $02.MaxHealth 02.SelectCount 0
    scoreboard players set $02.MaxMP 02.SelectCount 0
    scoreboard players set $02.Attack 02.SelectCount 0
    scoreboard players set $02.Defense 02.SelectCount 0
    scoreboard players set $02.MaxHealth 02.SelectBonusSum 0
    scoreboard players set $02.MaxMP 02.SelectBonusSum 0

# ボーナスを最低値に設定
    scoreboard players set $BonusHealth Global 120
    execute as @a run function api:modifier/max_health/update_bonus
    scoreboard players set $BonusMP Global 300
    execute as @a run function api:modifier/max_mp/update_bonus
    scoreboard players set $BonusAttack Global 0
    execute as @a run function api:modifier/attack/base/update_bonus
    scoreboard players set $BonusDefense Global 0
    execute as @a run function api:modifier/defense/base/update_bonus
    scoreboard players set $April.BonusCount Global 60

# UI表示
    function debug:april/bonus/show_bonus_ui
