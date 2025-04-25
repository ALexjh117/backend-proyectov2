import { Table, Column, Model, DataType, HasMany } from 'sequelize-typescript';
import { RolUsuario } from './RolUsuario';
import { AlquilerElementos } from './AlquilerElementos';
import { Asistencia } from './Asistencia';
import { Constancia } from './Constancia';
import { ConsultaIA } from './ConsultaIA';
import { RelUsuarioEvento } from './RelUsuarioEvento';
import { RelUsuarioFeedback } from './RelUsuarioFeedback';

@Table({ tableName: 'Usuario' })
export class Usuario extends Model {
  @Column({ primaryKey: true, autoIncrement: true })
  declare IdUsuario: number;

  @Column({ type: DataType.STRING(50), allowNull: false }) // <--- QUITADO unique: true
  declare IdentificacionUsuario: string;

  @Column({ type: DataType.STRING(100), allowNull: false })
  declare Nombre: string;

  @Column({ type: DataType.STRING(100), allowNull: false })
  declare Apellido: string;

  @Column({ type: DataType.STRING(255), allowNull: false }) // <--- QUITADO unique: true
  declare Correo: string;

  @Column({ type: DataType.STRING(20), allowNull: true })
  declare Telefono: string;

  @Column({ type: DataType.STRING(255), allowNull: false })
  declare Contrasena: string;

  @Column({ type: DataType.DATEONLY, allowNull: false })
  declare FechaRegistro: Date;

  @HasMany(() => RolUsuario)
  declare rolUsuarios: RolUsuario[];

  @HasMany(() => AlquilerElementos)
  declare alquilerElementos: AlquilerElementos[];

  @HasMany(() => Asistencia)
  declare asistencias: Asistencia[];

  @HasMany(() => Constancia)
  declare constancias: Constancia[];

  @HasMany(() => ConsultaIA)
  declare consultasIA: ConsultaIA[];

  @HasMany(() => RelUsuarioEvento)
  declare relUsuarioEventos: RelUsuarioEvento[];

  @HasMany(() => RelUsuarioFeedback)
  declare relUsuarioFeedbacks: RelUsuarioFeedback[];
}
