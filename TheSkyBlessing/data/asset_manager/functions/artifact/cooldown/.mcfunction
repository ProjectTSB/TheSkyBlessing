#> asset_manager:artifact/cooldown/
#
#
#
# @within function asset_manager:artifact/tick/player

#! LocalCoolDown
#  0. offhand
#  1. feet
#  2. legs
#  3. chest
#  4. head
#  5. hotbar 0
#  6. hotbar 1
#  7. hotbar 2
#  8. hotbar 3
#  9. hotbar 4
# 10. hotbar 5
# 11. hotbar 6
# 12. hotbar 7
# 13. hotbar 8

# EntityStorage呼び出し
    function oh_my_dat:please

# ローカルクールダウンを減らす () -> LCDs(normal)
    function asset_manager:artifact/cooldown/decrement/local/

# ミニバーを作る
    function asset_manager:artifact/cooldown/mini_bar/
# メインバーを作る
    function asset_manager:artifact/cooldown/main_bar/

# リセット
    scoreboard players reset $Value Temporary
    scoreboard players reset $Max Temporary
    scoreboard players reset $NormalizedValue Temporary
    data remove storage asset:artifact LCDs
