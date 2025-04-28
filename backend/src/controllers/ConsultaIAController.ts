import { Request, Response } from "express";

import { ConsultaIA } from "../models/ConsultaIA";

export class ConsultaIAControllers {
    // Obtener todas las constancias ordenadas por `ConstanciaFecha`
    static getConsultaIAAll = async (req: Request, res: Response) => {
        try {
            console.log('Desde GET /api/ConsultaIA');
            
            const consulta = await ConsultaIA.findAll({
                order: [
                    ['Fecha', 'ASC'], // Ordenar por la fecha de la constancia
                ],
            });

            res.json(consulta); // Solo enviamos la respuesta sin usar `return`
        } catch (error) {
            console.error(error);
            res.status(500).json({ error: 'Hubo un error al obtener la consulta' });
        }
    };

    // Obtener constancia por ID
    static getIdConsultaIA = async (req: Request, res: Response) => {
        try {
            const { IdConsultaIA } = req.params; // Desestructuramos el ConstanciaId de los parámetros
            const consulta = await ConsultaIA.findByPk(IdConsultaIA);
            if (!consulta) {
                res.status(404).json({ error: 'Consulta no encontrada' });
                return; // Terminamos la ejecución después de enviar la respuesta
            }
            res.json(consulta); // Solo enviamos la respuesta sin usar `return`
        } catch (error) {
            console.error(error);
            res.status(500).json({ error: 'Hubo un error al obtener la consulta' });
        }
    };

  static crearConsultaIA = async (req: Request, res: Response) => {
            try {
                const consulta = new ConsultaIA(req.body);
                await consulta.save();
                res.status(201).json('consulta creada exitosamente');
            } catch (error) {
                console.error('Error al crear consulta:', error); 
                res.status(500).json({ error: 'hubo error' });
            }
        }


    // Crear nueva constancia
    static actualizarIdconsultaIa =async (req:Request , res:Response) =>{
                try{
                    const {IdConsultaIA} =req.params
                    const consulta =await ConsultaIA.findByPk(IdConsultaIA)
                    if(!consulta) {
                        const error = new Error('consulta  no encontrada')
                        res.status(404).json({error:error.message})
                        return;
                    }
                    await consulta.update(req.body)
                    res.json('consulta actualizada correctamente')
                } catch (error){
                    res.status(500).json({error: 'hubo un error'})
                }
                    
            }
            
    
            static eliminarIdconsultaIa =async (req:Request , res:Response) =>{
                try{
                    const {IdConsultaIA} =req.params
                    const consulta=await ConsultaIA.findByPk(IdConsultaIA)
                    if(!consulta) {
                        const error = new Error('consulta no encontrada')
                        res.status(404).json({error:error.message})
                        return;
                    }
                    //Escribir los cambios del body
                    await consulta.destroy(req.body)
                    res.json('consulta eliminada correctamente')
                } catch (error){
                    //console.log(error)
                    res.status(500).json({error: 'hubo un error'})
                }
                    
            }
            
    
    
    
        }
    
    
    
    
    
    