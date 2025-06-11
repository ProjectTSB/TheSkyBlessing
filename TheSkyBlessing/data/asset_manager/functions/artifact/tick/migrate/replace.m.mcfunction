#> asset_manager:artifact/tick/migrate/replace.m
# @input args
#   Slot: int
# @within function asset_manager:artifact/tick/migrate/migration_artifact

$item replace entity @s container.$(Slot) from block 10000 0 10000 container.0
