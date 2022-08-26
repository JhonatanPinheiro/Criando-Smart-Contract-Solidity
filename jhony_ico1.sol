// ICO jhony
// Version
pragma solidity^0.4.11

contract jhony_ico {
  // Declarando algumas variavéis
  // Número máximo de jhony disponíveis no ICO
  unit public max_jhony = 1000;

//Cotação de Jhony para o dolar 
unit public usd_to_jhony = 50;

//Total de jhony que foram compradas por investidores 
unit public total_jhony_bought = 0;


//Funções de equivalencia 
mapping(address => uint) equity_jhony;
mapping(address=> uint) equity_usd;



//Verificando se o investidor pode comprar jhony
modifier can_buy_jhony(uint usd_jhony){
    require(usd_invested * usd_to_jhony + total_jhony_bought <= max_jhony);
    ;
}

//Retorna o valor dos investimento em Jhony
function equity_in_jhony(address investor) external constant returns(uint){

    return equity_jhony[investor];

}
//Retorna o valor dos investimento em dolares
function equity_in_usd(address investor) external constant returns(uint){

    return equity_usd[investor];

}

//Compra de Jhony
function buy_jhony(address investor,uint usd_invested) external
can_buy_jhony(usd_invested){

    uint jhony_bought = usd_jhony * usd_to_jhony{
    equity_jhony[investor] += jhony_bought;
    equity_usd[investor] = equity_jhony[invested]/1000;
    total_jhony_bought += jhony_bought;
}


// Vendas de Jhony
function sell_jhony(address investor,unit jhony_sold) external{
        equity_jhony[investor] -= jhonatan_sold;
        equity_usd[investor] = equity_jhony[invested]/1000;
        total_jhony_bought += jhony_sold;

}

}
