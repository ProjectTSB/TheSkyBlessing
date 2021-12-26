#> world_manager:gimmick/ending_portal/main
#
#
#
# @within function world_manager:gimmick/ending_portal/tick

# 見た目 その1
    particle electric_spark ^0 ^0.1 ^-1 0 0 0 0 1
    particle electric_spark ^0.30902 ^0.1 ^-0.95106 0 0 0 0 1
    particle electric_spark ^0.58779 ^0.1 ^-0.80902 0 0 0 0 1
    particle electric_spark ^0.80902 ^0.1 ^-0.58779 0 0 0 0 1
    particle electric_spark ^0.95106 ^0.1 ^-0.30902 0 0 0 0 1
    particle electric_spark ^1 ^0.1 ^0 0 0 0 0 1
    particle electric_spark ^0.95106 ^0.1 ^0.30902 0 0 0 0 1
    particle electric_spark ^0.80902 ^0.1 ^0.58779 0 0 0 0 1
    particle electric_spark ^0.58779 ^0.1 ^0.80902 0 0 0 0 1
    particle electric_spark ^0.30902 ^0.1 ^0.95106 0 0 0 0 1
    particle electric_spark ^0 ^0.1 ^1 0 0 0 0 1
    particle electric_spark ^-0.30902 ^0.1 ^0.95106 0 0 0 0 1
    particle electric_spark ^-0.58779 ^0.1 ^0.80902 0 0 0 0 1
    particle electric_spark ^-0.80902 ^0.1 ^0.58779 0 0 0 0 1
    particle electric_spark ^-0.95106 ^0.1 ^0.30902 0 0 0 0 1
    particle electric_spark ^-1 ^ ^0 0 0 0 0 1
    particle electric_spark ^-0.95106 ^0.1 ^-0.30902 0 0 0 0 1
    particle electric_spark ^-0.80902 ^0.1 ^-0.58779 0 0 0 0 1
    particle electric_spark ^-0.58779 ^0.1 ^-0.80902 0 0 0 0 1
    particle electric_spark ^-0.30902 ^0.1 ^-0.95106 0 0 0 0 1

# 見た目 その2
    particle dust 0.7 0 1 0.7 ~ ~0.5 ~ 0.5 1 0.5 0 10
    particle dragon_breath ~ ~0.5 ~ 0.5 1 0.5 0 2

# 効果音
    playsound block.beacon.ambient block @a ~ ~ ~ 0.5 1

# 中に入った人を飛ばす
    execute if entity @a[distance=..2] as @a[distance=..2] run function world_manager:gimmick/ending_portal/return_to_overworld