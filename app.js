import express from 'express';
import path from 'node:path'
import cors from 'cors'
import morgan from 'morgan';
import helmet from 'helmet'
import { fileURLToPath } from 'node:url';
import { taskRouter } from './src/routes/task.routes.js';
import { startDb } from './src/config/database.js';
import 'dotenv/config'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const app = express();

//middlewares
app.use(express.json())
app.use(cors())
app.use(morgan('dev'))
app.use(helmet({
    contentSecurityPolicy: false
}))


app.use(express.static(path.join(__dirname, "src", "public")))

app.set('views', path.join(__dirname, "src", "views"))
app.set('view engine', 'ejs');

const port = process.env.PORT || 3000;

app.use('/', taskRouter)

app.listen(port,() => {
    console.log(`server listening http://localhost:${port}`)
    startDb()
})



