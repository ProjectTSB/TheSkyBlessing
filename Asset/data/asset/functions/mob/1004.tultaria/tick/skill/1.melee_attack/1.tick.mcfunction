#> asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick
#
# 近接攻撃する際にうごくの
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/2.windup

# 移動先を決定
    execute if score @s RW.Tick matches 18 at @r run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# ダッシュで突っ込んでくる
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/3.dash

# フェイズ3、ダッシュ直後に氷属性誘導弾
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=0}] RW.Tick matches 22 positioned ^2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/ice_shot
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=0}] RW.Tick matches 22 positioned ^-2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/ice_shot
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=0}] RW.Tick matches 24 positioned ^2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/ice_shot
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=0}] RW.Tick matches 24 positioned ^-2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/ice_shot

# フェイズ3、振り抜き後に雷
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 35 rotated ~ 0 positioned ^2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 37 rotated ~ 0 positioned ^4 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 39 rotated ~ 0 positioned ^6 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 35 rotated ~ 0 positioned ^-2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 37 rotated ~ 0 positioned ^-4 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=1}] RW.Tick matches 39 rotated ~ 0 positioned ^-6 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder

# フェイズ3、爆裂斬
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 35 rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 36 rotated ~ 0 positioned ^ ^ ^4 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 37 rotated ~ 0 positioned ^ ^ ^6 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 38 rotated ~ 0 positioned ^ ^ ^8 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 39 rotated ~ 0 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 40 rotated ~ 0 positioned ^ ^ ^12 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 41 rotated ~ 0 positioned ^ ^ ^14 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 42 rotated ~ 0 positioned ^ ^ ^16 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion
    execute if score @s[scores={RW.Phase=3,RW.LoopCount=2..}] RW.Tick matches 43 rotated ~ 0 positioned ^ ^ ^18 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/explosion

# 前方にプレイヤーがいたら振り抜く
    execute if score @s RW.Tick matches 20..35 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s RW.Tick 35

# 攻撃
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/4.slash

# 神なので斬撃はすごい量が出る
    execute if score @s RW.Tick matches 37 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/5.slash2
    execute if score @s RW.Tick matches 39 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/6.slash3

# フェイズ2なら何度か斬る
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 50 run scoreboard players add @s[scores={RW.LoopCount=..2}] RW.LoopCount 1
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 50 run scoreboard players set @s[scores={RW.LoopCount=..2}] RW.Tick -3

# リセット
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 50.. run function asset:mob/1004.tultaria/tick/reset
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/reset