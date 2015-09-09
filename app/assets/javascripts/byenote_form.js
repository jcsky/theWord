  function organSelectAll(){
    $("#organ_checkbox_form").find(':checkbox').attr('checked',false);
    $("#organ_checkbox_form").hide();
  }
  function organSelectPartial(){
    $("#organ_checkbox_form").find(':checkbox').attr('checked',false);
    $("#organ_checkbox_form").show();
  }
  function lockAllBox(){
    $("#theword").find(':checkbox').attr('disabled','disabled');
    $("#theword").find(':radio').attr('disabled',true);
    $("#theword").find('#byenote_funeral').attr({'disabled':true,'placeholder':''});
    $("#theword").find('#byenote_some_message').attr({'disabled':true,'placeholder':''});
    if(document.getElementById('byenote_donate_select_partial').checked){
      $("#organ_checkbox_form").show();
    }
    else{
      $("#organ_checkbox_form").hide();
    }
  }