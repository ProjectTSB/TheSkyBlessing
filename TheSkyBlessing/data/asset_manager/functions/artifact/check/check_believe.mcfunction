#> asset_manager:artifact/check/check_believe
#
# 信仰をチェックします
#
# @within function asset_manager:artifact/check/

# 開発者は信仰を問わない
    execute if entity @s[tag=DevPrivilege] if data storage asset:artifact TargetItems[0].tag.TSB.CanUsedGod[0] run return 0
# タグの事前付与
    tag @s add CheckFailed
# チェックに成功してたらタグを外す
    execute if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Flora"]} if function api:entity/player/is_believe/flora run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Nyaptov"]} if function api:entity/player/is_believe/nyaptov run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Rumor"]} if function api:entity/player/is_believe/rumor run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Urban"]} if function api:entity/player/is_believe/urban run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Wi-ki"]} if function api:entity/player/is_believe/wi-ki run tag @s remove CheckFailed