package model;

public class Usuario {
	
	private Integer idUsuario;
	private String nome;
	private String sobrenome;
	private String email;
	private Integer idade;
	
	//constructor default
	public Usuario() {
		super();
	}
	//constructor using fields
	public Usuario(Integer idUsuario, String nome, String sobrenome, String email, Integer idade) {
		super();
		this.idUsuario = idUsuario;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.idade = idade;
	}
	
	//getters and setters
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getIdade() {
		return idade;
	}
	public void setIdade(Integer idade) {
		this.idade = idade;
	}

	//toString
	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", nome=" + nome + ", sobrenome=" + sobrenome + ", email=" + email
				+ ", idade=" + idade + "]";
	}
	
	
	
}
