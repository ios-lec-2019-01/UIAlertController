
Button을 누르면 아래와 같이 Alert를 표시하고, AlertAction 버튼 3개(“카메라 열기”, “사진 폴더 열기”, “취소”)을 누르면 아래와 같이 각각 해당되는 클로져(Closure)가 수행되어 Label에 해당 메시지(문자열)를 출력한다. 

![그림 1](https://github.com/ios-lec-2019-01/UIAlertController/blob/master/03-01.png)
<pre><code>
// 일반 클로저
import UIKit

var numbers = [20, 10, 5, 32, 6]

let mappedNumbers:[Int] = numbers.map({(a:Int) -> Int in
   return a + 1
})

// 후행 클로저
var numbers2 = [20, 10, 5, 32, 6]

let mappedNumbers2:[Int] = numbers2.map {
   (a: Int) -> Int in
   return a + 1
}
</code></pre>
