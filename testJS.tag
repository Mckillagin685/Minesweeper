<testJS>
  <h3>Test tag is active</h3>
  <div>
    
  </div>
  <script>
      this.height = opts.height;
      this.width = opts.width;

      var object = {};

      var showLimit = 5;

      var ranBool = function() {
        var randomBoolean = Math.random() >= 0.5;
        showLimit > 0 && randomBoolean === true ? showLimit -= 1 : null;
        return showLimit > 0 ? randomBoolean : false;
      }
      
      for (var x = 0; x < this.height; x++){
        object[`row${x+1}`] =[]
        for (var y = 0; y < this.width; y++){
          object[`row${x+1}`].push({ row: `${x+1}`, col: `${y+1}` /*show: showLimit > 0 ? ranBool() : false*/ });
        }
      }
      console.log(showLimit)

      var loopMe = 20;

      for (var i = 0; i < loopMe; i++) {
        console.log(`run ${ i + 1 }`, ranBool(), showLimit);
      }
      // console.log(object);
  </script>
</testJS>