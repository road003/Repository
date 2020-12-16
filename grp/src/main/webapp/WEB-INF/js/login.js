$(function () {
    $("#btn").click(function () {
        if ($("#userid").val() == "") {
            alert("아이디를 입력해 주세요");
            $("#userid").focus();
            $("#userid").val("");
            return false;
        }

        if ($("#userid").val().length < 8) {
            alert("아이디는 8자리 이상 입력하세요");
            $("#userid").focus();
            $("#userid").val("");
            return false;
        }

        if ($("#passwd").val() == "") {
            alert("비밀번호를 입력해 주세요");
            $("#passwd").focus();
            $("#passwd").val("");
            return false;
        }

        if ($("#userid").val() == $("#passwd").val()) {
            alert("아이디와 비밀번호는 동일할 수 없습니다");
            $("#userid").focus();
            $("#userid").val("");
            $("#passwd").val("");
            return false;
        }
    });
});