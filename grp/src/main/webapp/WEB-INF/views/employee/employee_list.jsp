<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groupware System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.treeview.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="js/jquery.treeview.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
    <style>
        tr:first-child {
            background-color: #F5F5F7;
        }
        
        .tree-wrap {
            font-size: 14px;
        }

        .tree-wrap .btn-off {
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="page-wrap bg-gray">
        <div class="container">

            <div class="page-main-wrap flex flex-justify border-bottom">
                <div class="page-left bg-white height40">
                    <a href="${pageContext.request.contextPath}/main"><h2 class="noto center font24 weight400" style="color: #5f6368;">  관리자페이지</h2></a>
                </div>
                <div class="page-right bg-white height40">
                    <div class="page-info flex flex-justify">
                        <div class="">
                            <div class="m-t8">
                                <span>ewrrew</span>
                            </div>
                        </div>
                        
                        <div class="flex">
                            <div class="logout">
                                <a href="${pageContext.request.contextPath}/grp_login" class="noto font13 weight700 p-tb10" style="padding-right: 15px;">로그아웃</a>
                            </div>

                            <div class="pic" style="margin-top: 12px; padding-right: 22px;">
                                <span class="user">
                                    <img src="images/9.png" alt="" title="" />
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-main-wrap flex flex-justify height100">
                <div class="page-left bg-white p10">
                    <div class="sidebar-menu-content">
                        <div class="sidebar-menu">
                            <ul class="noto">
                                <li class="top-menu open">
                                    <a><span>사내조직/연락처</span></a>
                                    <ul>
                                        <li class="menu-on"><a href="${pageContext.request.contextPath}/employee_list"><i class="fas fa-caret-right"></i>사원목록</a></li>
                                        <li><a href="${pageContext.request.contextPath}/employee_register"><i class="fas fa-caret-right"></i>사원등록</a></li>
                                        <li><a href="${pageContext.request.contextPath}/employee_chart"><i class="fas fa-caret-right"></i>조직도</a></li>
                                        <li><a href="${pageContext.request.contextPath}/employee_chart_register"><i class="fas fa-caret-right"></i>조직도 등록</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>전자결제</span></a>
                                    <ul>
                                        <li><a href="grp_approval_main.html" target="_blank">전자결재 문서등록</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>게시판관리</span></a>
                                    <ul>
                                        <li><a href="grp_board_create.html"><i class="fas fa-caret-right"></i>게시판 생성</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>근태관리</span></a>
                                    <ul>
                                        <li><a href="grp_commute_set.html"><i class="fas fa-caret-right"></i>출퇴근 설정</a></li>
                                        <li><a href="grp_attend_info.html"><i class="fas fa-caret-right"></i>근무일 설정</a></li>
                                        <li><a href="grp_calendar_set.html"><i class="fas fa-caret-right"></i>일정목록</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>설문조사</span></a>
                                    <ul>
                                        <li><a href="grp_survey_open.html"><i class="fas fa-caret-right"></i>진행중인 설문</a></li>
                                        <li><a href="grp_survey_close.html"><i class="fas fa-caret-right"></i>종료된 설문</a></li>
                                        <li><a href="#"><i class="fas fa-caret-right"></i>내가 만든 설문</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>자료실</span></a>
                                    <ul>
                                        <li><a href="grp_file_upload.html"><i class="fas fa-caret-right"></i>문서양식</a></li>
                                        <li><a href="grp_file_upload.html"><i class="fas fa-caret-right"></i>제품소개서</a></li>
                                    </ul>
                                </li>
                                <li class="top-menu close">
                                    <a><span>회사기본정보</span></a>
                                    <ul>
                                        <li><a href="grp_company_info.html"><i class="fas fa-caret-right"></i>회사기본정보</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="page-right bg-white p10">
                    <div class="page-main-wrap">
                        <div class="page-member-top flex flex-justify">
                            <div class="">
                                <form method="POST" action="grp_member_list.html">
                                    <select class="select-search" name="searchOpt">
                                        <option value="">사원명</option>
                                        <option value="">사원번호</option>
                                    </select>
                                    <input class="input-search" type="text" name="words" required style="margin-left: -2px;" autocomplete="off"/>
                                    <button type="submit" class="btn-search" style="margin-left: -2px;">사원검색</button>
                                </form>
                            </div>
                            <div class="page-grp right m-b10">
                                <span class="page">
                                    <a href=""><i class="fas fa-angle-double-left"></i></a>
                                </span>
                                <span class="page">
                                    <a href=""><i class="fas fa-angle-left"></i></a>
                                </span>
                                <span class="page page-active">
                                    <a href="" class="f6">1</a>
                                </span>
                                <span class="page"><a href="">2</a></span>
                                <span class="page"><a href="">3</a></span>
                                <span class="page"><a href="">4</a></span>
                                <span class="page"><a href="">5</a></span>
                                <span class="page">
                                    <a href=""><i class="fas fa-angle-right"></i></a>
                                </span>
                                <span class="page">
                                    <a href=""><i class="fas fa-angle-double-right"></i></a>
                                </span>
                            </div>
                        </div>
                        
                        <div class="page-member-bottom">
                            <div class="page-content">
                                <table>
                                    <tr class="weight700 center tr-color">
                                        <td class="td-5">번호</td>
                                        <td class="td-5">부서</td>
                                        <td class="td-10">부서코드</td>
                                        <td class="td-10">근무부서</td>
                                        <td class="td-5">사원구분</td>
                                        <td class="td-5">직위</td>
                                        <td class="td-5">직급</td>
                                        <td class="td-5">부서장여부</td>
                                        <td class="td-10">사번</td>
                                        <td class="td-5">이름</td>
                                        <td class="td-5">호봉</td>
                                        <td class="td-20">직종</td>
                                        <td class="td-10">인증여부</td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>15</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>14</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>13</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>12</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>11</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>10</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>
                                            <a href="#" class="">2020100003</a>
                                        </td>
                                        <td>
                                            <a href="#" class=" ">홍길동</a>
                                        </td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-on">Yes</span>
                                            <span class="s-btn-off">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>09</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>08</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>07</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>06</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>05</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>04</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>03</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>02</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>01</td>
                                        <td>영업1팀</td>
                                        <td>2020100</td>
                                        <td>영업1팀</td>
                                        <td>과장</td>
                                        <td>-</td>
                                        <td>8</td>
                                        <td><input type="checkbox" /></td>
                                        <td>2020100003</td>
                                        <td>홍길동</td>
                                        <td>5</td>
                                        <td>부장 대리</td>
                                        <td>
                                            <span class="s-btn-off">Yes</span>
                                            <span class="s-btn-on">No</span>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="js/treeview.js"></script>
<script src="js/tab.js"></script>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    })
</script>

<script>
    $(function() {

        $(".user-icon").click(function(e) {
            $(this).siblings(".user-icon-menu").toggle();
            $(".bell-menu").hide();
            e.stopPropagation();
        });

        $(".bell i").click(function(e) {
            $(this).siblings(".bell-menu").toggle();
            $(".user-icon-menu").hide();
            e.stopPropagation();
        });

        // $(".navbar-icon").hover(function() {
        //     $(this).children(".icon-pop-text").toggle();
        // });

        $(".top-menu").children("a").click(function(e) {
            if ($(this).parent().hasClass("open")) {
                $(".top-menu").removeClass("open")
            } else {
                $(".top-menu").removeClass("open")
                $(this).parent().addClass("open");
            }
            e.preventDefault();
            e.stopPropagation();
        });

        $(document).click(function() {
            $(".user-icon-menu").hide();
            $(".bell-menu").hide();
        });
    });
</script>

</html>