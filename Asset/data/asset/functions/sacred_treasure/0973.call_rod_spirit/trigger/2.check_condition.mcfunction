#> asset:sacred_treasure/0973.call_rod_spirit/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/check_condition/auto

# 既に召喚済みなら使えない
    execute at @e[type=armor_stand,tag=R1.Main] if score @s UserID = @e[type=armor_stand,tag=R1.Main,sort=nearest,limit=1] R1.UserID at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/3.cannot_use

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0973.call_rod_spirit/trigger/3.main