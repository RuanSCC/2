package persistence;

import java.util.ArrayList;
import java.util.List;

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
	
	public List<Usuario> listar()throws Exception{
		open();
		stmt = con.prepareStatement("select * from usuario");
		rs= stmt.executeQuery();
		
		List<Usuario> lista = new ArrayList<Usuario>();
		while (rs.next()) {
		
			Usuario u = new Usuario(rs.getInt("idUsuario"), rs.getString("nome"), rs.getString("sobrenome"), rs.getString("email"), rs.getInt("idade"));
			lista.add(u);
			
		}
		
		close();
		return lista;
	}
	
	public void atualizar(Usuario u)throws Exception{
		open();
		
		stmt = con.prepareStatement("update usuario set nome=?, sobrenome=?, email=?, idade=? where idUsuario=?");
		stmt.setString(1, u.getNome());
		stmt.setString(2, u.getSobrenome());
		stmt.setString(3, u.getEmail());
		stmt.setInt(4, u.getIdade());
		stmt.setInt(5, u.getIdUsuario());
		
		stmt.execute();
		
		close();
	}
	
	public void deletar(Integer id)throws Exception{
		open();
		
		stmt = con.prepareStatement("delete from usuario where idUsuario=? ");
		stmt.setInt(1, id);
		
		stmt.execute();
		
		close();
	}

	
	
}






















