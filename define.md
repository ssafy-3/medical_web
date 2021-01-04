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

https://nodejs.org/ko/docs/guides/event-loop-timers-and-nexttick/
<br>
이벤트 루프는 가능하다면 언제나 시스템 커널에 작업을 떠넘겨서 Node.js가 논 블로킹 I/O 작업을 수행하도록 해줍니다. <br>
(JavaScript가 싱글 스레드임에도 불구하고) <br>
대부분의 현대 커널은 멀티 스레드이므로 백그라운드에서 다수의 작업을 실행할 수 있습니다. <br>
이러한 작업 중 하나가 완료되면 커널이 Node.js에게 알려주어 적절한 콜백을 poll 큐에 추가할 수 있게 하여 결국 실행되게 합니다. <br>

<br>

![image](https://user-images.githubusercontent.com/17943248/103517455-7c83ed80-4eb5-11eb-8d55-6a76f7749bbb.png)

<br><br>


### 4. database connection pool

https://brownbears.tistory.com/289
<br>
사용자가 접속할 수 있는 connection을 pool에 모아놓고 관리한다는 개념

<br><br>
