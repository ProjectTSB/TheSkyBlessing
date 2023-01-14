#> asset:mob/1004.tultaria/tick/skill/blazing_slash/tick
#
# デケェ火の斬撃
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/windup

# 追尾移動
    execute if score @s RW.Tick matches 0..40 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/follow

# 剣を構える
    execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/slash_windup

# 振る
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/active

# 形態によっては、爆炎が追加で飛ぶ
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 50 anchored eyes positioned ^ ^-0.5 ^4 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 55 anchored eyes positioned ^ ^-0.5 ^6 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 60 anchored eyes positioned ^ ^-0.5 ^8 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 65 anchored eyes positioned ^ ^-0.5 ^10 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 70 anchored eyes positioned ^ ^-0.5 ^12 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 75 anchored eyes positioned ^ ^-0.5 ^14 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 80 anchored eyes positioned ^ ^-0.5 ^16 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/reset
