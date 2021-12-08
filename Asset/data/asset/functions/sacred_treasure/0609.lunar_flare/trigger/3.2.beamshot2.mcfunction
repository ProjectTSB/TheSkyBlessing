#> asset:sacred_treasure/0609.lunar_flare/trigger/3.2.beamshot2
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0609.lunar_flare/trigger/3.main
#    asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot

#> SpreadLib
# @private
#declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 5.0
    data modify storage lib: Argument.Spread set value 2.5
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker] run function lib:forward_spreader/circle

# ビームを飛ばす
    # 演出
        playsound entity.blaze.shoot master @a ~ ~ ~ 1 2
    # 判定用アマスタ召喚
        summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["GX.Laser","GX.First","Projectile"]}
    # ユーザーIDを適応
        scoreboard players operation @e[type=armor_stand,tag=GX.First] GX.UserID = @s GX.UserID
    # 分散させる。着弾点がまとまる
        execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run tp @e[type=armor_stand,tag=GX.First] ^ ^ ^-17 ~ ~
    # タグを消す
        tag @e[type=armor_stand,tag=GX.First] remove GX.First

# 前方拡散を消す
    kill @e[type=marker,tag=SpreadMarker]

# Scheduleで実行。重複しないようにしてる。
    schedule function asset:sacred_treasure/0609.lunar_flare/trigger/3.5.beamloop 1t replace