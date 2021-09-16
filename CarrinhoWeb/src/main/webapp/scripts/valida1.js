/**
 * VALIDACAO DE CAMPOS OBRIGATORIOS
*@author ELIAS LEAL
 */
function validar() {
	//passo 2 slide 21
	let nome = frmNome.nome.value
	let quantidade = frmNome.quantidade.value
	let valor = frmNome.valor.value

	if (nome === '') {
		alert('Preencha o nome do produto')
		frmNome.nome.focus()
		return false

	} else if (quantidade === '') {

		alert('Preencha a quantidade do produto')
		frmNome.quantidade.focus()
		return false
	} else if (valor === '') {

		alert('Preencha o valor do produto')
		frmNome.valor.focus()
		return false
	} else {
		// a linha abaixo envia os dados do formulario para camada controller
		document.forms['frmNome'].submit()	//passo 3 slide 21
	}
}

function confirmar(codigo) { //passo 1 do slide 24
	//confirm gera um alerta com uma caixa de opções
	let resposta = confirm("Confirma a exclusão deste produto?")
	if(resposta === true){
	//a linha abaixo envia ao controller a requisicao delete + id	
		window.location.href = 'delete?codigo=' + codigo //passo 2 do slide 24
	}
}