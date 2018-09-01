<testHTML>
  <h3>Testing html</h3>

  <div class="container">
    <div each={myObject, i in myObjects } class=" item {purple: myObject.isPurple}" onclick={clickMe}>{myObject.title}</div>
  </div>

  <script>
    this.myObjects = {
      item1: { title: "1", isPurple: false},
      item2: { title: "2", isPurple: false},
      item3: { title: "3", isPurple: true},
      item4: { title: "4", isPurple: false},
      item5: { title: "5", isPurple: false}
    }

    onlyPurple(e){
      return item.purple
    }

    clickMe(e){
      e.item.myObject.isPurple ? e.item.myObject.isPurple = false : e.item.myObject.isPurple = true;
      console.log(this.myObjects);
    }
  </script>
</testHTML>