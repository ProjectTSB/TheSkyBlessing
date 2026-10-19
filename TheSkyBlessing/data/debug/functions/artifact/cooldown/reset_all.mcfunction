#> debug:artifact/cooldown/reset_all
#
# 実行者のすべての神器クールダウンを解消します
#
# @private
# @user


# LCD
# アイテムに付いた最終発動時刻を削除
    data modify storage api: Argument.Inventory set from entity @s Inventory
    data remove storage api: Argument.Inventory[].tag.TSB.LatestUseTick
    function api:inventory/set
# プレイヤーのLCD状況データもリセット（何かしらの行動時にしか自動更新してくれないので）
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[].Value set value -15

# TCD
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown set value []

#GCD
    scoreboard players set $ArtifactSpecialCooldown Global 0
