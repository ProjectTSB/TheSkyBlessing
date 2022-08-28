#> asset:mob/0129.lexiel/tick/reset
#
#
#
# @within function asset:mob/0129.lexiel/tick/**

# スコアを戻す
    scoreboard players set @s 3L.Tick -60
    execute if entity @s[tag=3L.SkillSword] run scoreboard players set @s 3L.Tick -30

# タグをリセットする
    tag @s remove 3L.SkillMagic
    tag @s remove 3L.SkillExplode
    tag @s remove 3L.SkillExplodeParticle
    tag @s remove 3L.SkillSword
    tag @s remove 3L.SkillThunder