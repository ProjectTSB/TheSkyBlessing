#> world_manager:area/01-50.training_area/
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 50

# 座標チェック
    # ノーマル人形
        execute rotated 90 0 positioned 2687 105 -476 unless entity @e[type=skeleton,scores={MobID=439},distance=..0.1] run function world_manager:area/01-50.training_area/summon/normal_dummy
        execute rotated -45 0 positioned 2679 105 -495 unless entity @e[type=skeleton,scores={MobID=439},distance=..0.1] run function world_manager:area/01-50.training_area/summon/normal_dummy
        execute rotated -135 0 positioned 2679 105 -462 unless entity @e[type=skeleton,scores={MobID=439},distance=..0.1] run function world_manager:area/01-50.training_area/summon/normal_dummy
    # 物理耐性人形
        execute rotated 0 0 positioned 2695 105 -487 unless entity @e[type=skeleton,scores={MobID=441},distance=..0.1] run function world_manager:area/01-50.training_area/summon/physical_dummy
    # 魔法耐性人形
        execute rotated 180 0 positioned 2698 105 -465 unless entity @e[type=skeleton,scores={MobID=441},distance=..0.1] run function world_manager:area/01-50.training_area/summon/magical_dummy
    # 壊れる人形
        execute rotated 90 0 positioned 2705 105 -473 unless entity @e[type=skeleton,scores={MobID=440},dy=10] run function world_manager:area/01-50.training_area/summon/fragile_dummy
        execute rotated 90 0 positioned 2705 105 -475 unless entity @e[type=skeleton,scores={MobID=440},dy=10] run function world_manager:area/01-50.training_area/summon/fragile_dummy
        execute rotated 90 0 positioned 2705 105 -477 unless entity @e[type=skeleton,scores={MobID=440},dy=10] run function world_manager:area/01-50.training_area/summon/fragile_dummy
