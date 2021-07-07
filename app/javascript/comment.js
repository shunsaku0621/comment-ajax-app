// function post (){
//   const submit = document.getElementById("post-comment-submit");
//   submit.addEventListener("click", (e)=>{
//     e.preventDefault();
//     const form = document.getElementById("comment-form");
//     const formData = new FormData(form);
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", `/posts/gon.comment./comments`, true);
//     XHR.responseType = "json";
//     XHR.send(formData);
//   });
// };

// window.addEventListener('load', post);

function pos (){
  const submit = document.getElementById("post-comment-submit");
  submit.addEventListener("click", (e)=>{
    
    window.alert(`hello,${gon.comments.post.id}!`); 
    // console.log(gon.comment);
  });
};

window.addEventListener('load', pos);

