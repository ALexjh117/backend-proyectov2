import { NextFunction, Request, Response } from "express";
import { body, param, validationResult } from "express-validator";
import { HistorialSolicitud } from "../models/HistorialSolicitud";

export const validateHistorialSolicitud = async (req: Request, res: Response, next: NextFunction): Promise<void> => {
  await body('IdSolicitud')
    .notEmpty().withMessage('El ID de la solicitud es obligatorio')
    .isInt({ min: 1 }).withMessage('El ID de la solicitud debe ser un número entero positivo')
    .run(req);

  await body('EstadoNuevo')
    .notEmpty().withMessage('El estado nuevo no puede estar vacío')
    .isIn(['Pendiente', 'En Proceso', 'Atendido', 'Finalizado']).withMessage('Estado no válido')
    .run(req);

  await body('Comentario')
    .optional()
    .isLength({ max: 1000 }).withMessage('El comentario no puede tener más de 1000 caracteres')
    .run(req);

  await body('RolUsuario')
    .notEmpty().withMessage('El rol del usuario es obligatorio')
    .isInt({ min: 1 }).withMessage('El rol del usuario debe ser un número entero positivo')
    .run(req);

  await body('IdSolicitud').custom(async (value, { req }) => {
    const existeHistorial = await HistorialSolicitud.findOne({
      where: { IdSolicitud: value, EstadoNuevo: req.body.EstadoNuevo }
    });
    if (existeHistorial) {
      throw new Error('Ya existe un historial con ese estado para esta solicitud');
    }
    return true;
  }).run(req);

  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    res.status(400).json({ errors: errors.array() });
    return; // Importante retornar aquí para no seguir a next()
  }

  next();
};

export const validateIdHistorial = async (req: Request, res: Response, next: NextFunction): Promise<void> => {
  await param('IdHistorial')
    .notEmpty().withMessage('El ID del historial es obligatorio')
    .isInt({ min: 1 }).withMessage('El ID del historial debe ser un número entero positivo')
    .run(req);

  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    res.status(400).json({ errors: errors.array() });
    return; // Retorno aquí para no llamar next() si hay errores
  }

  next();
};
