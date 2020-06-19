var ajax;

function lihat(kata) {
    if (kata.length == 0) {
        document.getElementById("kotak-pencarian").style.visibility = "hidden";
    } else {
        ajax = createAjax();
        var url = "search.php";
        ajax.onreadystatechange = stateChanged;
        var params = "q=" + kata;
        ajax.open("POST", url, true);

        ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        ajax.setRequestHeader("Content-lenght", params.length);
        ajax.setRequestHeader("Connection", "close");
        ajax.send(params);
    }
}

function createAjax() {
    if (window.XMLHttpRequest) {
        return new XMLHttpRequest();
    }
    if (window.ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
    return null;
}

function stateChanged() {
    var data;
    if (ajax.readyState == 4 && ajax.status == 200) {
        data = ajax.responseText;
        if (data.length > 0) {
            document.getElementById("kotak-pencarian").innerHTML = data;
            document.getElementById("kotak-pencarian").style.visibility = "";
        } else {
            document.getElementById("kotak-pencarian").innerHTML = "";
            document.getElementById("kotak-pencarian").style.visibility = "hidden";
        }
    }
}

function isi(kata) {
    document.getElementById("kata").value = kata;
    document.getElementById("kotak-pencarian").style.visibility = "hidden";
    document.getElementById("kotak-pencarian").innerHTML = "";
}