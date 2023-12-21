function showSearchInput(event) {
    document.getElementById("btnUnlockBuscarID").style.display = "none";
    document.getElementById("buscarInput").style.display = "block";
    document.getElementById("btnBuscar").style.display = "block";
    document.getElementById("btnLockBuscarID").style.display = "block";
    event.preventDefault();

}

function hideSearchInput(event) {
    document.getElementById("btnUnlockBuscarID").style.display = "block";
    document.getElementById("buscarInput").style.display = "none";
    document.getElementById("btnBuscar").style.display = "none";
    document.getElementById("btnLockBuscarID").style.display = "none";
    event.preventDefault();
}
