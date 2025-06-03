import { Request, Response } from "express";
import { HistorialSolicitud } from "../models/HistorialSolicitud";

export class HistorialSolicitudController {
  static getAllHistorial = async (req: Request, res: Response): Promise<void> => {
    try {
      const historial = await HistorialSolicitud.findAll();
      res.json(historial);
    } catch (error) {
      res.status(500).json({ error: 'Ocurrió un error al obtener el historial' });
    }
  };

  static getHistorialById = async (req: Request, res: Response): Promise<void> => {
    try {
      const { IdHistorial } = req.params;
      const historial = await HistorialSolicitud.findByPk(IdHistorial);
      if (!historial) {
        res.status(404).json({ error: 'Historial no encontrado' });
        return;
      }
      res.json(historial);
    } catch (error) {
      res.status(500).json({ error: 'Ocurrió un error al buscar el historial' });
    }
  };

  static crearHistorial = async (req: Request, res: Response): Promise<void> => {
    try {
      const historial = new HistorialSolicitud(req.body);
      await historial.save();
      res.status(201).json('Historial de solicitud creado correctamente');
    } catch (error) {
      res.status(500).json({ error: 'Error al crear el historial de solicitud' });
    }
  };

  static eliminarHistorial = async (req: Request, res: Response): Promise<void> => {
    try {
      const { IdHistorial } = req.params;
      const historial = await HistorialSolicitud.findByPk(IdHistorial);
      if (!historial) {
        res.status(404).json({ error: 'Historial no encontrado' });
        return;
      }
      await historial.destroy();
      res.json('Historial eliminado correctamente');
    } catch (error) {
      res.status(500).json({ error: 'Error al eliminar el historial' });
    }
  };
}
