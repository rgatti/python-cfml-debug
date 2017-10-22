<!--- minic bot gate --->
<cfif not (IsDefined("cookie.stageauth") and cookie.stageauth eq "letmein")>
	<cfabort>
</cfif>

<!--- process form --->
<cfif not StructIsEmpty(form)>
	<b>submitted values</b><br>
	<cfoutput>
	title: #form.title#<br>
	category: #form.category#<br>
	file: #form.file#<br>
	keywords: #form.keywords#<br>
	copyright: #form.copyright#<br>
	author: #form.author#<br>
	</cfoutput>
</cfif>

<!--- dump session for xss --->
<br><br>
<cfdump var="CFID=#CFID# | CFTOKEN=#CFTOKEN#">