#> core:migration/v1.0.3/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.3"
    data modify storage global ResourcePackVersion set value "v1.0.c"


#> From: https://github.com/ProjectTSB/TheSkyBlessing/commit/33c5c5aeed5886c4c1a580010a930746bacc3a82
data remove storage metric: FallDamageLogs

#> From: https://github.com/ProjectTSB/TheSkyBlessing/commit/ac5a23dc68b73213e95e8193759702cd7a2f1b7c
data modify storage global Config.ShowPlayTimeOnDispel set value false
