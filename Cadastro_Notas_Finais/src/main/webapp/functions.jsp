<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fun��es do Programa</title>
</head>
	<script type="text/javascript">
		var discGlobal = "qualquercoisa";
		var notaGlobal = 0;
	
		function soNumero(evt){									//Fun��o que permitira somente numeros em um imput text
			var theEvent = evt || window.event;
			var key = theEvent.keyCode || theEvent.which;
			key = String.fromCharCode(key);
			var regex = /^[0-9.,]+$/;
			if(!regex.test(key)){
				theEvent.returnValue = false;
				if(theEvent.preventDefault) theEvent.preventDefault();
			}
		}
		
		function soLetra(evt) {									//Fun��o que permitira somente letras em um imput text
		    evt = (evt) ? evt : event;
		    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
		        ((evt.which) ? evt.which : 0));
		    if (charCode > 31 && (charCode < 65 || charCode > 90) &&
		        (charCode < 97 || charCode > 122)) {
		        alert("Apenas letras no campo de Usu�rio.");
		        return false;
		    }
		    return true;
		}
		
		function validar(){										// Fun��o para validar dados do cadastro da disciplina(Sem uso no c�digo final, substituida pelo cadastrarDisciplina)
			const nomeDisc = document.getElementById("nomeDisciplina");
			const notaFinal = document.getElementById("notafinal");
			const tabela = document.getElementById("tabelaCadastro");
			
			if(disciplina.value != 0 && notafinal.value != 0){
				alert("Disciplina cadastrada com sucesso!");
			}else if(disciplina.value == 0 || notafinal.value == 0){
				alert("Informa��es faltando.");
			}
		}
		
		function cadastrarDisciplina(){							// Fun��o para cadastrar disciplinas e notas finais
			
			var nDisc = document.getElementById("nomeDisciplina").value;
			var nFinal = document.getElementById("notaFinal").value;
			
			var tabela = document.getElementById("registros");
			
			
			var novaLinha = tabela.insertRow(-1);
			var novoCadastroNome = novaLinha.insertCell(0);
			var novoCadastroNota = novaLinha.insertCell(1);
			
			novoCadastroNome.innerHTML = nDisc;
			novoCadastroNota.innerHTML = nFinal;
			
			discGlobal = nDisc;
			notaGlobal = nFinal;
			
			if(nFinal >= 5){
				alert("Voc� est� aprovado em " + nDisc)			// If Else em um alert box na hora de confirmar cadastro se reprovou ou passou na mat�ria sendo cadastrada
			}else{
				alert("Voc� reprovou em " + nDisc)
			}
		}
	</script>
<body>

</body>
</html>