#> asset:artifact/0295.call_elemental_familiar/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0295.call_elemental_familiar/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto

# 既に召喚済みなら使えない。タグ付与じゃないと残ってるファミリアの数だけコマンドが実行されてしまう。つまりめっちゃうるさい。
    execute at @e[type=armor_stand,tag=87.Familiar] if score @s UserID = @e[type=armor_stand,tag=87.Familiar,distance=..0.01,sort=nearest,limit=1] 87.UserID run tag @s add 87.CannotUse
    execute if entity @s[tag=87.CannotUse] run tag @s remove CanUsed
    execute if entity @s[tag=87.CannotUse] run function asset:artifact/0295.call_elemental_familiar/trigger/3.cannot_use

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0295.call_elemental_familiar/trigger/3.main