# Xcode 12.0
 - [Release Note](https://developer.apple.com/documentation/xcode-release-notes/xcode-12-release-notes)

## Testing
### アサーションメソッドの表示強化
テストの失敗時に情報が適切に表示されるようになりました。

今までは、アサーションメソッドをテストケース側ではなく別の箇所の独自メソッドに用意していた場合、テストの失敗時にそのアサーションメソッドがある独自メソッド側にアノテーションが表示されていました。

Xcode 12.0から実際に呼び出しているテストケース側にもグレイのアノテーションが表示されるようになりました。

### XCTIssue
参考：https://developer.apple.com/documentation/xctest/xctissue

失敗時の情報を`XCTIssue`を使ってより細かく表示できるようになっています。


## 参考資料
 - https://swet.dena.com/entry/2020/08/26/120000