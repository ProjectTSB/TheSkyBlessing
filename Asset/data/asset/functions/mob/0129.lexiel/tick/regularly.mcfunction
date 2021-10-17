#> asset:mob/0129.lexiel/tick/regularly
#
# 4tick毎に発動します。particleの表示しすぎを防止する
#
# @within function asset:mob/0129.lexiel/tick/2.tick

# 爆発魔法陣
    execute if entity @s[tag=3L.SkillExplodeParticle] positioned ^ ^ ^5 positioned ~ ~0.3 ~ rotated ~ 0 run function asset:mob/0129.lexiel/tick/particle

# 魔法弾用の魔法陣
    execute if entity @s[tag=3L.SkillMagic] positioned ^ ^ ^1 positioned ~ ~1.4 ~ rotated ~ ~90 run function asset:mob/0129.lexiel/tick/particle2

# 雷攻撃用の円
    execute if entity @s[tag=3L.SkillThunder] run schedule function asset:mob/0129.lexiel/tick/thunder_particle_schedule 1t

# 4tickを超えたら戻す
    execute if score @s 3L.4tInterval matches 4.. run scoreboard players reset @s 3L.4tInterval