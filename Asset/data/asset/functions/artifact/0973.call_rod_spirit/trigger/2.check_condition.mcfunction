#> asset:artifact/0973.call_rod_spirit/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto

# 既に召喚済みなら使えない。ファミリアと違って召喚するのは一匹だが、合わせておくと都合がいいし、Lintを通すのも楽
    execute at @e[type=armor_stand,tag=R1.Spirit] if score @s UserID = @e[type=armor_stand,tag=R1.Spirit,distance=..0.01,sort=nearest,limit=1] R1.UserID run tag @s add R1.CannotUse
    execute if entity @s[tag=R1.CannotUse] run tag @s remove CanUsed
    execute if entity @s[tag=R1.CannotUse] run function asset:artifact/0973.call_rod_spirit/trigger/3.cannot_use

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0973.call_rod_spirit/trigger/3.main