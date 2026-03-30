#> debug:april/bonus/apply_bonus.m


# 体力
    execute if score @s 02.Trigger matches 1 run scoreboard players add $BonusHealth Global 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectBonusSum 2
    execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectCount 1
    execute if score @s 02.Trigger matches 1 as @a run function api:modifier/max_health/update_bonus
# MP
    execute if score @s 02.Trigger matches 11 if score $02.MaxMP 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 11 if score $02.MaxMP 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 11 run scoreboard players add $BonusMP Global 4
    execute if score @s 02.Trigger matches 11 run scoreboard players add $02.MaxMP 02.SelectBonusSum 4
    execute if score @s 02.Trigger matches 11 run scoreboard players add $02.MaxMP 02.SelectCount 1
    execute if score @s 02.Trigger matches 11 as @a run function api:modifier/max_mp/update_bonus
# 攻撃
    execute if score @s 02.Trigger matches 3 if score $02.Attack 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 3 if score $02.Attack 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 3 run scoreboard players add $BonusAttack Global 1
    execute if score @s 02.Trigger matches 3 run scoreboard players add $02.Attack 02.SelectCount 1
    execute if score @s 02.Trigger matches 3 as @a run function api:modifier/attack/base/update_bonus
# 防御
    execute if score @s 02.Trigger matches 4 if score $02.Defense 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    execute if score @s 02.Trigger matches 4 if score $02.Defense 02.SelectCount matches 30.. run return run function asset:artifact/0002.blessing/trigger/show_trigger_chat
    execute if score @s 02.Trigger matches 4 run scoreboard players add $BonusDefense Global 1
    execute if score @s 02.Trigger matches 4 run scoreboard players add $02.Defense 02.SelectCount 1
    execute if score @s 02.Trigger matches 4 as @a run function api:modifier/defense/base/update_bonus
