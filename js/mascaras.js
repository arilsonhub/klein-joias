function mascara(obj, func)
{
    v_obj = obj;
    v_fun = func;
    setTimeout("execMascara()", 1)
}

function execMascara()
{
    v_obj.value = v_fun(v_obj.value);
}

function soData(valor)
{
    novo = valor;
	novo = novo.replace(/\D/g, "");						// remove tudo que não é dígito
	novo = novo.replace(/(\d{2})(\d)/, "$1/$2");		// inclui primeira barra
	novo = novo.replace(/(\d{2})(\d)/, "$1/$2");		// inclui segunda barra

	return novo;
}

function Onlychars(e)
{
        var tecla=new Number();
        if(window.event) {
                tecla = e.keyCode;
        }
        else if(e.which) {
                tecla = e.which;
        }
        else {
                return true;
        }
        if((tecla >= "48") && (tecla <= "57")){
                return false;
        }
}

function soNumero(valor)
{
	novo = valor.replace(/\D/g, "");	// remove tudo que não é dígito
	return novo;
}

function soMoeda(valor)
{
	novo = valor;
	novo = novo.replace(/\D/g, "");						// remove tudo que não é dígito
	novo = novo.replace(/(\d{1,})(\d{2})/, "$1,$2");	// inclui vírgula

	return novo;
}

function soDecimal(valor)
{
	novo = valor;
	novo = novo.replace(/[^0-9-]/g, "");				// remove tudo que não é dígito
	novo = novo.replace(/(\d{2})(\d)/, "$1.$2");	// inclui vírgula

	return novo;
}

function soHora(valor){
	novo = valor
	novo = novo.replace(/\D/g,""); 					//Remove tudo o que não é dígito
	novo = novo.replace(/^[^012]/,"");				//valida o primeiro dígito #
	novo = novo.replace(/^([2])([^0-3])/,"$1");		//valida o segundo dígito ##
	novo = novo.replace(/^([\d]{2})([^0-5])/,"$1");	//valida o terceiro dígito ###
	novo = novo.replace(/(\d{2})(\d)/,"$1:$2");		//Coloca dois ponto entre o segundo e o terceiro dígitos ##:##
	novo = novo.substr(0,5);						//Remove digitos extras (aceita no max 5 caracteres(contando o ':' no meio) )
	return novo
}

/*Função que padroniza telefone (11) 4184-1241*/
function soTelefone(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/^(\d\d)(\d)/g,"($1) $2")
    v=v.replace(/(\d{4})(\d)/,"$1-$2")
    return v
}

/*Função que padroniza telefone (11) 41841241*/
function soTelefoneCall(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/^(\d\d)(\d)/g,"($1) $2")
    return v
}

function soCpf(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")
    v=v.replace(/(\d{3})(\d)/,"$1.$2")

    v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
    return v
}

function soCep(v){
    v=v.replace(/D/g,"")
    v=v.replace(/^(\d{5})(\d)/,"$1-$2")
    return v
}

function soCnpj(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/^(\d{2})(\d)/,"$1.$2")
    v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3")
    v=v.replace(/\.(\d{3})(\d)/,".$1/$2")
    v=v.replace(/(\d{4})(\d)/,"$1-$2")
    return v
}

function soHora(v){
    v=v.replace(/\D/g,"")
    v=v.replace(/(\d{2})(\d)/,"$1:$2")
    return v
}

function soMoeda(v){
	v=v.replace(/\D/g,"") //Remove tudo o que não é dígito
	v=v.replace(/^([0-9]{3}\.?){3}-[0-9]{2}$/,"$1.$2");
	v=v.replace(/(\d)(\d{11})$/,"$1.$2")
	v=v.replace(/(\d)(\d{8})$/,"$1.$2")
	v=v.replace(/(\d)(\d{5})$/,"$1.$2")
	v=v.replace(/(\d)(\d{2})$/,"$1,$2") //Coloca ponto antes dos 2 últimos digitos
    return v
}

function soMoedaNegativo(v){
	v = v.replace(/[^0-9\-]/g,"")  //Remove tudo o que não é dígito ou 'negativo'
	v=v.replace(/.\-$/, "") // remove 'negativo' caso inserido em outra posição no documento
	v=v.replace(/^([0-9]{3}\.?){3}-[0-9]{2}$/, "$1.$2");
	v=v.replace(/(\d)(\d{12})$/, "$1.$2")
	v=v.replace(/(\d)(\d{8})$/, "$1.$2")
	v=v.replace(/(\d)(\d{5})$/, "$1.$2")
	v=v.replace(/(\d)(\d{2})$/, "$1,$2") //Coloca ponto antes dos 2 últimos digitos
    return v
}

function soDecimal(v){
    v=v.replace(/\D/g,"") //Remove tudo o que não é dígito
    v=v.replace(/(\d)(\d{2})$/,"$1,$2") //Coloca virgula antes dos 2 últimos digitos
    return v
}


