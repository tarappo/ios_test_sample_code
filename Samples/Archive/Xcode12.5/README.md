# Xcode12.5
 - [Release Note](https://developer.apple.com/documentation/xcode-release-notes/xcode-12_5-release-notes)

## Testing

### XCTExpectFailure
テストが失敗した場合でも失敗扱いせずに、逆に成功した場合に失敗するAPI（XCTExpectFailure）が追加されています。


```swift
    func test_XCTExpectFailure() throws {
        XCTExpectFailure("失敗するはずのテスト") {
            let actualGyouza = GyouzaList().recommend()
            let expectedGyouza = "歓迎"

            XCTAssertEqual(expectedGyouza, actualGyouza)
        }
    }

```

上記のコードの場合、 `expectedGyouza` と `actualGyouza` が異なる場合は失敗扱いせずExpected Failureとして扱われます。
逆に一致した場合は失敗扱いとなります。


## 参考資料
 - https://note.com/tarappo/n/n94d517bc41f7?magazine_key=m8710a4f80fae
