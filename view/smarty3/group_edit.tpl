<h2>{{$title}}</h2>


<div id="group-edit-wrapper" >
	<form action="group/{{$gid}}" id="group-edit-form" method="post" >
		<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>
		
		{{include file="field_input.tpl" field=$gname}}
		{{if $drop}}{{$drop}}{{/if}}
		<div id="group-edit-submit-wrapper" >
			<input type="submit" name="submit" value="{{$submit}}" >
		</div>
		<div id="group-edit-select-end" ></div>
	</form>
</div>


{{if $groupedit_info}}
	<div id="group-update-wrapper">
		{{include file="groupeditor.tpl" groupeditor=$groupedit_info}}
	</div>
{{/if}}
{{if $desc}}<div id="group-edit-desc">{{$desc}}</div>{{/if}}