#> player_manager:fall_damage/deal_damage/
#
#
#
# @within function player_manager:fall_damage/deal_for_vulnerable

# 各種値の取得
    function player_manager:fall_damage/deal_damage/get_vars
# 落下ブロックに依る値調整
    function player_manager:fall_damage/deal_damage/on_block_switch
# 落下ダメージを計算する
    function player_manager:fall_damage/deal_damage/calc
# ダメージを与える
    execute if score $Damage Temporary matches 1.. run function player_manager:fall_damage/deal_damage/deal
# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $FallDistance Temporary
    scoreboard players reset $JumpBoost Temporary
    scoreboard players reset $DamageMultiplier Temporary
    scoreboard players reset $Damage Temporary