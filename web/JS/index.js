function darkmode() {
    var TcsDarkMode = document.body;
    TcsDarkMode.classList.toggle("dark-mode");
    
    
    var theme;
    var title;
    
    

    if(TcsDarkMode.classList.contains("dark-mode")){
        console.log("dark-mode");
        theme = "DARK"
        title = "DARK"
        document.getElementById("darkmodebutton").innerHTML= "DARK";
       
       
        
        
         
    }else{
        console.log("Light mode");
        theme ="LIGHT"
        title = "LIGHT"
        document.getElementById("darkmodebutton").innerHTML= "LIGHT";
     
        
        
        

    }  
    // salvando na localStorage

    localStorage.setItem("PageTheme", JSON.stringify(theme));
    localStorage.setItem("PageMode", JSON.stringify(title));

    
}


let GetTheme = JSON.parse(localStorage.getItem("PageTheme"));
console.log(GetTheme);

let GetMode = JSON.parse(localStorage.getItem("PageMode"));
console.log(GetMode);

if(GetTheme === "DARK"){
    document.body.classList = "dark-mode";
}
if(GetMode === "DARK"){
    document.getElementById("darkmodebutton").innerHTML= "DARK"
}
