import { Table, Column, Model, ForeignKey, DataType } from 'sequelize-typescript'; 
import { Usuario } from './Usuario'; 
import { Evento } from './Evento';    

@Table({ tableName: 'RelUsuarioEvento' })
export class RelUsuarioEvento extends Model {
  @ForeignKey(() => Usuario)
  @Column({ type: DataType.INTEGER, allowNull: false })
  declare IdUsuario: number;

  @ForeignKey(() => Evento)
  @Column({ type: DataType.INTEGER, allowNull: false })
  declare IdEvento: number;
}
