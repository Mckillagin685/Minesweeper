<!--  <todo>
  <h3>To do Tag</h3>

  <div class="container">
    <div each={ row, i in rows } class="row" id="{ row.id }" onclick={test}>
      <div each={ item, i in columns } class="column" id="{ item.id }" onclick={test}></div>
    </div>
  </div>

  <script>
    this.height = opts.height
    this.width = opts.width
    // this.columns = opts.columns
    // this.rows = opts.rows

    var columns = []
    var rows = []

    for(var x = 0; x < this.height; x++){
      columns.push({ id: ` column ${x+1}`})
    }

    for(var y = 0; y < this.width; y++){
      rows.push({ id: `row ${y+1}`})
    }

    //console.log("this is rows", rows);
    //console.log("this is columns", columns);

    test(e){
      console.log(e)
    }
    //for (var y = 0; y < this.height; y++){
      //for (var x = 0; x < this.width; x++){

      //}
    //}
    this.columns = rows
    this.rows = columns

  </script>
</todo>  -->

<todo>
  <h3>To do Tag</h3>

  <div class="container">
    <div each={ row, i in grid } class="row">
      <div each={ col, i in row } class="column" oncontextmenu={test} onclick={test}>{ m: col.mine, f: col.flag}</div>
    </div>
  </div>

  <script>
    this.height = opts.height
    this.width = opts.width
    this.mines = opts.mines
    this.grid = {}

    this.gameState = {
      status: null
    };

    var showLimit = this.mines;

    var ranBool = function() {
        var randomBoolean = Math.random() >= 0.5;
        showLimit > 0 && randomBoolean === true ? showLimit -= 1 : null;
        return showLimit > 0 ? randomBoolean : false;
      }

    test(e){
      e.preventDefault();
      //e.item.col.mine ? e.item.col.mine = false : e.item.col.mine = true;
      //e.item.col.flag ? e.item.col.flag = false : e.item.col.flag = true;
      e.type === "contextmenu" || e.ctrlKey ? e.item.col.flag ? e.item.col.flag = false : e.item.col.flag = true : null;
      //e.type === "contextmenu" || e.ctrlKey ? console.log(true) : console.log(false);
      // console.log(e.ctrlKey);
    }

    this.randomNum = function(min, max){
      var num = Math.random() * (max - min) + min;
      return num.toFixed();
    }

    for (var y = 0; y < this.height; y++){
      this.grid[`row${y}`] = {};
      for (var x = 0; x < this.width; x++){
        this.grid[`row${y}`][`col${x}`] = {col: x, row: y, mine: null, flag: null}
      }
    }

    this.findXY = function(x,y){
      console.log(this.grid[`row${y}`][`col${x}`]);
    }

    this.placeMines = function(){
      for(var loop = 0; loop < this.mines; loop++){
        var x = this.randomNum(0,8);
        var y = this.randomNum(0,8);

        this.grid[`row${y}`][`col${x}`].mine ? loop-- : this.grid[`row${y}`][`col${x}`].mine = true;
      }
    }

    console.log(this.grid);
    
    this.placeMines()

  </script>
</todo>