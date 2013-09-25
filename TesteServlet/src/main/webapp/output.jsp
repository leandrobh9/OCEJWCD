<!DOCTYPE html>
<html>

<head>
<style type="text/css">
	table{
		border: 1px solid #333; 
		border-collapse: collapse;
		
	}
	td{
		padding: 4px 10px 4px 10px;
		border: 1px solid #111; 
	}
</style>
</head>

<body>

<h2>Teste de param e paramValues</h2>
<table>
	<tr><th>Código</th><th>Resultado</th></tr>
	<tr><td>\${param.nome}</td><td>${param.nome}</td></tr>
	<tr><td>\${param['nome']}</td><td>${param['nome']}</td></tr>
	<tr><td>\${paramValues.nome}</td><td>${paramValues.nome}</td></tr>
	<tr><td>\${paramValues.nome[0]}</td><td>${paramValues.nome[0]}</td></tr>
	<tr><td>\${paramValues['nome']}</td><td>${paramValues['nome']}</td></tr>
	<tr><td>\${paramValues['nome'][0]}</td><td>${paramValues['nome'][0]}</td></tr>
</table>

<h2>Teste de comparação e operações com números e strings</h2>
<table>
	<tr><th>Código</th><th>Resultado</th></tr>
	<tr><td>\${"2" + "3"}</td><td>${"2" + "3"}</td></tr>
	<tr><td>\${2 + "3"}</td><td>${2 + "3"}</td></tr>
	<tr><td>\${2 < "3"}</td><td>${2 < "3"}</td></tr>
	<tr><td>\${"2" < 3}</td><td>${"2" < 3}</td></tr>
	<tr><td>\${"a" > "b"}</td><td>${"a" > "b"}</td></tr>
	<tr><td>\${"a" < "b"}</td><td>${"a" < "b"}</td></tr>
	<tr><td>\${a < b}</td><td>${a < b}</td></tr>
	<tr><td>\${a > b}</td><td>${a > b}</td></tr>
	<tr><td>\${"b"}</td><td>${"b"}</td></tr>
	<tr><td>\${'b'}</td><td>${'b'}</td></tr>
	<tr><td>\${c}</td><td>${c}</td></tr>
	<tr><td>\${c < 1}</td><td>${c < 1}</td></tr>
	<tr><td>\${2 / 0}</td><td>${2 / 0}</td></tr>
	<tr><td>\${2 mod 0}</td><td>lançaria exception</td></tr>
	<tr><td>\${null mod 12}</td><td>${null mod 12}</td></tr>
	<tr><td>\${1 mod null}</td><td>lançaria exception - null é tratado como 0 </td></tr>
	<tr><td>\${true and null}</td><td>${true and null}</td></tr>
	<tr><td>\${true or null}</td><td>${true or null}</td></tr>
	<tr><td>\${empty null}</td><td>${empty null}</td></tr>
	<tr><td>\${"x" + "y"}</td><td>lança exception</td></tr>
	<tr><td>\${"x".concat("y")}</td><td>${"x".concat("y")}</td></tr>
	<tr><td colspan="2">Considerar para os itens a seguir: <br /><\% request.setAttribute("x", new int[]{10,20,30}); %></td></tr>
	<% request.setAttribute("x", new int[]{10,20,30}); %>
	<tr><td>\${x[<\%= 1 %>]}</td><td>lança exception</td></tr>
	<tr><td>\${x}</td><td>${x}</td></tr>
	<tr><td>\${x.0}</td><td>lança exception</td></tr>
	<tr><td>\${x[-1]}</td><td>${x[-1]}</td></tr>
	<tr><td>\${x[0]}</td><td>${x[0]}</td></tr>
	<tr><td>\${x["0"]}</td><td>${x["0"]}</td></tr>
	<tr><td colspan="2">Considerar para os itens a seguir: <br /><\% request.setAttribute("1077", Integer.valueOf(9)); %></td></tr>
	<% request.setAttribute("1077", Integer.valueOf(9)); %>
	<tr><td>\${1077}</td><td>${1077}</td></tr>
	<tr><td>\${"1077"}</td><td>${"1077"}</td></tr>
	<tr><td>\${requestScope["1077"]}</td><td>${requestScope["1077"]}</td></tr>
	<% request.setAttribute("email", null); %>
	<% session.setAttribute("email", "abcdef@abcdef.com"); %>
	<tr>
		<td colspan="2">Considerar para os itens a seguir: <br />
			<\% request.setAttribute("email", null); %> <br />
			<\% session.setAttribute("email", "abcdef@abcdef.com"); %>
		</td>
	<tr>
	<tr><td>\${email}</td><td>${email}</td></tr>
</table>

<h2>Teste de header e headerValues</h2>

<table>
	<tr><th>Código</th><th>Resultado</th></tr>
	<tr><td>\${header["user-agent"]}</td><td>${header["user-agent"]}</td></tr>
	<tr><td>\${headerValues["user-agent"][0]}</td><td>${headerValues["user-agent"][0]}</td></tr>
	<tr><td>\${headerValues["user-agent"]}</td><td>${headerValues["user-agent"]}</td></tr>
</table>

<h2>Teste de empty</h2>

<table>
<% 
	request.setAttribute("lista", new String[100]);
	request.setAttribute("lista1", new String[0]);
%>
	<tr><td>request.setAttribute("lista", new String[100]);</td><td>${ empty lista }</td><td>\${ empty lista }</td></tr>
	<tr><td>request.setAttribute("lista1", new String[0]</td><td>\${ empty lista1 }</td><td>${ empty lista1 }</td></tr>
</table>


</body>

</html>