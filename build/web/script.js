/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* 
    Created on : 24 de set. de 2023, 23:42:26
    Author     : Lazara Natanael da Silva
*/

function formatarCPF() {
    const cpfInput = document.getElementById('cpf');
    let valor = cpfInput.value.replace(/\D/g, '');

    if (valor.length > 11) {
      valor = valor.slice(0, 11);
    }

    if (valor.length >= 3) {
      valor = valor.replace(/(\d{3})(\d)/, '$1.$2');
    }
    if (valor.length >= 6) {
      valor = valor.replace(/(\d{3})(\d)/, '$1.$2');
    }
    if (valor.length >= 9) {
      valor = valor.replace(/(\d{3})(\d{2})/, '$1-$2');
    }

    cpfInput.value = valor;
  }
  document.getElementById('cpf').addEventListener('input', formatarCPF);
  
  /*Formata o número de telefone na interface assim que o cliente digitar o número*/
  function formatarTEL(){
    const telInput = document.getElementById('tel');
    let valor = telInput.value.replace(/\D/g,'');
    if(valor.length > 11 ){
      valor = valor.slice(0, 11);
    }
    if (valor.length >= 3) {
      valor = valor.replace(/(\d{2})(\d)/, '($1) $2');
    }
    if (valor.length >= 11) {
      valor = valor.replace(/(\d{5})(\d{4})/,'$1-$2');
    }
    telInput.value = valor;
  }
  document.getElementById('tel').addEventListener('input', formatarTEL);

  function formatarCNPJ() {
    const cnpjInput = document.getElementById('cnpj');
    let valor = cnpjInput.value.replace(/\D/g, '');

    if (valor.length > 14) {
      valor = valor.slice(0, 14);
    }

    if (valor.length >= 3) {
      valor = valor.replace(/(\d{2})(\d)/, '$1.$2');
    }
    if (valor.length >= 7) {
      valor = valor.replace(/(\d{2})(\d)/, '$1.$2');
    }
    if (valor.length >= 11) {
      valor = valor.replace(/(\d{3})(\d)/, '$1/$2');
    }
    if (valor.length >= 15) {
      valor = valor.replace(/(\d{4})(\d)/, '$1-$2');
    }

    cnpjInput.value = valor;
  }

  document.getElementById('cnpj').addEventListener('input', formatarCNPJ);

  const cepInput = document.getElementById('cep');

  cepInput.addEventListener('input', () => {
      let valor = cepInput.value.replace(/\D/g, ''); // Remove todos os caracteres não numéricos
  
      if (valor.length > 8) {
        valor = valor.slice(0, 8); // Limita a 8 dígitos (opcional)
      }
  
      if (valor.length >= 5) {
        valor = valor.replace(/(\d{5})(\d{0,3})/, '$1-$2'); // Aplica a máscara "12345-678"
      }
  
      cepInput.value = valor;
  });


  