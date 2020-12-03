# Oh! My Dat!
Minecraft Private Storage Datapack
個別ストレージデータパック

# 使い方/How To Use

## 基本 / Basics

```
個別ストレージを使いたいエンティティで次を実行するだけ！ / Run the following command as the entity you want to use private storage for.
function oh_my_dat:please

アクセス / Access
data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataName

書き換え / Modify
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataName set value DataValue

消去 / Delete
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataName
```

## 既知のストレージにIDでアクセスしたい場合 / If you want to use known storage by storage ID

```
scoreboard players set $ OhMyDatID <ID>
function oh_its_dat:please
```

## 明示的にストレージを解放する / Explicitly free storage

他のデータパックのデータが入っている可能性があるため、データパックから呼び出さないでください。
Do not call from a datapack because it may contain data of another datapack.
```
ストレージを解放したいエンティティで次を実行 / Run the following command as the entity you want to free private storage for.
function oh_my_dat:release
```

# 連絡はこちら/Contact

https://twitter.com/AiAkaishi

# ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
