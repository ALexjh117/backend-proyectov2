import { Router } from "express";
import { UsuarioController } from "../controllers/UsuarioController";
import { handleInputErrors } from "../middleware/validation";
import { validateUsuarioBody, validateUsuarioNoExiste, validateUsuarioId } from "../middleware/Usuario";
import { body } from "express-validator";

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
    body('token')
    .notEmpty()
    .isLength({min:6, max:6})

    .withMessage('Token no valido'),
    UsuarioController.confirmAccount)
export default UsuarioRouter