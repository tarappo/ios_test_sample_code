# Xcode 15.0
 - [Release Note](https://developer.apple.com/documentation/xcode-release-notes/xcode-15-release-notes)

## Testing
### xcodebuildに-enumerate-testsオプションを追加
次のように `-enumerate-tests` オプションを付けると実行するテストケースの一覧が表示されます。

```
xcodebuild test -enumerate-tests -project MyProject.xcodeproj -scheme MyScheme -destination 'platform=iOS Simulator,name=iPhone 14 Pro'
```

### テストの実行結果の改善
テストコード自体の話ではありませんが、Xcodeでのテストの実行結果の表示が変わっています。
詳細は参考資料を確認してください。


## 参考資料
 -  https://note.com/tarappo/n/nf8f00b92159c?magazine_key=m8710a4f80fae
