# JS-AJAX--POST-CONTROLLER

1. Create controller home, action index and other some_action.
2. Add to controller:  skip_before_action :verify_authenticity_token
3. Add to routes:      post "/some_action" => "home#some_action"
4. Add button to view: <input type="button" id="mixBut" value="Start"/>
5. Add next js code to assets:

```document.addEventListener('DOMContentLoaded', function() {
  var mixBut = document.getElementById("mixBut");
  mixBut.addEventListener("click", Start);

  function Start(){
    console.log("Started");
    mixBut.removeEventListener("click", Start);
    mixBut.addEventListener("click", Stop);
    mixBut.value = "Stop";

    $.ajax({
      type: "POST",
      url:  "/some_action",
      data: {indicator_working: 1}
    });
  }

  function Stop(){
    console.log("Stopped");
    mixBut.removeEventListener("click", Stop);
    mixBut.addEventListener("click", Start);
    mixBut.value = "Start";

    $.ajax({
      type: "POST",
      url:  "/some_action",
      data: {indicator_working: 0}
    });
  }
});```
