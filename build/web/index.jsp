<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" type="text/css" href="CSS/style.css"</link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="rowStartLeft">
            <div>
                <div class="ContainerMenuIndex2 border">
                    <h3>Clientes</h3>
                    <a href="ClienteModulo/ConsultarClientePage/consultar_cliente.jsp"><button class="button">Consultar</button></a><br><br>
                    <a href="ClienteModulo/NovoClientePage/novo_cliente.jsp"><button class="button">Adicionar</button></a><br>
                </div>
                <div class="ContainerMenuIndex2 border">
                    <h3>Produtos</h3>
                    <a href="ProdutoModulo/ConsultarProdutoPage/consultar_produto.jsp"><button class="button">Consultar</button></a><br><br>
                    <a href="ProdutoModulo/NovoProdutoPage/novo_produto.jsp"><button class="button">Adicionar</button></a> <br><br>
                </div>

            </div>
            <div class="ContainerPetNews border">  


                <h1> Pet's Newspapers </h1>
                <div class="rowleft">
                    <div>

                        <p>Todos os dias uma nova curiosidade !</p>
                        <img id="FotoTheo" src="assets/img/theo.jpeg">
                    </div>
                    <div class="miniContainer2">
                        <h3>Você sabia ?</h3>
                        <p>O Beagle é um cão famoso pela sua coloração de três cores, orelhas longas caídas, porte médio e ponta do rosto branca, conhecida por bandeira. Essa denominação se deve devido ao fato de ter sido criada para que o pet fosse enxergado mesmo enquanto farejava.</p>
                    </div>
                </div>

            </div>

            <div class="ContainerMenuIndex border">
                
                <h4>Funcionário do mês </h4>
                <img id="FotoAle" src="assets/img/AlexandreAlves.jpg">
                
                <div class="miniContainer">
                    <p>Parabéns Alexandre !</p>
                    <p>“As nossas atitudes são contagiosas e é por isso que somos tão gratos pela sua dedicação e por manter uma postura positiva mesmo frente aos desafios, porque isso se reflete em toda a equipe. A sua liderança foi e é fundamental para o sucesso da nossa empresa. Gratidão!”</p>
                </div>

            </div>
        </div>
    </body>
</html>  