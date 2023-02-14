#> asset:sacred_treasure/1021.call_brave_knight/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/1021.call_brave_knight/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto

# 既に召喚済みなら使えない。ファミリアと違って召喚するのは一匹だが、合わせておくと都合がいいし、Lintを通すのも楽
    execute at @e[type=armor_stand,scores={MobID=307},distance=..60] if score @s UserID = @e[type=armor_stand,scores={MobID=307},distance=..0.01,sort=nearest,limit=1] 8J.OwnerID run tag @s add SD.CannotUse
    execute if entity @s[tag=SD.CannotUse] run tag @s remove CanUsed
    execute if entity @s[tag=SD.CannotUse] run function asset:sacred_treasure/1021.call_brave_knight/trigger/cannot_use

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/1021.call_brave_knight/trigger/3.main