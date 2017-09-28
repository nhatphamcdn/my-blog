$(document).ready(function () {
  var class_wrapper = $('.skills_field')
  var class_button = $('.add_new_skill')
  $(class_button).click(function(e){
    e.preventDefault()
    $(class_wrapper).append('  <div class="fieldset"> <div class="row no-gutters"> <div class="column"> <label for="user_skill_name">Skill name</label> <input id="skill_name" class="form-control" type="text" name="user[skills[][name]]"></div><div class="column"><label for="user_skills_percent">Skill percent</label><input id="skills_percent" class="form-control" type="number" name="user[skills[][percent]]"></div></div><a href="#" class="remove_skill">Remove skill</a></div>')
  })

  $(class_wrapper).on("click",".remove_skill", function(e){
    e.preventDefault();
    $(this).parent('div').remove()
  })
})
