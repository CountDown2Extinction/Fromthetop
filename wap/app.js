fetch("/aircrafts").then(res => res.json()).then(aircraft =>{
    console.log(aircraft);
})