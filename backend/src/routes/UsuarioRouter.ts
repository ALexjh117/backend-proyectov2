import { Router } from "express";
import { UsuarioController } from "../controllers/UsuarioController";
import { handleInputErrors } from "../middleware/validation";
import { validateUsuarioBody, validateUsuarioNoExiste, validateUsuarioId } from "../middleware/Usuario";
import { body, param } from "express-validator";
import router from "./ActividadRouter";
import { limiter } from "../config/limiter";

const UsuarioRouter = Router()
UsuarioRouter.use(limiter)

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
    handleInputErrors,
    UsuarioController.confirmAccount)


UsuarioRouter.post('/login',
    body('Correo')
        .isEmail().withMessage('Correo no valido'),
    body('Contrasena')
        .notEmpty().withMessage('La Contraseña es obligatoria'),
handleInputErrors,
UsuarioController.login)


UsuarioRouter.post('/forgot-password',

    body('Correo')
        .isEmail().withMessage('Correo no valido'),
        handleInputErrors,
        UsuarioController.forgotContrasena
)


UsuarioRouter.post('/validate-token',
    body('token')
        .notEmpty()
        .isLength({min:6, max:6})
        .withMessage('Token no valido'),
    handleInputErrors,
    UsuarioController.validateToken
)

UsuarioRouter.post('/reset-password/:token',
     param('token')
        .notEmpty()
        .isLength({min:6, max:6})
        .withMessage('Token no valido'),
        body('Contrasena')
        .isLength({min:8}).withMessage('La contraseña es muy corta,minimo de 8 caracteres'),
        handleInputErrors,
        UsuarioController.resetpasswordWithToken

)
export default UsuarioRouter