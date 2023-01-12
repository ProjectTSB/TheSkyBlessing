#> asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick
#   asset:mob/1004.tultaria/tick/skill/2.meteor_attack/3.activate

# サウンド
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.3
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 3 1.0

# 攻撃の量を指定
    execute if entity @s[scores={RW.Phase=1}] run scoreboard players set $AttackAmount Temporary 3
    execute if entity @s[scores={RW.Phase=2..}] run scoreboard players set $AttackAmount Temporary 4

# 召喚
    function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/5.summon