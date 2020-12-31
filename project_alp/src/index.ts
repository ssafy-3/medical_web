import Koa from 'koa';
import Router from 'koa-router';
import bodyParser from 'koa-bodyparser';

const app = new Koa();
const router = new Router();
const port: number = 4000;

//라우터를 사용하기 전에 연결 해줘야 
app.use(bodyParser());

router.get('(/*)', async (ctx) => {
    ctx.body = '<h1>Hello World! <br><br>minjun_alpa!</h1>';
});

app.use(router.routes());

app.listen(port, ()=> {
	console.log(`Koa server is listening on port ${port}`,`http://localhost:${port}/`);
});
