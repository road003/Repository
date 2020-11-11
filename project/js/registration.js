$(function () {
    $("#btn").click(function () {
        if ($("#name").val() == "") {
            alert("이름을 입력해 주세요");
            $("#name").focus();
            $("#name").val("");
            return false;
        }

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

        if ($("#confirm").val() == "") {
            alert("비밀번호를 재입력해 주세요");
            $("#passwd").focus();
            $("#passwd").val("");
            return false;
        }

        if ($("#passwd").val() != $("#confirm").val()) {
            alert("비밀번호를 다시 확인해주세요");
            $("#passwd").focus();
            $("#passwd").val("");
            $("#confirm").val("");
            return false;
        }

        if ($("#userid").val() == $("#passwd").val()) {
            alert("아이디와 비밀번호는 동일할 수 없습니다");
            $("#userid").focus();
            $("#userid").val("");
            $("#passwd").val("");
            return false;
        }

        if ($("#email").val() == "") {
            alert("이메일을 입력해 주세요");
            $("#email").focus();
            $("#email").val("");
            return false;
        }

        if ($("#email").val().length < 8) {
            alert("이메일은 최소 8글자 이상입니다");
            $("#email").focus();
            $("#email").val("");
            return false;
        }

        if ($("#email").val().indexOf("@") == -1) {
            alert("올바른 이메일 형식이 아닙니다");
            $("#email").focus();
            $("#email").val("");
            return false;
        }

        if ($("#email").val().indexOf(".") == -1) {
            alert("올바른 이메일 형식이 아닙니다");
            $("#email").focus();
            $("#email").val("");
            return false;
        }

        if ($("#address").val() == "") {
            alert("주소를 입력해 주세요");
            $("#address").focus();
            $("#address").val("");
            return false;
        }
    });
});