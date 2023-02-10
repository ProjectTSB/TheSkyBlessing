#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_spread
#
# 波動フィニッシュ: 拡散して飛ばす部分
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_search

#> SpreadLib
# @private
#declare tag SpreadMarker

# 射程リセット
    scoreboard players reset @s SE.Range

# サウンド
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 0.8 2
    execute anchored eyes positioned ^ ^ ^1 run playsound entity.allay.hurt player @a ~ ~ ~ 0.5 2

# 前方に拡散
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 3
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # マーカーの位置で実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack3_effect
    # リセット
        kill @e[type=marker,tag=SpreadMarker]