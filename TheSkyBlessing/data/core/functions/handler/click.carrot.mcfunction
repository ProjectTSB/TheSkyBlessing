#> core:handler/click.carrot
#
# 人参棒をクリックした際に実行される
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.ClickCarrot
# Reset
    scoreboard players reset @s ClickCarrotEvent