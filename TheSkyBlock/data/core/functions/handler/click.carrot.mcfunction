#> core:handler/click.carrot
#
# 人参棒をクリックした際に実行される
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/click.carrot

# Reset
    scoreboard players reset @s ClickCarrotEvent