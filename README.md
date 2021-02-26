# medical_web

의료 관리 침구실 개인 풀스텍 프로젝트

<br><br>

# 기술 스택

환경
- VScode

패키지매니저
- yarn v1.22.0

서버
- koa v2.13.0
- node.js v10.0.0

클라이언트
- TypeScript

데이터베이스
- mySQL (heidiSQL)


<br><br>

# 환경 설정

##### 2020/12/31/목 기준

1. 프로젝트 생성하기
2. 모듈 설치하기
3. 타입스크립트 설정파일 생성하기
4. 서버 코드 작성하기
5. script 명령 추가하기
6. 서버 실행하기

koa 참고 링크
https://backend-intro.vlpt.us/1/

TypeScript 참고 링크
https://coyoside.tistory.com/2



서버 실행 명령어는 <br> 
yarn start:dev


koa 버전 2 라면 sql도 버전 맞게 깔아줘야함 <br> 
npm install koa2-mysql --save (이거말고) <br>
npm install mysql2 --save (이걸로해)

<br><br>

자동으로 서버를 갱신 시키고 싶다면 <br>
$ npm install -g nodemon <br>
로 추가하고 <br>
package.json 의 <br>
  "scripts": {
    "start": "node src",
    "start:dev": "nodemon --watch src/ src/index.ts"
  }
  
  <br> 을 추가해라
<br>
참고로 yarn start 하면 그냥 서버 키는거고 yarn start:dev 하면 개발 모드로 서버 키는거다 뭐, 막 구분할 필요없이 작업해도 되긴한데, 그래도.






### sts 다양한 버전 다운로드 사이트
https://www.npackd.org/p/org.springsource.STS64/3.9.4
