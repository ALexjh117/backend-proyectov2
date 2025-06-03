import { Router } from "express";
import { HistorialSolicitudController } from "../controllers/HistorialSolicitudController";
import { validateHistorialSolicitud, validateIdHistorial } from "../middleware/HistorialSolicitud";
import { handleInputErrors } from "../middleware/validation";

const router = Router();

router.get("/", HistorialSolicitudController.getAllHistorial);

router.get(
  "/:IdHistorial",
  validateIdHistorial,
  handleInputErrors,
  HistorialSolicitudController.getHistorialById 
);

router.post(
  "/",
  validateHistorialSolicitud,
  handleInputErrors,
  HistorialSolicitudController.crearHistorial
);

router.delete(
  "/:IdHistorial",
  validateIdHistorial,
  handleInputErrors,
  HistorialSolicitudController.eliminarHistorial 
);

export default router;
