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
    execute if entity @s[tag=Believe.Flora] if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Flora"]} run tag @s remove CheckFailed
    execute if entity @s[tag=Believe.Nyaptov] if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Nyaptov"]} run tag @s remove CheckFailed
    execute if entity @s[tag=Believe.Rumor] if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Rumor"]} run tag @s remove CheckFailed
    execute if entity @s[tag=Believe.Urban] if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Urban"]} run tag @s remove CheckFailed
    execute if entity @s[tag=Believe.Wi-ki] if data storage asset:artifact TargetItems[0].tag.TSB{CanUsedGod:["Wi-ki"]} run tag @s remove CheckFailed