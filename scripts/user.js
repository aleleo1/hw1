const psw = document.getElementById('password_input');
const confpsw = document.getElementById('confirm_password_input');
const pc_error = document.getElementById('pc_error');
const p_error = document.getElementById('p_error');
const p_error_valid = document.getElementById('p_error_valid');
const errlog_password = document.getElementById('log_pass_error');
const sign_submit = document.getElementById('sign_submit');
const login_submit = document.getElementById('log_submit');
const sign_inputs = ['username', 'name', 'surname', 'num_matricola', 'email', 'password', 'confirm_password'];
const log_inputs = ['n_matricola', 'log_password'];
const int_inputs = ['num_matricola', 'n_matricola'];
const all_fields = [...sign_inputs, 'n_matricola', 'log_password'];
const sign_errors = Array.from(document.getElementsByClassName('sign_error'));
const log_errors = Array.from(document.getElementsByClassName('log_error'));

let s_counter = 0;
let l_counter = 0;
const forms = document.forms;
const signup = forms.namedItem('signup');
const login = forms.namedItem('login');
signup.addEventListener('submit', (event) => {


    event.preventDefault();
    const body = buildJSON(sign_inputs);

    var raw = JSON.stringify(body);

    var requestOptions = {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: raw,
        redirect: 'follow'
    };
    /*     console.log(requestOptions) */
    fetch("signup.php", requestOptions)
        .then(response => { response.status === 200 ? user_created() : user_failed(response) })
        .catch(error => console.log('error', error));

});

const user_created = function () {
    signup.classList.add('no_display')
};

const user_failed = async function (res) {
    const data = await res.json();
    console.log(data);
    for (let elem in data) {
        switch (elem) {
            case 'username':
                const u_error_u = document.getElementById('username_error');
                if (!data[elem]) {
                   
                    u_error_u.classList.remove('no_error');
                    u_error_u.classList.add('errore');
                }
                else{
                    u_error_u.classList.remove('errore');
                    u_error_u.classList.add('no_error');
                }
                break;
            case 'email':
                const u_error_e = document.getElementById('sign_email_error');
                if (!data[elem]) {
                   
                    u_error_e.classList.remove('no_error');
                    u_error_e.classList.add('errore');
                }
                else{
                    u_error_e.classList.remove('errore');
                    u_error_e.classList.add('no_error');
                }
            case 'num_matricola': {
                const u_error_m = document.getElementById('matricola_error');
                if (!data[elem]) {
                    
                    u_error_m.classList.remove('no_error');
                    u_error_m.classList.add('errore');
                }
                else{
                    u_error_m.classList.remove('errore');
                    u_error_m.classList.add('no_error');
                }
            }
            default: break;
        }
    }
    console.log('error on creation');
    const general_error = document.getElementById('sign_error_p');
    general_error.classList.remove('no_error');
    general_error.classList.add('errore');
}


login.addEventListener('submit', (event) => {
    event.preventDefault();
    const body = buildJSON(log_inputs);
    var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    var raw = JSON.stringify(body);

    var requestOptions = {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: raw,
        redirect: 'follow'
    };

    fetch("login.php", requestOptions)
        .then(response => response.status === 303 ? window.location.reload() : login_failed())
        /*     .then(result => { console.log(result); }) */
        .catch(error => console.log('error', error));
})

const login_failed = function () {
    const log_error = document.getElementById('log_error_p');
    log_error.classList.remove('no_error');
    log_error.classList.add('errore');
}
/* $pass_on_conf = false; */
const buildJSON = function (data) {
    let obj = {};

    data.forEach(s => {
        let elem = document.getElementsByName(s)[0];
        console.log(elem);
        obj[s] = elem.value;

    });
    console.log(obj);
    return obj;
}


const checkSignErrors = function () {
    let err = false;
    sign_errors.forEach(se => {
        console.log(se.classList)
        if (se.classList.includes('errore')) {
            err = true
        }
    });
    return err;
}
/* console.log(document.getElementsByClassName('error')); */
sign_inputs.concat(log_inputs).forEach(input_field => {
    let elem = document.getElementsByName(input_field)[0];
    console.log(elem)
    elem.addEventListener('change', (event) => {

        if (handle_error_1(event.target.value)) {
            console.log(elem.parentElement.parentElement.children[2])
            elem.parentElement.parentElement.children[2].classList.remove('no_error');
            elem.parentElement.parentElement.children[2].classList.add('errore');

        }
        else {
            console.log('NO ERROR');
            elem.parentElement.parentElement.children[2].classList.remove('errore');
            elem.parentElement.parentElement.children[2].classList.add('no_error');
        }
    })
});



psw.addEventListener('change', (event) => {
    if (checkPassword(event.target.value)) {
        p_error_valid.classList.remove('errore');
        p_error_valid.classList.add('no_error');

    }
    else {
        p_error_valid.classList.remove('no_error');
        p_error_valid.classList.add('errore');
    }
    if (event.target.value === confpsw.value) {

        pc_error.classList.remove('errore');
        pc_error.classList.add('no_error');

    }
    else {
        pc_error.classList.remove('no_error');
        pc_error.classList.add('errore');

    }
});

all_fields.forEach(field => {
    const elem = document.getElementsByName(field)[0];
    elem.addEventListener('click', () => {
        updatetouch(elem);

        /*  elem.removeEventListener('click',()=>{updatecouner(elem)});
        */
    });
    elem.addEventListener('change', () => {
        updatecounter(elem);
    }, { once: true })
})

const updatecounter = function (elem) {
    if (elem.form.name === 'login') {

        l_counter = l_counter + 1;
        console.log(l_counter);
    }
    else {

        s_counter = s_counter + 1;
    }
    console.log(s_counter, l_counter)
    if (s_counter === 7) {
        console.log(sign_submit);

        sign_submit.removeAttribute('disabled');
        console.log('LOL')
    }
    if (l_counter === 2) {
        console.log(login_submit);
        login_submit.removeAttribute('disabled');
    };
}

const updatetouch = function (elem) {
    console.log('ELEM : ', elem.form.name)
    if (elem.value.trim() === '') {
        console.log(elem)
        elem.parentElement.parentElement.children[2].classList.remove('no_error');
        elem.parentElement.parentElement.children[2].classList.add('errore');

    }
    else {
        console.log('NO ERROR');
        elem.parentElement.parentElement.children[2].classList.remove('errore');
        elem.parentElement.parentElement.children[2].classList.add('no_error');
    }


}

confpsw.addEventListener('change', (event) => {
    /*  console.log(psw, confpsw);
     inputError(pc_error, psw.value === confpsw.value) */
    if (psw.value === confpsw.value) {

        pc_error.classList.remove('errore');
        pc_error.classList.add('no_error');

    }
    else {
        pc_error.classList.remove('no_error');
        pc_error.classList.add('errore');
    }
})

const handle_error_1 = function (input) {
    console.log(input)
    return input.trim() === '' ? true : false;
}

const inputError = function (elem, cond) {
    console.log(elem)
    cond ? () => {
        elem.classList.remove('no_error');
        elem.classList.add('errore');
    } :
        () => {

            elem.classList.remove('errore');
            elem.classList.add('no_error')
        }
}

const checkPassword = function (psw) {
    return psw.length > 7 ? true : false;
}

const bindError = function () {

}

/* checkSignErrors(){

} */

int_inputs.forEach(elem => {
    const input = document.getElementsByName(elem)[0];
    input.addEventListener('change', event => {
        if (parseInt(event.target.value) && !/[a-z]/gi.test(event.target.value)) {
            event.target.parentElement.parentElement.children[3].classList.remove('errore');
            event.target.parentElement.parentElement.children[3].classList.add('no_error');
        } else {
            event.target.parentElement.parentElement.children[3].classList.remove('no_error');
            event.target.parentElement.parentElement.children[3].classList.add('errore');
        }

    });
})