<!DOCTYPE html>
<html>

<body>
<h2>Teste de param e paramValues</h2>
<pre>
${param.nome} 
${param['nome']} 
${paramValues.nome} 
${paramValues.nome[0]} 
${paramValues['nome']} 
${paramValues['nome'][0]} 
</pre>

<h2>Teste de comparação e operações com números e strings</h2>
<pre>
${"2" + "3"}
${2 + "3"}
${2 < "3"}
${"2" < 3}
${"a" > "b"}
${"a" < "b"}
${a < b}
${a > b}
${"b"}
${'b'}
${c}
${c < 1}
${2 / 0}
${2 mod 1} -> \${2 mod 1} ... 2 mod 0 lançaria exception 
${null mod 12} 
\${1 mod 0} lançaria exception - null é tratado como 0 
${true and null}
${true or null}
${empty null}
</pre>

<h2>Teste de header e headerValues</h2>
<pre>
${header["user-agent"]}
${headerValues["user-agent"][0]}
</pre>

<h2>Teste de empty</h2>
<pre>
<% 
	request.setAttribute("lista", new String[100]);
	request.setAttribute("lista1", new String[0]);
%>
${ empty lista }
${ empty lista1 }
</pre>

</body>

</html>