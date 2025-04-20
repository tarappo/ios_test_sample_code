# Xcode 13.3
 - [Release Note](https://developer.apple.com/documentation/Xcode-Release-Notes/xcode-13_3-release-notes)

## Testing
### テストの実行回数の表示
Xcode上での表示となるためサンプルとなるテストコードは特に無し。

### xctestproductバンドルフォーマットのサポート
次のようなコマンドで生成されます。

```
xcodebuild build-for-testing -project Xcode13.3.xcodeproj/ -scheme Xcode13.3 -testProductsPath ./Sample.xctestproducts
```

あくまでバンドルフォーマットのサポートであるため、サンプルコードは特に無し。


## 参考資料
 - https://note.com/tarappo/n/na3c50cbc2fab
