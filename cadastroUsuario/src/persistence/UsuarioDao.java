package persistence;

import model.Usuario;

public class UsuarioDao extends Dao {
	
	public void cadastrar(Usuario u)throws Exception{
		open();
		stmt= con.prepareStatement("insert into usuario values(null, ?, ?, ?, ?)");
		stmt.setString(1, u.getNome());
		stmt.setString(2, u.getSobrenome());
		stmt.setString(3, u.getEmail());
		stmt.setInt(4, u.getIdade());
		
		stmt.execute();
		
		close();
	}

}
