import { Router } from "express";
import { ctrlViewIndex, ctrlCreateTask, ctrlDeleteTask, ctrlGetTask, ctrlUpdateTask, ctrlView} from "../controllers/task.controllers.js";
import { createTaskSchema, editTaskSchema } from "../models/schemas/task.schemas.js";
import { validator } from "../middlewares/validator.js"
import { TaskModel } from "../models/Tasks.js";

const taskRouter = Router();

taskRouter.get('/',ctrlViewIndex)

//RUTA PARA LA VISTA
taskRouter.get('/tasks', ctrlView)

// endpoint para traer todas las tareas
taskRouter.get('/api/tasks', ctrlGetTask)

// endpoint para crear una tarea
taskRouter.post('/api/tasks', createTaskSchema, validator, ctrlCreateTask)

// endpoint para modificar una tarea
taskRouter.put('/api/tasks/:id', editTaskSchema, validator, ctrlUpdateTask)

// endpoint para eliminar una tarea
taskRouter.delete('/api/tasks/:id', ctrlDeleteTask)

export { taskRouter }