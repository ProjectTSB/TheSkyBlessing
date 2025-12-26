#> core:migration/v1.0.5/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.5"
    data modify storage global ResourcePackVersion set value "v1.0.d"


#> Common Migration
    function core:migration/common/

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/2d3aa5377a44f3f7adadd0422af13fd930375c2d
    scoreboard objectives add VoidDamageCooldown dummy {"text":"奈落ダメージのクールダウン"}

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/61a62ec964c035c4b4797efbc142c3590e736a82
# @private
#declare function player_manager:play_equip_sound/define
    function player_manager:play_equip_sound/define
