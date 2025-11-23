#> world_manager:area/01-50.training_area/
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

#> 人形の存在を特定するためのタグ
# @private
    #declare tag Doll.Normal.1
    #declare tag Doll.Normal.2
    #declare tag Doll.Normal.3
    #
    #declare tag Doll.Fragile.1
    #declare tag Doll.Fragile.2
    #declare tag Doll.Fragile.3
    #
    #declare tag Doll.Physical.1
    #
    #declare tag Doll.Magical.1

# エリアセット
    scoreboard players set $NextInSubArea Temporary 50

# 座標チェックを行い、その場にタグ付きの人形がいなければ召喚してタグを与える
    # ノーマル人形
        execute rotated 90 0 positioned 2687 105 -476 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Normal.1,scores={MobID=439},distance=..128] run function world_manager:area/01-50.training_area/summon/normal_dummy
        execute rotated 90 0 positioned 2687 105 -476 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Normal.1,scores={MobID=439},distance=..0.1] add Doll.Normal.1

        execute rotated -45 0 positioned 2679 105 -495 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Normal.2,scores={MobID=439},distance=..128] run function world_manager:area/01-50.training_area/summon/normal_dummy
        execute rotated -45 0 positioned 2679 105 -495 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Normal.2,scores={MobID=439},distance=..0.1] add Doll.Normal.2

        execute rotated -135 0 positioned 2679 105 -462 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Normal.3,scores={MobID=439},distance=..128] run function world_manager:area/01-50.training_area/summon/normal_dummy
        execute rotated -135 0 positioned 2679 105 -462 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Normal.3,scores={MobID=439},distance=..0.1] add Doll.Normal.3

    # 壊れる人形: 破壊時に即座に出現しないように、上から降ってくる。
        execute rotated 90 0 positioned 2705 115 -473 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Fragile.1,scores={MobID=440},distance=..128] run function world_manager:area/01-50.training_area/summon/fragile_dummy
        execute rotated 90 0 positioned 2705 115 -473 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Fragile.1,scores={MobID=440},distance=..0.1] add Doll.Fragile.1

        execute rotated 90 0 positioned 2705 115 -475 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Fragile.2,scores={MobID=440},distance=..128] run function world_manager:area/01-50.training_area/summon/fragile_dummy
        execute rotated 90 0 positioned 2705 115 -475 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Fragile.2,scores={MobID=440},distance=..0.1] add Doll.Fragile.2

        execute rotated 90 0 positioned 2705 115 -477 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Fragile.3,scores={MobID=440},distance=..128] run function world_manager:area/01-50.training_area/summon/fragile_dummy
        execute rotated 90 0 positioned 2705 115 -477 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Fragile.3,scores={MobID=440},distance=..0.1] add Doll.Fragile.3

    # 物理耐性人形
        execute rotated 0 0 positioned 2695 105 -487 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Physical.1,scores={MobID=441},distance=..128] run function world_manager:area/01-50.training_area/summon/physical_dummy
        execute rotated 0 0 positioned 2695 105 -487 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Physical.1,scores={MobID=441},distance=..0.1] add Doll.Physical.1

    # 魔法耐性人形
        execute rotated 180 0 positioned 2698 105 -465 if loaded ~ ~ ~ unless entity @e[type=skeleton,tag=Doll.Magical.1,scores={MobID=442},distance=..128] run function world_manager:area/01-50.training_area/summon/magical_dummy
        execute rotated 180 0 positioned 2698 105 -465 if loaded ~ ~ ~ run tag @e[type=skeleton,tag=!Doll.Magical.1,scores={MobID=442},distance=..0.1] add Doll.Magical.1
