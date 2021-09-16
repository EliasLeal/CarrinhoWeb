package model;

public class JavaBeans {
	private String codigo;
	private String nome;
	private String quantidade;
	private String valor;

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(String quantidade) {
		this.quantidade = quantidade;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	// construtor 1
	public JavaBeans() {
		super();
	}

	// contrutor 2
	public JavaBeans(String codigo, String nome, String quantidade, String valor) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.quantidade = quantidade;
		this.valor = valor;
	}
}
