#> asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
#
# 神器のメイン処理部
#
# @within
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.main
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
#> Private
# @private
    #declare tag AdvCheck

# ここから先は神器側の効果の処理を書く
    particle minecraft:smoke ~ ~ ~ 0 0 0 0 1



# 再起
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[distance=..30] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# ブロック破壊
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision unless block ^ ^ ^0.5 #lib:unbreakable if entity @s[gamemode=!adventure] run setblock ^ ^ ^0.5 air destroy
    # アドベンチャー用
        execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ^ ^ ^0.5 #lib:no_collision if block ^ ^ ^0.5 spawner if entity @s[gamemode=adventure] run setblock ^ ^ ^0.5 air destroy

    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!minecraft:player,dx=0] run kill @s