package matriculacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class MatriculacionService {
    Connection conn;
    public MatriculacionService(Connection conn){
        this.conn = conn;
    }
    
    public int DarMatricula(Long idG, Long idA) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        PreparedStatement prep = this.conn.prepareStatement("UPDATE alumnos  SET grupo_id = ? WHERE id=?");
        if(idG==0)
            prep.setNull(1, java.sql.Types.INTEGER);
        else
            prep.setLong(1, idG);
        prep.setLong(2, idA);
        // Ejecución de la consulta
        int affectedRows = prep.executeUpdate();
        statement.close();
        if (affectedRows == 0)
            throw new SQLException("Creating user failed, no rows affected.");
        else
            return affectedRows;   
    }

    public long sacar(long idAlumno) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        PreparedStatement prep = this.conn.prepareStatement("UPDATE alumnos  SET grupo_id = null WHERE id=?");
        prep.setLong(1, idAlumno);

        long affectedRows = prep.executeUpdate();
        // CERRAMOS EL statement
        statement.close();

        // SI ES 0 ES QUE NO HA AFECTADO A NINGUNA FILA
        if (affectedRows == 0)
            throw new SQLException("Creating user failed, no rows affected.");
        else
            return affectedRows;
    }
    
}
