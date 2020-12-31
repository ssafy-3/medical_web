
1. ### error TS2705: An async function or method in ES5/ES3 requires the 'Promise' constructor.
tsconfig.json 파일에  "lib": ["es2015"],  를 설정해 주자.
target이 es5로 잡혀있을텐데 얘도 지정해 줘야한다.

<br><br><br>

2. ### error TS7006: Parameter 'any' implicitly has an 'any' type
