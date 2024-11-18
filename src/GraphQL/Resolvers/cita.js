import { db1, db2 } from '../../postgresdb'
import { ApolloError } from 'apollo-server-core'

export default {
  Query: {
    getListPiso: async (_, { fechaHora }, { auth }) => {
      if (!auth) throw new ApolloError('Sesión no válida')
      const feIni = fechaHora + ' 00:00:00.000'
      const feFi = fechaHora + ' 24:00:00.000'
      try {
        const countPisos = await db1.manyOrNone(
          `SELECT piso, departamento, count(*)
                                  FROM public.visitantes
                                    where fecha_registro between $1 and $2 
                                      group by piso, departamento order by piso asc;`,
          [feIni, feFi]
        )

        return countPisos
      } catch (e) {
        throw new ApolloError(e.message)
      }
    },
    getListVisitantes: async (_, { fechaHora }, { auth }) => {
      if (!auth) throw new ApolloError('Sesión no válida')
      const feInit = fechaHora + ' 00:00:00.000'
      const feFin = fechaHora + ' 24:00:00.000'

      try {
        const listVisitantes = await db1.manyOrNone(
          `SELECT id, cedula, nombres, apellidos, piso, departamento, quien, 
                telefono, carnet, motivo, fecha_registro, fecha_salida
                                  FROM public.visitantes
                                    where fecha_registro between $1 and $2;`,
          [feInit, feFin]
        )

        return listVisitantes
      } catch (e) {
        throw new ApolloError(e.message)
      }
    }
  },
  Mutation: {
    getImagenesVisitante: async (_, { id }, { auth }) => {
      if (!auth) throw new ApolloError('Sesión no válida')

      try {
        const imagenesVisitante = await db1.oneOrNone(
          `SELECT foto1, foto2 FROM public.visitantes where id = $1;`,
          [id]
        )

        return imagenesVisitante
      } catch (e) {
        throw new ApolloError(e.message)
      }
    }
  }
}
