# Xcode11.4
 - [Release Note](https://developer.apple.com/documentation/xcode_release_notes/xcode_11_4_release_notes)

## Testing
### Execution Time Allowance
setupでexecutionTimeAllowanceを58で指定している場合、次のような1分以上かかるテストはすべて失敗します。

```swift
func testExecutionTimeExample() throws {
	sleep(61)
}
```

<img src="./img/xctskipif.png" width=500>

※ CIが常にredになるためサンプルコードでは成功する時間を設定しています。


### XCTSkipIf
特定の条件を満たした場合テストをスキップできます。

```swift
func testSkipExample() throws {
	try XCTSkipIf(true, "未実装")
}
```

Skipした場合は成功/失敗ではなく次のようになります。

<img src="./img/execution_time_allowance.png" width=500>

Test Reportも同様にSkipしたという情報になります。


## 参考資料
   - [Xode 11.4の「Testing」から「テストの実行時間の制限」と「テストのスキップ」の紹介](https://note.com/tarappo/n/n4af7c51334c5)
   - [Xcode 11.4  Betaのリリースノートの「Testing」の項目をいくつかピックアップして紹介](https://note.com/tarappo/n/na357aeefabe9)
