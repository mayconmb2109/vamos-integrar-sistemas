<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Produto</title>
    <!-- Inclusão do CSS do Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
    <h1>${produto == null ? "Incluir Novo Produto" : "Alterar Produto"}</h1>

    <form action="ServletProdutoFC" method="post" class="form">
        <%
            // Recupera a entidade 'produto' do request
            cadastroee.model.Produto produto = (cadastroee.model.Produto) request.getAttribute("produto");
            String acao = (produto == null) ? "incluir" : "alterar";
        %>
        
        <!-- Campo hidden para a ação -->
        <input type="hidden" name="acao" value="<%= acao %>">
        
        <!-- Campo hidden para o ID (apenas se acao for alterar) -->
        <c:if test="${produto != null}">
            <input type="hidden" name="id" value="${produto.id}">
        </c:if>

        <!-- Campo para o nome do produto -->
        <div class="mb-3">
            <label for="nome" class="form-label">Nome:</label>
            <input type="text" id="nome" name="nome" class="form-control" value="${produto != null ? produto.nome : ''}" required>
        </div>

        <!-- Campo para a quantidade do produto -->
        <div class="mb-3">
            <label for="quantidade" class="form-label">Quantidade:</label>
            <input type="number" id="quantidade" name="quantidade" class="form-control" value="${produto != null ? produto.quantidade : ''}" required>
        </div>

        <!-- Campo para o preço de venda do produto -->
        <div class="mb-3">
            <label for="preco" class="form-label">Preço de Venda:</label>
            <input type="text" id="preco" name="preco" class="form-control" value="${produto != null ? produto.precoVenda : ''}" required>
        </div>

        <!-- Botão de envio -->
        <div>
            <button type="submit" class="btn btn-primary">
                ${produto == null ? "Incluir" : "Alterar"}
            </button>
        </div>
    </form>

    <!-- Inclusão do JavaScript do Bootstrap -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
