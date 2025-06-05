import type { Request, Response } from "express";
import {  Usuario } from "../models/Usuario";
import { checkcontrasena, hashPassword } from "../utils/auth";
import { generateToken } from "../utils/token";
import { AuthEmail } from "../emails/AuthEmail";
import { where } from "sequelize";
import { ERROR } from "sqlite3";
import { generateJWT } from "../utils/jwt";


//gestion de ingreso del usuario 
export class UsuarioController {
    static getAll = async (req : Request, res : Response) => {
        try {
            console.log("Desde api/usuario/get metodo Get de usuario")
            const usuarios = await Usuario.findAll({
                order : [
                    ["createdAt", "ASC"]
                ],
            })
            res.json(usuarios)
        }
        catch (error) {
            res.status(500).json({error: "Hubo un error"})
        }
        
    }

    static getUsuarioId = async (req: Request, res : Response) => {
        try {
            //console.log("Desde api/usuario/:id metodo Get por Id de usuario")
            const { id } = req.params
            const usuario = await Usuario.findByPk(id)
            if (!usuario) {
                res.status(404).json({ error: "Usuario no encontrado." })
                return 
            }
            res.json(usuario)
        }
        catch (error) {
            res.status(500).json({error : "Hubo un error"})
        }
    }

   static crearUsuario = async (req: Request, res: Response) => {
    try {
         // Se extraen los campos necesarios del cuerpo de la solicitud
        const {
            IdentificacionUsuario,
            Nombre,
            Apellido,
            Correo,
            Telefono,
            Contrasena,
            FechaRegistro
        } = req.body;
      
                   // Validación: todos los campos son obligatorios

        if (
            !IdentificacionUsuario || !Nombre || !Apellido || !Correo ||
            !Telefono || !Contrasena || !FechaRegistro
            
        ) 
        {
            res.status(400).json({ error: "Todos los campos son obligatorios" });
            return;
        }
    // Se encripta la contraseña
        const hashedPassword = await hashPassword(Contrasena);
           // Se genera un token de verificación aleatorio
        const token = generateToken();
         // Se crea el usuario en la base de datos con estado `confirmed` en falso
        const usuario = await Usuario.create({
            IdentificacionUsuario,
            Nombre,
            Apellido,
            Correo,
            Telefono,
            Contrasena: hashedPassword,
            FechaRegistro,
            token,
            confirmed: false, 
        });
                // Se envía un correo al usuario con el token de confirmación
         await AuthEmail.sendConfirmationEmail({
            Nombre: usuario.Nombre,
            Correo: usuario.Correo,
            token: usuario.token ??''
        });
        console.log("Finalizo envio de correo")

        res.status(201).json({
            mensaje: "Usuario creado correctamente"
            
        });

    } catch (error) {
        console.error("Error en crearUsuario:", error);
        res.status(500).json({ error: "Error al crear usuario." });
    }
}
    static actualizarUsuarioId = async (req: Request, res : Response) =>{
        try {
            const {id} = req.params
            const usuario = await Usuario.findByPk(id)
            if (!usuario) {
                res.status(404).json({error: "Usuario no encontrado."})
            }

            await usuario?.update(req.body)
            res.json("Usuario actualizado exitosamente.")
        }
        catch (error) {
            res.status(500).json({error : "Error al actulizar usuario."})
        }
    }

    static borrarUsuarioId = async (req : Request, res : Response ) => {
        try {
            const {id} = req.params
            const usuario = await Usuario.findByPk(id)
            if (!usuario) {
                res.status(404).json({error: "Usuario no encontrado."})
                return
            }

            await usuario?.destroy()
            res.json("Usuario eliminado exitosamente.")
        }
        catch (error) {
            res.status(500).json({error : "Error al eliminar usuario."})
        }
    }



    static confirmAccount = async (req: Request, res:Response) =>{
        const {token} = req.body ; // Se recibe el token desde el cuerpo de la solicitud
        const usuario =await Usuario.findOne({where:{token}}) // Busca usuario por token
        if(!usuario){
            const error=new Error('Token no valido')
             res.status(401).json({error:error.message})// Token inválido
             return;
        }
          // Si el token es válido, se confirma la cuenta
        usuario.confirmed =true
        usuario.token="";// Se elimina el token para evitar reutilización
        await usuario.save()//guarda cambios
        res.json("Cuenta confirmada correctamente")

    }
    
    static login = async (req:Request, res:Response)=>{
        const {Correo, Contrasena} =req.body
        // Revisar que el usuario exista
        const usuario= await Usuario.findOne({where:{Correo}})
        if(!usuario){
            const error= new Error('Usuario no encontrado')
            res.status(409).json({error:error.message})
            return;
        }
        if(!usuario.confirmed){
              const error= new Error('La cuenta no ha sido confirmada')
            res.status(403).json({error:error.message})
            return;
        }
        const isContrasenaCorrecta= await checkcontrasena(Contrasena,usuario.Contrasena)
         if(!isContrasenaCorrecta){
              const error= new Error('Contraseña incorrecta')
            res.status(401).json({error:error.message})
            return;
        }
      const token  = generateJWT(usuario.IdUsuario)
        res.json(token)
        
    }


    static forgotContrasena = async(req:Request, res:Response)=>{
         const {Correo } =req.body
        // Revisar que el usuario exista
        const usuario= await Usuario.findOne({where:{Correo}})
        if(!usuario){
            const error= new Error('Usuario no encontrado')
            res.status(409).json({error:error.message})
            return;
        }
        usuario.token =generateToken()
        await usuario.save()
        await AuthEmail.sendContrasenaResetToken({
            Nombre:usuario.Nombre,
            Correo: usuario.Correo,
            token:usuario.token
        })
        res.json('Revisa tu correo para instrucciones')
    }

    static validateToken = async(req:Request, res:Response)=>{
        const {token} =req.body
       const tokenExists = await Usuario.findOne({where:{token}})
       if(!tokenExists){
        const error = new Error('Token no valido')
        res.status(404).json({error:error.message})
        return;
       }
       res.json('Token  valido...')

}
 static resetpasswordWithToken = async(req:Request, res:Response)=>{
        const{token} =req.params
        const{Contrasena}=req.body

     const usuario = await Usuario.findOne({where:{token}})
       if(!usuario){
        const error = new Error('Token no valido')
        res.status(404).json({error:error.message})
        return;
       }
     //Asignar la nueva contraseña
     usuario.Contrasena =await hashPassword(Contrasena)
     usuario.token =null
     await usuario.save()

        res.json('La contraseña se modifico correctamente')
}
}