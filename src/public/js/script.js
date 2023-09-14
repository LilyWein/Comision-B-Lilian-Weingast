const contenedor = document.getElementById("container-row");
const btnCrear = document.getElementById("btn-new");
const myModal = new bootstrap.Modal(document.getElementById("myModal"));
const btnSave = document.getElementById("btn-save");
const form = document.getElementById("formulario");

let html = "";
let option = "";
let idForm = "";

const inputTitle = document.getElementById("inputTitle");
const inputDescription = document.getElementById("inputDescription");
const inputPoster = document.getElementById("inputPoster");
var post = {createdAT: new Date(),};


btnCrear.addEventListener("click", () => {
  option = "new";
  btnSave.textContent = "Publicar";
  inputTitle.value = "";
  inputDescription.value = "";
  inputPoster.value = "";
  myModal.show();
});

document.addEventListener("click", (event) => {
  if (event.target.matches("#btn-delete")) {
    const article = event.target.closest(".col-6");
    const idArticle = article.dataset.id;

    Swal.fire({
      title: "Esta seguro de querer borrar la publicación?",
      text: "Se perdera todo el contenido!",
      icon: "Alerta",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Si! Borrar!",
    }).then((result) => {
      if (result.isConfirmed) {
        fetch(`http://localhost:3000/api/tasks/${idArticle}`, {
          method: "DELETE",
        })
          .then((res) => {
            if (res.ok) {
              article.remove();
            }
          })
          .catch((err) => {
            console.error(err);
          });
        Swal.fire("Borrado!", "Su publicación fue eliminada.", "success");
      }
    });
  }
});

document.addEventListener("click", (event) => {
  if (event.target.matches("#btn-edit")) {
    const article = event.target.closest(".col-6");

    const idArticle = article.dataset.id;
    const urlPosterEdit = article.children[0].children[0].src;
    const titleEdit = article.children[0].children[1].children[0].textContent;
    const descriptionEdit =
      article.children[0].children[1].children[1].textContent;

    idForm = idArticle;
    inputTitle.value = titleEdit;
    inputDescription.value = descriptionEdit;
    inputPoster.value = urlPosterEdit;
    option = "edit";
    btnSave.textContent = "Editar";
    myModal.show();
  }
});

form.addEventListener("submit", (event) => {
  event.preventDefault();
  
  if (option === "new") {
    const newTask = {
      title: inputTitle.value,
      description: inputDescription.value,
      poster: inputPoster.value,
    };

    fetch('http://localhost:3000/api/tasks', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(newTask)
    }).then(res => {
      console.log(res)
        if (res.ok) {
          alert("Publicación creada con exito");
          myModal.hide();
          location.reload();
        }
      })
      .catch((err) => {
        console.error(err);
      });
  }

  if (option === "edit") {
    const newTask = {
      title: inputTitle.value,
      poster: inputPoster.value,
      description: inputDescription.value,
    };

    fetch(`http://localhost:3000/api/tasks/${idForm}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(newTask)
    }).then(res => {
      if(res.ok){
        alert('Publicación editada')
        myModal.hide();
        location.reload();
      }
    })
  }
});

fetch("http://localhost:3000/api/tasks")
  .then((res) => res.json())
  .then((data) => {
     data.forEach((task) => {
      html += `
            <article class="col-6 d-flex justify-content-center mb-3" data-id="${task.id}">
                <div class="card" style="width: 26rem;">
                    <img src="${task.poster}"
                        class="card-img-top" alt="nuevo titulo">
                    <div class="card-body">
                        <h5 class="card-title">${task.title}</h5>
                        <p class="card-text">${task.description}</p>
                        <div>
                            <button class="btn btn-secondary" id="btn-edit">Editar</button>
                            <button type="" class="btn btn-danger" id="btn-delete">Borrar</button>
                        </div>
                        <div>
                            <p class="card-fecha d-flex justify-content-end" id="fecha">
                                ${new Date(post.createdAT).toLocaleDateString()}
                             </p>
                        </div>
                    </div>
                </div>
            </article>
            `;

      contenedor.innerHTML = html;
    });
  });
