<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Carrinho - Editar produto</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Editar Produto</h1>
	<form name="frmNome" action="update">
		<table>
			<tr>
				<td><input type="text" name="codigo" readonly id="Caixa1" value="<%out.println(request.getAttribute("codigo"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="nome" class="Caixa1" value="<%out.println(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="quantidade" class="Caixa2" value="<%out.println(request.getAttribute("quantidade"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="valor" class="Caixa1" value="<%out.println(request.getAttribute("valor"));%>"></td>
			</tr>
		</table>
		<input type="button" value="salvar" class="Botao1" onclick="validar()">
	</form>
	<!-- a linha abaixo faz a ligacao com o documento JS -->
	<script src="scripts/valida1.js"></script>
</body>
</html>