
let ID = '449e2a8db6c6e01'
let SECRET = 'b5a8443d64b167b9c94f089bc3e36584b8b08b7e'
let token = ''
let counter = 0;



summarizeArticle = function (a) {
    console.log(a);
    const field = parseInt(a[0].innerText.replace(".", ""));
    const p = a[2].children[2];
    let data = remove_linebreaks(p.textContent);
    /*   a[2].children[2].innerText = ''; */
    console.log(data);
    sendOpenAIreq(data, field);

}



viewOriginalData = function (a) {
    let i = a[0].innerText;
    console.log(a);
    /*  a[2].children[2].innerText = ''; */
    const requestOptions = {
        method: 'POST',
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ id: i }),
        redirect: 'follow'
    };
    const p = a[2].children[2]
    console.log(p);
    fetch('server.php', requestOptions).then(res => res.json()).then(result => { console.log(result); p.textContent = remove_linebreaks(result.DATA) }).catch(err => { console.log(err) });// })

}

function remove_linebreaks(str) {
    return str.replace(/[\r\n]+/gm, "").replace('}1', '}');
}

Array.from(document.querySelectorAll('section')).forEach(

    section => {
        console.log('HOLA HOLA HOLA');
        section.children[1].children[0].addEventListener('click', () => {
            summarizeArticle(section.children);
            section.children[1].children[0].disabled = true
            section.children[1].children[1].disabled = false;
        });
        section.children[1].children[1].addEventListener('click', () => {
            viewOriginalData(section.children);
            section.children[1].children[0].disabled = false;
            section.children[1].children[1].disabled = true;
        });

    })




sendOpenAIreq = function (data, field) {

    const requestOptions = {
        method: 'POST',
        headers: { "Content-Type": "text/plain" },
        body: data,
        redirect: 'follow'
    };

    fetch("openai.php", requestOptions)
        .then(response => { console.log(response); return response.status === 404 ? false : response.text() })
        .then(result => { if (result) { handleOpenRes(result, field) } else return;/* let choices = JSON.parse(result['choices']); console.log(choices) */ })
        .catch(error => console.log('error', error));

}

const handleOpenRes = function (result, field) {
    console.log(result);
    let toparse = remove_linebreaks(result);
    console.log(toparse);
    /* console.log(JSON.parse(toparse)); */
    const res = JSON.parse(toparse);
    const sumup = remove_linebreaks(res.choices[0].text);
    /* console.log(document.getElementById(field.toString())); */
    const section = document.getElementById(field.toString());
    const p = section.children[2].children[2];
    console.log(p);
    p.textContent = sumup;
}

/* JSON.parse('{"id":"cmpl-5Cp9rlawhmMNyu000el774u25z7x2","object":"text_completion","created":1653738271,"model":"text-davinci-002","choices":[{"text":" La HSBC è una banca con sede a Londra. È la seconda azienda del mondo per asset. Ha tratto profitto da evasori fiscali, narcotrafficanti ed altri clienti.","index":0,"logprobs":null,"finish_reason":"stop"}]}' */
