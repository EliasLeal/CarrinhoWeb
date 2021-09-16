<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Carrinho</title>
<link rel="icon" href="imagens/126510.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Carrinho</h1>
	<a href="novo.html" class="Botao1">Novo Produto</a>
	
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Produto</th>
				<th>Quantidade</th>
				<th>Valor</th>
			</tr>
		</thead>
		<tbody>
			<%
			@SuppressWarnings("unchecked")
			// a linha abaixo recebe a lista da camada controller armazenando no vetor
			ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("nome");
			for (int i = 0; i < lista.size(); i++) {
			%>

			<tr>
				<td><%=lista.get(i).getCodigo()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getQuantidade()%></td>
				<td><%=lista.get(i).getValor()%></td>
				<!-- na linha abaixo o ?(parametro) envia um conteudo ao servlet  -->
				<td><a href="select?codigo=<%=lista.get(i).getCodigo()%>"
					class="Botao1">Editar</a><a
					href="javascript:confirmar(<%=lista.get(i).getCodigo()%>)"
					class="Botao2">Excluir</a></td>
			</tr>

			<%
			}
			%>
		</tbody>



	</table>
	<a href="" class="Botao2">Calcular</a>
	<td><input type="text" name="Total" placeholder="Total" class="Caixa2" onclick="calculoCarrinho()"></td>
	<script src="scripts/valida1.js"></script>
</body>
</html>