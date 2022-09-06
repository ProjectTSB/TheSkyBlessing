#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/8.player_pull
#
# 変なことしたらこれで戻される。開幕にも使う。
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#   asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/3.charge
#   asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field

# テレポートさせる
    execute facing entity @e[type=wither_skeleton,scores={MobID=1004},sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# エフェクト
    summon area_effect_cloud ~ ~ ~ {Particle:"crit",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:9b,Duration:20},{Id:15,Amplifier:0b,Duration:20}]}

# 演出
    playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 2
    particle minecraft:portal ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal @s