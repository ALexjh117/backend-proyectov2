import { Router } from "express";
import { UsuarioController } from "../controllers/UsuarioController";
import { handleInputErrors } from "../middleware/validation";
import { validateUsuarioBody, validateUsuarioNoExiste, validateUsuarioId } from "../middleware/Usuario";
import { body } from "express-validator";
import router from "./ActividadRouter";
import { limiter } from "../config/limiter";

const UsuarioRouter = Router()


UsuarioRouter.get("/", handleInputErrors, UsuarioController.getAll)

UsuarioRouter.get("/:id", 
    validateUsuarioId,
    handleInputErrors,
    UsuarioController.getUsuarioId)

UsuarioRouter.post("/", 
    validateUsuarioNoExiste,
    validateUsuarioBody,
    handleInputErrors,
    UsuarioController.crearUsuario)


UsuarioRouter.put("/:id", 
    validateUsuarioId,
    validateUsuarioNoExiste, 
    validateUsuarioBody,
    UsuarioController.actualizarUsuarioId)

UsuarioRouter.delete("/:id", 
    validateUsuarioId,
    handleInputErrors,
    UsuarioController.borrarUsuarioId)


UsuarioRouter.post('/confirm-account',
    limiter,
    body('token')
    .notEmpty()
    .isLength({min:6, max:6})

    .withMessage('Token no valido'),
    UsuarioController.confirmAccount)


UsuarioRouter.post('/login',
    body('Correo')
        .isEmail().withMessage('Correo no valido'),
    body('Contrasena')
        .notEmpty().withMessage('La Contraseña es obligatoria'),
handleInputErrors,
UsuarioController.login)
export default UsuarioRouter