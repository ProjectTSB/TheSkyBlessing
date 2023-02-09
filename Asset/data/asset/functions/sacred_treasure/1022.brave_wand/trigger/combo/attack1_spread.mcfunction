#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread
#
# ヒール波動1
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/3.main

#> SpreadLib
# @private
#declare tag SpreadMarker

# サウンド
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 0.8 1.5
    execute anchored eyes positioned ^ ^ ^1 run playsound entity.allay.hurt player @a ~ ~ ~ 0.5 2

# 前方に拡散
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1
    # 拡散
        execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # マーカーの位置で実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_effect
    # リセット
        kill @e[type=marker,tag=SpreadMarker]