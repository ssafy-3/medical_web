### 1. package.json package-lock.json 차이

https://hyunjun19.github.io/2018/03/23/package-lock-why-need/

package.json 파일의 의존성 선언에는 version range가 사용됩니다. version range란 특정 버전이 아니라 버전의 범위를 의미합니다. <br>
가장 흔한 예로 npm install express를 실행하게 되면 package.json 파일에는 “^4.16.3”(Caret Ranges)로 버전 범위가 추가됩니다. <br>
저 package.json 파일로 npm install을 실행하면 현재는 4.16.3 버전이 설치되지만 express의 새로운 minor, patch가 publish 되면  <br>
동일한 package.json 파일로 npm install을 실행해도 4.17.3, 이나 4.16.4 같은 업데이트된 버전이 설치됩니다. <br>
물론 대부분의 경우에는 문제가 없지만 간혹 업데이트된 버전이 오류를 발생시키는 경우가 있습니다. <br>
package-lock.json 파일은 의존성 트리에 대한 정보를 가지고 있으며 package-lock.json 파일이 작성된 시점의 의존성 트리가 다시 생성될 수 있도록 보장합니다. <br>

<br><br>

### 2. callback방식, promise방식, async await방식

https://velog.io/@naseriansuzie/imcourseTIL20

<br><br>

### 3. node.js 이벤트루프



<br><br>
