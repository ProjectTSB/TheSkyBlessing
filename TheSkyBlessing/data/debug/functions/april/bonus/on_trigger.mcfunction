#> debug:april/bonus/on_trigger

# 見やすいように改行
    tellraw @s [{"text":"\n\n\n\n\n","color":"white"}]

# エラー値
    execute unless score @s 02.Trigger matches 1..40 run function lib:message/invalid_operation
    execute unless score @s 02.Trigger matches 1..40 run return run function debug:april/bonus/show_bonus_ui
# 体力
    # execute if score @s 02.Trigger matches 1 if score $02.MaxHealth 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    # execute if score @s 02.Trigger matches 1 if score $02.MaxHealth 02.SelectCount matches 30.. run return run function debug:april/bonus/show_bonus_ui
    # execute if score @s 02.Trigger matches 1 run scoreboard players add $BonusHealth Global 60
    # execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectBonusSum 60
    # execute if score @s 02.Trigger matches 1 run scoreboard players add $02.MaxHealth 02.SelectCount 30
    # execute if score @s 02.Trigger matches 1 run scoreboard players remove $April.BonusCount Global 30
    execute if score @s 02.Trigger matches 1 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:-30,Multiply:2}
    execute if score @s 02.Trigger matches 2 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:-10,Multiply:2}
    execute if score @s 02.Trigger matches 3 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:-1,Multiply:2}
    execute if score @s 02.Trigger matches 4 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:1,Multiply:2}
    execute if score @s 02.Trigger matches 5 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:10,Multiply:2}
    execute if score @s 02.Trigger matches 6 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxHealth",BonusName:"$BonusHealth",Count:30,Multiply:2}
    # 体力下限に合わせる
        execute if score @s 02.Trigger matches 1..10 run scoreboard players add $BonusHealth Global 120
    execute if score @s 02.Trigger matches 1..10 as @a run function api:modifier/max_health/update_bonus
# # MP
#     execute if score @s 02.Trigger matches 2 if score $02.MaxMP 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
#     execute if score @s 02.Trigger matches 2 if score $02.MaxMP 02.SelectCount matches 30.. run return run function debug:april/bonus/show_bonus_ui
#     execute if score @s 02.Trigger matches 2 run scoreboard players add $BonusMP Global 120
#     execute if score @s 02.Trigger matches 2 run scoreboard players add $02.MaxMP 02.SelectBonusSum 120
#     execute if score @s 02.Trigger matches 2 run scoreboard players add $02.MaxMP 02.SelectCount 30
#     execute if score @s 02.Trigger matches 2 run scoreboard players remove $April.BonusCount Global 30
    # execute if score @s 02.Trigger matches 11 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:-30,Multiply:4}
    execute if score @s 02.Trigger matches 11 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:-30,Multiply:4}
    execute if score @s 02.Trigger matches 12 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:-10,Multiply:4}
    execute if score @s 02.Trigger matches 13 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:-1,Multiply:4}
    execute if score @s 02.Trigger matches 14 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:1,Multiply:4}
    execute if score @s 02.Trigger matches 15 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:10,Multiply:4}
    execute if score @s 02.Trigger matches 16 run function debug:april/bonus/apply_bonus.m {CountName:"$02.MaxMP",BonusName:"$BonusMP",Count:30,Multiply:4}
    # MP下限に合わせる
        execute if score @s 02.Trigger matches 11..20 run scoreboard players add $BonusMP Global 300
    execute if score @s 02.Trigger matches 11..20 as @a run function api:modifier/max_mp/update_bonus
# 攻撃
    # execute if score @s 02.Trigger matches 21 if score $02.Attack 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    # execute if score @s 02.Trigger matches 21 if score $02.Attack 02.SelectCount matches 30.. run return run function debug:april/bonus/show_bonus_ui
    # execute if score @s 02.Trigger matches 21 run scoreboard players add $BonusAttack Global 30
    # execute if score @s 02.Trigger matches 21 run scoreboard players add $02.Attack 02.SelectCount 30
    # execute if score @s 02.Trigger matches 21 run scoreboard players remove $April.BonusCount Global 30
    execute if score @s 02.Trigger matches 21 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:-30,Multiply:1}
    execute if score @s 02.Trigger matches 22 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:-10,Multiply:1}
    execute if score @s 02.Trigger matches 23 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:-1,Multiply:1}
    execute if score @s 02.Trigger matches 24 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:1,Multiply:1}
    execute if score @s 02.Trigger matches 25 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:10,Multiply:1}
    execute if score @s 02.Trigger matches 26 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Attack",BonusName:"$BonusAttack",Count:30,Multiply:1}
    execute if score @s 02.Trigger matches 21..30 as @a run function api:modifier/attack/base/update_bonus
# 防御
    # execute if score @s 02.Trigger matches 31 if score $02.Defense 02.SelectCount matches 30.. run tellraw @s [{"text":"上限を超えてステータスを上げることは出来ません","color":"red"}]
    # execute if score @s 02.Trigger matches 31 if score $02.Defense 02.SelectCount matches 30.. run return run function debug:april/bonus/show_bonus_ui
    # execute if score @s 02.Trigger matches 31 run scoreboard players add $BonusDefense Global 30
    # execute if score @s 02.Trigger matches 31 run scoreboard players add $02.Defense 02.SelectCount 30
    # execute if score @s 02.Trigger matches 31 run scoreboard players remove $April.BonusCount Global 30
    execute if score @s 02.Trigger matches 31 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:-30,Multiply:1}
    execute if score @s 02.Trigger matches 32 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:-10,Multiply:1}
    execute if score @s 02.Trigger matches 33 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:-1,Multiply:1}
    execute if score @s 02.Trigger matches 34 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:1,Multiply:1}
    execute if score @s 02.Trigger matches 35 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:10,Multiply:1}
    execute if score @s 02.Trigger matches 36 run function debug:april/bonus/apply_bonus.m {CountName:"$02.Defense",BonusName:"$BonusDefense",Count:30,Multiply:1}
    execute if score @s 02.Trigger matches 31..40 as @a run function api:modifier/defense/base/update_bonus
# リセット
    scoreboard players reset @s 02.Trigger

# 上限が残っている場合、再度表示
    function debug:april/bonus/show_bonus_ui
