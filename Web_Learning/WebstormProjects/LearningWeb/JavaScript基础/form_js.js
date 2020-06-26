//没有连接上？
document.getElementById('user_phone').oninvalid = function () {
    this.setCustomValidity("请输入有效的十一位手机号码");
}

document.getElementById("score").oninput = function () {
    document.getElementById("level").value = this.value;
}