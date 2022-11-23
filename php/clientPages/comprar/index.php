  <!-- 
    =========================================================================
    Nome do Projeto: Carrinho de Compras em Javascript
    Finalidade: Cursos de Informática do IFSP campus Caraguatatuba 
    Fonte Base: Projetos do Curso B7Web - https://b7web.com.br/ 
    Autor: Denny Paulista Azevedo Filho
    License: MIT License
    ========================================================================= 
  -->
  <?php 
             include_once '../../models/saborPizza.php';
             $p= new saborPizza();
             $pro_bd=$p->listar();
        ?>

<script>
let modelsJson = [
    <?php 
    foreach ($pro_bd as $pro_mostrar)
    { 
        ?>
    {id:<?php echo $pro_mostrar[0]; ?>, name:'<?php echo $pro_mostrar[1]?>', img:'<?php echo $pro_mostrar[2]?> ', price:[<?php echo $pro_mostrar[4]?>, <?php echo $pro_mostrar[4]/2?>], sizes:['1', '1/2'], description:'<?php echo $pro_mostrar[4]?>'},
    <?php
    }
    ?>
];




let cart = [];
let modalQt = 0;
let key = 0;
//constante para carregar estrutura, limpando o código
const c = (el)=>document.querySelector(el); //para localizar o primeiro item
const cs = (el)=>document.querySelectorAll(el); //para localizar todos os itens

//Vamos mapear nossos dados recebidos via Json
//Criando a lista de produtos, modelos
modelsJson.map((item, index)=>{
    //Vamos pegar a estrutura HTML que tem a class 'models-item', 
    //dentro da class 'models' e clonar - true indica para pegar subitens
    //let modelsItem = document.querySelector('.models .models-item').cloneNode(true);
    //Depois de ajustado com a constante
    let modelsItem = c('.models .models-item').cloneNode(true);
    // preenchendo as informações dos modelos
    //acrescentar um identificador para a pizza - FrontEnd
    modelsItem.setAttribute('data-key', index);
    modelsItem.querySelector('.models-item--img img').src= item.img;
    modelsItem.querySelector('.models-item--price').innerHTML = `R$ ${item.price[0].toFixed(2)}`;
    //iniciar pelo nome -- o mais simples
    modelsItem.querySelector('.models-item--name').innerHTML = item.name;
    modelsItem.querySelector('.models-item--desc').innerHTML = item.description;
    //Adicionar o evento de click ao tag <a> que temos envolvendo a imagem e o "+"
    //Vai abrir o Modal - Janela
    modelsItem.querySelector('a').addEventListener('click', (e)=>{
        e.preventDefault(); //Previne a ação padrão que iria atualizar a tela
        //let key = e.target.closest('.models-item').getAttribute('data-key'); //pegando informação do identificador
        //Transforma a variável key em global.
        key = e.target.closest('.models-item').getAttribute('data-key'); //pegando informação do identificador
        modalQt = 1;
        //Alimentando os dados do Modal
        c('.modelsBig img').src = modelsJson[key].img;
        c('.modelsInfo h1').innerHTML = modelsJson[key].name;
        c('.modelsInfo--desc').innerHTML = modelsJson[key].description;
        //c('.modelsInfo--actualPrice').innerHTML = `R$ ${modelsJson[key].price[0].toFixed(2)}`;
        c('.modelsInfo--size.selected').classList.remove('selected');
        cs('.modelsInfo--size').forEach((size, sizeIndex)=>{
            if(sizeIndex == 2) {
                size.classList.add('selected');
                c('.modelsInfo--actualPrice').innerHTML = `R$ ${modelsJson[key].price[sizeIndex].toFixed(2)}`;
            }
            //size.innerHTML = modelsJson[key].sizes[sizeIndex];
            size.querySelector('span').innerHTML = modelsJson[key].sizes[sizeIndex];
        });
        c('.modelsInfo--qt').innerHTML = modalQt;
        //Mostrar a janela Modal
        c('.modelsWindowArea').style.opacity = 0; //criando uma animação
        //corrigir, faltou o "a" do opacity - Valeu Gilberto dos Santos.
        c('.modelsWindowArea').style.display = 'flex';
        setTimeout(()=> {
            c('.modelsWindowArea').style.opacity = 1; //mostrando a janela, sem Timeout, não vemos o efeito
        }, 200);
    });

    //preenchendo as informações no site
    //Depois de ajustado com a constante
    //document.querySelector('.models-area').append(modelsItem);
    c('.models-area').append(modelsItem);
});

//Ações do Modal - janela
function closeModal(){
    c('.modelsWindowArea').style.opacity = 0; //criando uma animação
    setTimeout(()=> {
        c('.modelsWindowArea').style.display = 'none'; //fechando a janela, sem Timeout, não vemos o efeito
    }, 500);
    //mostrar o funcionamento via console do navegador, antes de atribuir aos botões
}

cs('.modelsInfo--cancelButton, .modelsInfo--cancelMobileButton').forEach((item)=>{
    item.addEventListener('click', closeModal);
});

c('.modelsInfo--qtmenos').addEventListener('click', ()=>{
    if(modalQt > 1) {
        modalQt--;
        c('.modelsInfo--qt').innerHTML = modalQt;
    }
});

c('.modelsInfo--qtmais').addEventListener('click', ()=>{
    modalQt++;
    c('.modelsInfo--qt').innerHTML = modalQt;
});

cs('.modelsInfo--size').forEach((size, sizeIndex)=>{
    size.addEventListener('click', (e)=> {
        c('.modelsInfo--size.selected').classList.remove('selected');
        //e.target.classList.add('selected'); //ocorre erro se clicar no <span></span>
        size.classList.add('selected');
        c('.modelsInfo--actualPrice').innerHTML = `R$ ${modelsJson[key].price[sizeIndex].toFixed(2)}`;
    });
});

c('.modelsInfo--addButton').addEventListener('click', ()=>{
    //Precisamos saber:
    //Qual o modelo?
    //console.log("Modelo: " + key);
    //qual o tamanho?
    //a leitura é como string, devemos transformar em número
    //let size = c('.modelsInfo--size.selected').getAttribute('data-key'); 
    let size = parseInt(c('.modelsInfo--size.selected').getAttribute('data-key'));
    //console.log("Tamanho: " + size);
    //Quantidade?
    //console.log("Quantidade: " + modalQt)
    //Quando adicionamos de forma sucessiva o mesmo item, e mesmo tamanho, não podemos ter várias entradas
    //Isso é o que ocorre atualmente, precisamos de ajustes
    //Antes de adicionar devemos verificar se já existe aquele item com aquele tamanho
    //para isso funcionar vamos criar um identificador
    let identifier = modelsJson[key].id+'@'+size;
    //vamos verificar se este identificador já está no carrinho
    let locaId = cart.findIndex((item)=>item.identifier == identifier);
    //se tiver adiciona a quantidade no item já existente, senão acrescento
    if(locaId > -1){
        cart[locaId].qt += modalQt;
    } else {
        cart.push({
            identifier,
            id:modelsJson[key].id,
            size,
            qt:modalQt
        });
    }
    updateCart();
    closeModal();
});

//ajustando o mobile
c('.menu-openner').addEventListener('click', ()=>{
    if(cart.length > 0){
        c('aside').style.left = '0';
    }
});

c('.menu-closer').addEventListener('click', ()=>{
    c('aside').style.left='100vw';
});


function updateCart() {
    c('.menu-openner span').innerHTML = cart.length;
    if(cart.length > 0) {
        c('aside').classList.add('show');
        c('.cart').innerHTML = ''; //limpo o carinho - visual
        //Fechando valores
        let subtotal = 0;
        let desconto = 0;
        let total = 0;
        cart.map((itemCart, index)=>{
            let modelItem = modelsJson.find((itemBD)=>itemBD.id == itemCart.id);
            subtotal += modelItem.price[itemCart.size] * itemCart.qt;
            //console.log(modelItem);
            let cartItem = c('.models .cart--item').cloneNode(true);
            //Alternativa
            let modelSizeName;
            switch(itemCart.size) {
                case 0:
                    modelSizeName = 'P';
                    break;
                case 1:
                    modelSizeName = 'M';
                    break;
                case 2:
                    modelSizeName = 'G';
            }
            cartItem.querySelector('img').src = modelItem.img;
            //cartItem.querySelector('.cart--item-nome').innerHTML = `${modelItem.name} - ${modelItem.sizes[itemCart.size]}`;
            cartItem.querySelector('.cart--item-nome').innerHTML = `${modelItem.name} (${modelSizeName})`;
            cartItem.querySelector('.cart--item--qt').innerHTML = itemCart.qt;
            cartItem.querySelector('.cart--item-qtmenos').addEventListener('click',()=>{
                if(itemCart.qt > 1) {
                    itemCart.qt--
                } else {
                    cart.splice(index, 1);
                }
                updateCart();
            });
            cartItem.querySelector('.cart--item-qtmais').addEventListener('click',()=>{
                itemCart.qt++;
                updateCart();
            });
            c('.cart').append(cartItem);
        });
        desconto = subtotal * 0.1;
        total = subtotal - desconto;
        c('.subtotal span:last-child').innerHTML = `R$ ${subtotal.toFixed(2)}`;
        c('.desconto span:last-child').innerHTML = `R$ ${desconto.toFixed(2)}`;
        c('.total span:last-child').innerHTML = `R$ ${total.toFixed(2)}`;
    } else {
        c('aside').classList.remove('show');
        c('aside').style.left = '100vw';
    }
}
</script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Carrinho Compra em JavaScript</title>
    <link rel="stylesheet" href="css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Denny Azevedo">
    <meta name="keywords" content="web, curso web, css, html, js, javascript">
    <meta name="description" content="Desenvolvimento WEB - Treinamento e aperfeiçoamento">
    <link href="https://fonts.googleapis.com/css?family=Hepta+Slab:400,700|Lato:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <!-- Modelos para clonagem e inclusão na área de exibição -->
    <div class="models">
        <div class="models-item">
            <a href="">
                <div class="models-item--img"><img src="" /></div>
                <div class="models-item--add">+</div>
            </a>
            <div class="models-item--price">R$ --</div>
            <div class="models-item--name">--</div>
            <div class="models-item--desc">--</div>
        </div>
        <div class="cart--item">
            <img src="" />
            <div class="cart--item-nome">--</div>
            <div class="cart--item--qtarea">
                <button class="cart--item-qtmenos">-</button>
                <div class="cart--item--qt">1</div>
                <button class="cart--item-qtmais">+</button>
            </div>
        </div>
    </div>
    <header>
        <div class="menu-openner">
            <span>0</span>
            <span class="material-icons">shopping_cart</span>
        </div>
    </header>
    <main>
        <h1>Modelos</h1>
        <div class="models-area"></div>
    </main>
    <aside>
        <div class="cart--area">
            <div class="menu-closer">
                <span class="material-icons">close</span>
            </div>
            <h1>Seus Modelos</h1>
            <div class="cart"></div>
            <div class="cart--details">
                <div class="cart--totalitem subtotal">
                    <span>Subtotal</span>
                    <span>R$ --</span>
                </div>
                <div class="cart--totalitem desconto">
                    <span>Desconto (-10%)</span>
                    <span>R$ --</span>
                </div>
                <div class="cart--totalitem total big">
                    <span>Total</span>
                    <span>R$ --</span>
                </div>
                <div class="cart--finalizar">Finalizar a compra</div>
            </div>
        </div>
    </aside>
    <div class="modelsWindowArea">
        <div class="modelsWindowBody">
            <!-- 
                Este botão é o cancelar do mobile (mostrar com F12) a ação do cancelar
                da janela modal vai ser igual, logo vamos fazer uma função
            -->
            <div class="modelsInfo--cancelMobileButton">Voltar</div>
            <div class="modelsBig">
                <img src="" />
            </div>
            <div class="modelsInfo">
                <h1>--</h1>
                <div class="modelsInfo--desc">--</div>
                <div class="modelsInfo--sizearea">
                    <div class="modelsInfo--sector">Escala</div>
                    <div class="modelsInfo--sizes">
                        <div data-key="0" class="modelsInfo--size">Pequeno <span>--</span></div>
                        <div data-key="1" class="modelsInfo--size">Médio <span>--</span></div>
                        <div data-key="2" class="modelsInfo--size selected">Grande <span>--</span></div>
                    </div>
                </div>
                <div class="modelsInfo--pricearea">
                    <div class="modelsInfo--sector">Preço</div>
                    <div class="modelsInfo--price">
                        <div class="modelsInfo--actualPrice">R$ --</div>
                        <div class="modelsInfo--qtarea">
                            <button class="modelsInfo--qtmenos">-</button>
                            <div class="modelsInfo--qt">1</div>
                            <button class="modelsInfo--qtmais">+</button>
                        </div>
                    </div>
                </div>
                <div class="modelsInfo--addButton">Adicionar ao carrinho</div>
                <div class="modelsInfo--cancelButton">Cancelar</div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/models.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>