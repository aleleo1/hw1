console.log('USER LOGGED');

const logout_button = document.getElementById('logout');
logout_button.addEventListener('click', () => { logout() });

const logout = function () {
    fetch('logout.php', { method: 'GET' }).then(res => {
        if (res.status === 303) {
            window.location.reload();
        }
    });
}