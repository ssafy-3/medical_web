import Koa from 'koa';
import Router from 'koa-router';
import bodyParser from 'koa-bodyparser';

//server parameter
const app = new Koa();
const router = new Router();
const port: number = 4000;

//server body
app.use(bodyParser());

router.get('(/*)', async (ctx) => {
    ctx.body = '<h1>Hello World! <br> minjun_alpa! <br> 안녕하세요@@@</h1>';
});

router.get('(/sub)', async (ctx) => {
    ctx.body = '<h1>Hello World! <br> minjun_alpa! <br> sub sub sub 안녕하세요</h1>';
});

//server router
app.use(router.routes());

app.listen(port, ()=> {
	console.log(`Koa server is listening on port ${port}`,`\t -> \thttp://localhost:${port}/`);
});

console.log('index gogo');
