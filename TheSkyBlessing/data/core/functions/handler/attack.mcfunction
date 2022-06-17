#> core:handler/attack
#
# entityを殴った際に実行される
#
# @within function core:tick/player/

# ダメージ表示
    function player_manager:vanilla_attack/show_log
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Attack
# Reset
    scoreboard players reset @s AttackEvent