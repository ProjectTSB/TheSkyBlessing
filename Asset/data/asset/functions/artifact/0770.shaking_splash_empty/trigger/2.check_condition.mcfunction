#> asset:artifact/0770.shaking_splash_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0770.shaking_splash_empty/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $RotationY
    #declare score_holder $Diff

# Yのrotationを取得
    execute store result score $RotationY Temporary run data get entity @s Rotation[1]

# 差分を取得
    execute store result score $Diff Temporary run scoreboard players operation @s LE.OldRotationY -= $RotationY Temporary

# 負の値だった場合正の値にする
    execute if score $Diff Temporary matches ..-1 run scoreboard players operation $Diff Temporary *= $-1 Const

# 差が19以下ならCanUsedを削除
    execute if score $Diff Temporary matches ..19 run tag @s remove CanUsed

# リセット等
    scoreboard players operation @s LE.OldRotationY = $RotationY Temporary
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RotationY Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0770.shaking_splash_empty/trigger/3.main