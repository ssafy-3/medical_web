
1. ### error TS2705: An async function or method in ES5/ES3 requires the 'Promise' constructor.
tsconfig.json 파일에  "lib": ["es2015"],  를 설정해 주자.
target이 es5로 잡혀있을텐데 얘도 지정해 줘야한다.

<br><br>

2. ### error TS7006: Parameter 'any' implicitly has an 'any' type
tsconfig.json 파일에 "noImplicitAny": true,  로 비활성화 되어있을텐데 "noImplicitAny": false,  로 활성화 시켜주자.

<br><br>

3. ### TypeError: Unexpected MODIFIER at 1, expected END
이게 뭔 말이냐면 es5에서 nextscript로 버전 업그레이드 하면서 주소 지정 형식이 바꼈음 <br>
(난 지금 typescript 쓰지만 어쨌든 es5보다 상위니까 해당됨)
<br><br>
라우터에서 <br>
router.get('/*', async (ctx) => {
    ctx.body = 'Hello World!';
});
<br>

이렇게 하는게 있을거임

router.get('(/*)', async (ctx) => {
    ctx.body = 'Hello World!';
});
<br>

그냥 이렇게 주소 지정할때 소괄호 해주면 됨 아 진짜 

<br><br>

