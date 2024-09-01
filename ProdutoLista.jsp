<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Produtos</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
    <h1>Lista de Produtos</h1>
    <a href="ServletProdutoFC?acao=formIncluir" class="btn btn-primary m-2">Incluir Novo Produto</a>
    
    <table class="table table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Quantidade</th>
                <th>Preço</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <%-- Supondo que 'produtos' seja uma lista de produtos passada para a JSP pelo Servlet --%>
            <c:forEach var="produto" items="${produtos}">
                <tr>
                    <td>${produto.id}</td>
                    <td>${produto.nome}</td>
                    <td>${produto.quantidade}</td>
                    <td>${produto.preco}</td>
                    <td>
                        <a href="ServletProdutoFC?acao=formAlterar&id=${produto.id}" class="btn btn-primary btn-sm">Alterar</a>
                        <a href="ServletProdutoFC?acao=excluir&id=${produto.id}" class="btn btn-danger btn-sm">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
