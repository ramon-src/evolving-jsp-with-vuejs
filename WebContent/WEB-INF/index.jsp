<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheets" href="vendor/umovme-vuejs-components.min.css">
</head>
<body>
<h3>Adicione valores a lista</h3>
<input type="text" id="input-description" value="">
<button onclick="addValue()">Add to list</button>

<div class="vue-components">
	<list-adapter></list-adapter>	
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://unpkg.com/vue-chartjs/dist/vue-chartjs.min.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script src="vendor/umovme-vuejs-components.min.js"></script>

<%@include file="ListItem.jsp" %>
<%@include file="TheList.jsp" %>
<%@include file="ListAdapter.jsp" %>

<script>
Vue.config.devtools = true

function addValue() {
	var value = document.getElementById('input-description').value
	var event = new CustomEvent('refreshlist', {detail: {description: value}});
	console.log(event)
	window.dispatchEvent(event)
}

var uButton = Vue.component('u-button', window["umovme-vuejs-components"].default.UButton)

const vues = document.querySelectorAll(".vue-components");

vues.forEach(function (el, index){
	new Vue({el})	
})
</script>


</body>
</html>