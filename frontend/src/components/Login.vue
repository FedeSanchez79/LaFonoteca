<template>
    <div>
        <main id="main_contacto">
            <div class="container">
                <div class="form-container">
                    <h2>Iniciar Sesión</h2>
                    <form id="loginForm" @submit.prevent="submitLogin" method="post">
                        <div>
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" placeholder="Ingrese su email" v-model="email" required>
                        </div>
                        <div>
                            <label for="password">Contraseña:</label>
                            <input type="password" id="password" name="password" placeholder="Ingrese su contraseña" v-model="password" required>
                        </div>
                        <button class="click" type="submit">Iniciar Sesión</button>
                    </form>
                </div>
            <div class="form-image">
                <img src="../assets/settings.png" alt="Formulario de login"> 
            </div>
            </div>
        </main>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  import Swal from 'sweetalert2';
  
  export default {
    data() {
      return {
        email: '',
        password: ''
      };
    },
    methods: {
        submitLogin() {
            console.log('Entrando a submitLogin...');
            axios.post('/login', {
            email: this.email,
            password: this.password
            })
            .then(response => {
                // Login exitoso
                console.log('Login exitoso:', response.data);
                this.emitter.emit('loginExitoso', response.data.usuario); // <-- evento para forzar el refresh

                Swal.fire({
                    icon: 'success',
                    title: response.data.isAdmin ? '¡Bienvenido, administrador!' : '¡Bienvenido!', // Este es un mensaje condicional
                    text: 'Has iniciado sesión correctamente.'
                }).then(() => {
                        setTimeout(() => {
                        localStorage.setItem('usuario', JSON.stringify(response.data.usuario)); // Guardo en localstorage
                        if (response.data.isAdmin) {
                        this.$router.push('/catalogo'); // Administrador va al catálogo
                        } else {
                        this.$router.push('/membresia'); // No administrador va a la página de membresía
                    }
                        }, 200); // Retraso la redirección, así evito el error ResizeObserver
                    });
            })
            .catch(error => {
                console.error('Error en el login:', error); 
                Swal.fire({
                    icon: 'error',
                    title: 'Error en el login',
                    text: 'Ha ocurrido un error al iniciar sesión.' 
                });
            });
        }
    }
  };
  </script>
  <style>
  .click{
    margin: 10px auto;
    border: none;
    background-color: #0b5850;
    color: #fff;
    padding: 5px 15px;
    border-radius: 5px;
    cursor: pointer;
  }
  .click:hover {
  background-color:#26ab9e;
  color: black;
  transition: 0.5s;
  }
  </style>