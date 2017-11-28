// JavaScript Document
$(document).ready( function() {
$("#frmContatos").validate({
// Define as regras
rules:{
	
nome:{
// campoNome será obrigatório (required) e terá tamanho mínimo (minLength)
required: true, minlength: 2
},

endereco:{
	// campoNome será obrigatório (required) e terá tamanho mínimo (minLength)
	required: true, minlength: 2
	},
	
telefone:{
		// campoNome será obrigatório (required) e terá tamanho mínimo (minLength)
		required: true, minlength: 14
		},	

email:{
// campoEmail será obrigatório (required) e precisará ser um e-mail válido (email)
email: true
},

msg:{
// campoMensagem será obrigatório (required) e terá tamanho mínimo (minLength)
required: true, minlength: 2
}
},

// Define as mensagens de erro para cada regra
messages:{
	
nome:{
required: "Digite o seu nome",
minLength: "O seu nome deve conter, no mínimo, 2 caracteres"
},

endereco:{
	required: "Digite o seu endere&ccedil;o",
	minLength: "O seu endere&ccedil;o deve conter, no mínimo, 2 caracteres"
	},
	
telefone:{
		required: "Digite o seu telefone",
		minLength: "O telefone deve conter 14 caracteres"
		},

email:{
required: "Digite o seu e-mail para contato",
email: "Digite um e-mail válido"
},

msg:{
required: "Digite a sua mensagem",
minLength: "A sua mensagem deve conter, no mínimo, 2 caracteres"
}
}
});
});