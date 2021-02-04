#> asset_manager:sacred_treasure/triggers/sneak
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/core/data/pre_event_put/new
# 神器側に受け渡し
    execute if score @s Sneak matches 1 run function #asset:sacred_treasure/sneak/
    execute if score @s Sneak matches 1.. run function #asset:sacred_treasure/sneak/keep/

    execute if score @s Sneak matches 21 run function #asset:sacred_treasure/sneak/1s
    execute if score @s Sneak matches 21.. run function #asset:sacred_treasure/sneak/keep/1s

    execute if score @s Sneak matches 41 run function #asset:sacred_treasure/sneak/2s
    execute if score @s Sneak matches 41.. run function #asset:sacred_treasure/sneak/keep/2s

    execute if score @s Sneak matches 61 run function #asset:sacred_treasure/sneak/3s
    execute if score @s Sneak matches 61.. run function #asset:sacred_treasure/sneak/keep/3s

    execute if score @s Sneak matches 81 run function #asset:sacred_treasure/sneak/4s
    execute if score @s Sneak matches 81.. run function #asset:sacred_treasure/sneak/keep/4s

    execute if score @s Sneak matches 101 run function #asset:sacred_treasure/sneak/5s
    execute if score @s Sneak matches 101.. run function #asset:sacred_treasure/sneak/keep/5s

    execute if score @s Sneak matches 201 run function #asset:sacred_treasure/sneak/10s
    execute if score @s Sneak matches 201.. run function #asset:sacred_treasure/sneak/keep/10s