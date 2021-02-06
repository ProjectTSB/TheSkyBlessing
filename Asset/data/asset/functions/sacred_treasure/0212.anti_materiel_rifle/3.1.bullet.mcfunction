#> asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
#
# 再起する弾
#
# @within
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.main
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 再起
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[distance=..80] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
    #execute if entity @s[distance=..30] positioned ^ ^ ^0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
    particle minecraft:cloud ~ ~ ~ 0 0 0 0 1
    particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0 1


# 着弾の演出
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 10
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision run playsound minecraft:entity.generic.explode block @a

# ブロック破壊
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision unless block ^ ^ ^0.5 #lib:unbreakable if entity @s[gamemode=!adventure] run setblock ^ ^ ^0.5 air destroy

    # アドベンチャー用(仕様決まるまでちょっと保留で)
        #execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision if block ^ ^ ^0.5 spawner if entity @s[gamemode=adventure] run setblock ^ ^ ^0.5 air destroy

    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.2.bullet_damage