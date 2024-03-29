<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="/globalstatic/easyui/head.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/framework/jeasyui\jquery-easyui-1.5\themes\custom\uimaker\css\basic_info.css"/>
    <script type="text/javascript" src="<%=request.getContextPath() %>/framework/echarts/echart.min.js"></script>
    <script type="text/javascript">
        var geoData = {
            "type": "FeatureCollection",
            "features": [{
                "type": "Feature",
                "id": "510105",
                "properties": {"name": "青羊区", "cp": [104.061442, 30.673914], "childNum": 2},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@@@@AB@@A@@A@AAA@AD@@B@@@@@B@BB"], ["@@@A@@B@@AA@@@@@B@@@@AA@@A@@A@A@@@@@AC@@AA@AA@@AAAA@A@@@AB@@@@@BA@AB@BA@@@@BA@A@@@A@@@AAC@A@@@@BC@G@@@A@@@A@CA@@A@A@C@A@A@@@@@@@C@@@@@A@@@@@C@@@@@C@@@ABC@@@@@@@@@@@@@AB@@AD@B@@@B@@@@AB@@EA@@@@A@@@AC@@@@AAC@CAA@@@@@@@@@@@A@ABAB@@@B@@@BB@@@@B@@@BAB@@@@A@@@A@A@@@A@@B@@A@@@A@A@@@A@@@@A@AAA@@@AB@@@@A@@@@CC@@A@@@AB@@@@@B@@@BB@@B@@@B@@@@A@@@A@@@@@AB@@@@@B@@@@@@A@@@@@@A@@@A@@@AA@@@@@AB@@@B@@@B@@A@A@@@@@@@AB@@@@@@@@@@@@A@@@@@@@CCAA@A@@A@@@@@AB@@@@@BA@@BA@@@A@@@@@A@AA@@A@A@@ACC@@AA@@A@AB@@@@A@@B@@@B@@BB@BBB@@B@@B@@@@@@A@C@ABC@A@C@A@@B@@A@@@@@AA@@@@B@@@@@@@@A@@@@@@AA@@A@@@A@A@@@@AA@@AAA@@@@A@@@C@@@A@@@@@@@@@@BA@@@@B@@A@@@A@@@@AA@@@@A@@@@@@@AA@@@A@A@@@@@@B@@@@A@@BB@AB@@@@A@A@@@A@@@A@@@A@A@@@@@A@@@AA@@AA@@A@@@A@@@@@@@A@@@A@@@@@A@@B@@BB@@@B@@@BAB@BA@@B@@A@@@@BABABA@A@C@EBOD@@@@A@ABA@ABC@@@@B@@@B@@A@@@C@A@@@@@ABAB@@ABAB@@@BBB@BFAD@B@BB@@B@@@BB@BB@@B@B@@@@B@@@B@B@BB@@BBBBBB@BFDBBBB@@@B@@@@@@B@@B@B@BAB@B@@@@B@@BB@DBB@BB@@B@@B@B@@@DB@@B@@B@DAB@B@BBBBBB@BABAB@DABAB@B@BBB@@B@DA@AFABABB@@B@@@ABAB@B@BBBDBB@DB@AB@@@@@@A@@@@@@B@@@B@@@@A@@@@@AB@@@B@DBBB@@B@B@@AB@@@@@@A@@@@@A@@A@@C@@@@@AB@@@@@B@@@B@@@B@@B@@@@@AD@@@@@B@@@@@@@BA@A@@@@BAAA@A@@@@@@B@@@B@@@B@@@B@@@B@B@@@D@@@B@@@B@@A@@@A@@@@@A@@@@@A@@@@@A@@@@@A@@@@@A@@B@@@@BB@@@@@B@@A@@@@AA@@@@@@B@@A@@@A@@@@AA@@@A@@@@@A@@B@B@@@@A@@B@@@@@@A@@@@@@DA@@B@BCBA@@H@FBDBD@@B@@A@@@@@A@@@@@@B@@AB@@@@B@@B@@@B@B@@A@@@C@@@@@@@@@@@BBDD@@@@@@@@AB@@A@@BB@@@BA@AJ@B@B@@@BBB@BA@@@A@CBABCB@B@@BB@@@BB@@B@@@B@@@@@@@@@@@@@@@B@@@@@BA@@AA@@B@@A@@A@@@@A@ABA@@CBACDCDA@@@@B@BAAA@@@@@@CB@@A@@@@@@@C@@AB@@A@@A@CBA@@A@@@@@A@@B@@@B@B@B@B@@@@@B@@@B@@@@@@@@@@A@@@@@@BA@@@BB@@@DADA@A@@@@@@@@@@B@B@@@@@@@@@@@@B@@B@@@@@B@@B@@B@@A@@@@B@@@@@@@@@B@@@@@B@B@@A@@@@@@BA@@@@@@B@@@@@@@@@B@@@@@B@@@@@@@@@@@@@@@BA@@B@@A@@B@@@B@@@@@@@@@@@@AA@@@@@@@@A@@@@@@@A@@@A@@@@BA@@@@@A@@@@@@@@@A@@@@@@@A@@@@@@@@BA@@@AB@@@@@@AB@@@@B@@B@@@@@@AB@@A@@B@@@@@B@@A@@@@@@B@@@@@@@@@@@BA@@@@@@D@@AB@BAB@BBBB@@@@@@@@B@@@BB@B@@@@@@BB@@@@@@@B@@@@@@@B@@@@@@@@@@@B@@@@@@@@@@@@@@@B@@@@@@BB@@@B@@@@@@@@@@@@@@@@@@@BB@@@@@@@@BB@B@@@BB@@BB@@B@@@@@B@B@@@@@B@@@@@@@@@B@@B@B@@@B@@@@@@@@@@BB@@@@@@@@B@@@@@BAB@@@D@@AB@@@BABA@@B@@@@@D@B@@@@@BA@@@AB@@@@@B@@@B@@AFABAB@@@B@@@B@@AB@@@BA@@BAB@AC@ACC@@@A@@@@A@B@AA@@@@AB@@@@@@A@@@@@@@A@B@A@@@@@@@A@A@A@@BAA@@@A@@@A@@@@AA@@@@AA@AA@@@@@A@@@@@@@@@A@@@@@@@A@@@A@@BAA@B@@A@@B@@@@@@@@@@@@A@@A@A@A@@A@@CC@"]],
                    "encodeOffsets": [[[106556, 31419]], [[106564, 31393]]]
                }
            }, {
                "type": "Feature",
                "id": "510106",
                "properties": {"name": "金牛区", "cp": [104.052236, 30.691359], "childNum": 3},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@ABCDDBDDBCBABCA@AAA@@@A@"], ["@@A@@@AA@@AA@@A@A@@A@@@@A@@BA@@@@@AB@@@@A@@BA@@@A@@B@@A@@B@@A@@B@@AB@@B@@@@@@B@@B@@@B@@@@@B@@BB@B@@@B@B@@@@@BBB@@@B@B@@@@A@@@@B@@@A@BAA@A@BA@@@@@A@@@@A@@@BCB@BBB@@@@AB@@@@@@@BA@@@@@@@@@@@@A@@@@@A@A@@@@@"], ["@@@@AA@@@@@@@A@@@@@@@@@@@@@@@A@@@@@@@@@@@A@@@@@@@A@@@@@@AA@@@@@@@AAA@@A@@@@@@@@@AAAAA@ABA@@BC@@@@@@@AB@@@@@@@@@@A@@@@@@@@BA@@@@@A@@@@BA@@B@@@@A@@@@A@@A@@B@@@@A@@B@@AB@@@@@@@@@B@@@@@@@B@@@@@@@@@B@@@@AB@@@@@B@@@B@@@@@@@B@@@@@@B@@B@@@@@@@@@@A@@@A@@@@BA@@@AB@@@@@@@@@@@@@@A@@@@@A@@@@@@@@@A@@@@@@@AB@@@@@@@BA@A@@@@@A@@@@@@@@@A@@@@@@BA@@@@AA@@@@@A@@@@A@@@@@@@@@@A@A@@@@@@@@@@@@BCBCB@@A@@A@@AB@@@@@@@B@@@@@@@@A@@@A@@@@@A@A@A@A@@@A@@@@B@@@@@BB@DAB@@@@BA@@BD@@@@@@@B@@@DA@@@@@@BBABA@@@@@CBCDBDDA@@AB@B@B@@B@@@@BA@@@BB@@AB@@@@A@@@@@@@@@@@@@@@A@@@A@@@AA@@A@@AA@A@ADAB@D@B@@ABA@AA@@A@A@I@@BAB@@A@@AB@@@BA@@@@@@@@CCAA@@@@@@@@@@D@@@B@@@@A@A@@@AA@@@@@BA@@@A@@@@B@@@@@B@@@@AC@CAEAG@@@ABADA@@@CB@@@@@@@B@@@@A@@@@B@@A@A@@@@B@@@@@B@@BB@@@@@B@@@BA@@@@@@@BB@@@@@BA@@@@@A@@A@@A@@@@B@@@@@B@@@@@B@@@@@B@@@@@B@@@@@B@@@BA@@@A@@@C@@@A@A@@@A@@@A@@@A@@@A@@@@@@@@BBBAB@@@@@BAB@@@@@@A@@@@@C@@B@@@@@AA@@@A@@@A@@@@@A@@B@@@@@DB@@@@B@@@@@B@@B@B@@@@@@@@@DBD@@@B@@@@@@B@B@@BB@B@@DB@@@@B@@@BA@@@A@@@@@C@A@@B@@@@@@@@@BA@B@A@@@@B@@@@@@@@@@@@@@@@B@@@@@@@@B@@@@@@@@@@A@@@@@A@@BA@@@@@@B@B@BA@@BAA@@@@@A@@@AA@@@@B@@A@@HBFBB@HBKLGHB@B@BBD@@BB@@BAD@@B@BAB@BADCBAB@DAB@BBB@B@BBDH@@@@@@BBBB@@@@@@DD@@BB@B@@@BA@CDABAB@D@B@F@@@@@@@B@B@BBDBB@BB@BBDBD@HBD@BAD@@A@@@@@@BA@@BA@@B@@@@@BA@A@@@@AA@@@@@@AC@@@@C@@@@@@AAA@@@@B@HC@@B@@@@BDB@@@@B@@@@@@A@@@A@@@@@A@@@A@@@A@@@A@A@@@A@@B@@@B@@@BB@@B@@@BA@@@@BAB@@A@@@@@@A@@@A@@@@@@A@@@@BA@A@@BA@@@A@@B@BADAB@@@@@B@@@@@@@BB@B@B@@BB@@B@@B@@@B@@@@@B@@ABCB@@ABAF@@@@HB@@@@B@@@DD@@@@BB@@@@DB@@@@@@@@@@BBD@@@@B@@@@@@@@@@@@@@@@B@@@@@@@B@BB@@B@@@DA@@BA@@@@HABAB@BABABADABADABAB@@@@A@@DAB@B@D@B@DD@@@@@@@@@BBDBJ@@@BBDDBB@D@@@FBB@B@@BD@BBFBBDBB@@@@@B@@@@@@@@A@@@@@A@@@@B@BB@@@@B@@B@B@@@@B@@@@@@AB@@@@@@@@@@@@A@@@@A@@@@A@@@@@@@@@@@@@@@A@@@A@A@@@A@@@@@A@@@@B@@@@@@@B@@@@@@@@@BA@A@C@A@@AA@@AAA@@A@@@@@A@@A@@@A@@@@@@@A@@@@@@@@@@@A@@@@@@A@@@@@@@@@AB@@@@@@@@@@A@@A@@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@@A@@@@@@@@B@D@@@@@@A@@@@@@@@@AA@@@@@A@@@@@@@@@@@@@@@A@@@@A@@@@@@@A@@@@@@@@@@BA@@@@@@@A@@@@B@@@@@B@@@@@@A@@@@@@@@@B@@@@@@B@@@@@@B@@@@@@@@A@@@@@@B@@@@@BB@@@@@@@@@@@BAB@@A@@B@@@@@@@@@@@@@AA@@@@@@@@@ABB@DH@BBB@B@B@B@B@B@BAB@BCBCBA@A@@@@@AA@C@@@AA@@@A@ABCD@@C@AB@@@BA@@B@@@BBBBBB@@BBB@BBB@B@B@B@D@B@@BB@@B@@@BABABAB@BAB@@@BBB@BB@@BB@BAB@@@B@@@BB@B@@@B@B@B@@@@@@@@@@@BB@@FD@@B@@AB@@@B@@@@@BB@DB@@@@@B@B@@AB@@AB@@A@@@A@@@@@AA@@@@@AA@@AA@@@A@A@@B@B@@@B@@B@@BB@BBB@@@@B@@@BA@@@@@A@AB@@A@@A@@A@@AAA@@@AA@@@ABA@@B@@@B@@@BBB@BBB@@@B@B@B@@@BA@@BA@A@AB@@A@@B@@@B@BCD@BADAD@H@FABAB@BADABC@A@A@A@@@AAAA@KIA@@A@@@AB@@ABADAD@@@BAD@JBB@BAB@BAD@@AB@BA@ABA@C@CBO@@@E@A@@AA@BCAAB@@@DAB@BCAA@C@ABCBA@@A@@AC@ABA@@A@@A@@@AB@DA@@@@@AA@@@@@@AA@C@@@A@A@@@EB@@@A@@B@@@BA@@@@BA@@@AA@@@@@@@A@@@@@@@A@@@A@@@@@@A@@B@AA@@@@@@@@@A@@B@@@@@@@@@CCA@@AAACBAA@@C@AA@@@@A@C@@@@@@@ABCBA@@@ACBC@A@CAACAE@I@@@AA@@@@A@@@@@@@A@@@@@@AA@@@@A@C@A@A@@@@BA@@A@@A@@@@A@ABAAA@C@@@@@@@@D@@@@A@A@A@@@C@@@A@@@@A@@@A@@A@A@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@A@A@@B@@@B@@DB@@@B@@@@A@@@@@@@@@@@AB@@@@@@@@@@@@A@@A@@@@@A@@@@@E@@@A@@@@@C@@B@@AA@@A@AB@@@@C@A@C@@@@@@@@@A@A@@@C@AB@F@B@B@D@D@@@L@F@@@F@@@AA@@AA@@@@@@@@DCB@@@@@AA@A@@@@A@@@@@@@AA@@@@@@@@BA@@@@@A@@@@@A@@@@@@@A@@@@B@B@AAACGG@A@@FA@@DA@@@@B@@@@@@A@@@@@@@@@@AAACAAAA@@@A@@@@A@B@A@@@A@AB@@AB@@A@@BA@@@A@@@A@ABEB@BA@@@A@@@@@A@@B@@AB@@@@A@C@@@@@A@@@ABAB@@A@@BC@@@A@AB@@@@A@@@@@@@@@AA@@@@@@@@@@@A@@@A@AA@@@@@@@@@AB@@@@@@A@@B@@@@@BA@@B@@AAA@@@@@@@@@@B@@@@ABB@B@ABB@@@A@@@@@@B@@A@A@@@A@AA@@@@A@A@@@A@A@@AA@@@@@A@@@A@@@@A@@@@A@@@BA@@@AB@@@@AB@@@@AB@@@B@@AB@@@@@BA@@@@B@@AB@@@A@@A@@@@@@@@@@@@@@@@@@@A"]],
                    "encodeOffsets": [[[106450, 31515]], [[106556, 31415]], [[106550, 31410]]]
                }
            }, {
                "type": "Feature",
                "id": "510107",
                "properties": {"name": "武侯区", "cp": [104.043235, 30.641907], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@@@@@B@DBD@BB@@@@BD@@B@@@@@FB@@BA@@@@@A@@@ABC@@BA@@@@@@@@@@@@D@BA@@D@@@@@D@@@@@B@@@@@D@@@@@@@B@B@D@B@B@@@DBB@@@B@@@H@D@@A@@B@D@BB@@B@@@B@B@@A@@B@@ABAB@@A@@@@BA@@B@B@@@B@B@D@B@B@@@B@@@FAF@@@B@B@@@B@B@B@@@@@BA@@B@BAB@BAB@@@BA@@DAB@B@BA@@@@@@DC@A@AB@@@@ABE@@BA@A@@@A@AAA@@AAA@E@A@A@CC@A@A@ABA@@@A@A@AAA@@@A@ADA@A@A@A@@B@BC@A@A@A@@@@@@AC@AAAEAA@AA@A@A@A@@@@@ABA@ABA@A@@@AAA@@C@A@@AAA@@@@@@@A@A@A@CBA@C@A@A@@@AA@AAAA@@EE@@@A@ABAB@D@D@B@B@BA@@@A@A@AAAACAA@@@ABADABABA@A@C@@@AAAAA@@A@AAE@A@A@AA@A@A@@@AB@B@@ABCBABA@ADA@@@@@A@@AA@AA@C@@@C@@@A@A@AA@@AA@@AAAAA@IEEDGF@@CDCBCFCBEBA@A@@@AA@ABC@OAC@AAAC@A@@@A@A@AB@DA@EAA@A@EBE@A@GBBBADCBA@DFCBA@@@EA@@A@A@ABBDBBDBD@D@@B@@@D@@BDDB@BB@@JBDFH@B@@@BBB@@D@B@B@DBDH@B@B@D@@@B@@@@AB@DCB@BA@@@A@@@@@A@AAA@A@A@ABA@@B@@ADABABABABA@@@AB@@A@E@ABC@@@A@A@@@@@@A@@@@@@BAB@@A@@@@AA@@@A@@A@@AA@@@@@@AA@@@@@@A@@@@@A@@@@@@AAAB@F@@C@A@CB@@A@CB@@CBCBA@ABA@A@@@@AA@CAA@@@@@@@AAA@@@@A@@A@@@@@ACA@@@@A@@@A@C@A@AAA@@@A@BA@@@@@A@@AA@C@A@A@CBCBAB@@@@@B@@BBB@@@@B@@@@A@A@@@AB@@@@@B@@BB@@@@@@ABA@@B@@@@@@@@A@@@A@@@@@@@@@@B@@ABA@@@@@AB@AAB@@@@@BA@@B@@BDB@@@@@@BBA@AB@@B@@@AD@AA@@@C@@@@@ABBA@B@BA@@B@@A@@@@B@@B@@@@AD@@@B@@@@BB@B@@@B@@@B@@@BA@@@@B@@@B@BBB@B@@@@AB@@@B@@@BB@@BB@@BAB@B@B@@@B@@@B@@@@@@A@@@AA@A@@A@@@@BAB@B@@A@@@A@A@@@A@A@@@A@@B@B@BAD@B@BBB@B@@@@@@AB@B@@@BB@@@BBB@@B@@@@BB@@AB@@@@@@@B@@@@B@BA@@B@@@@@@BB@@@AB@@A@@BABA@AB@@@@A@@B@@@B@@@@ABA@AB@@@@@B@@@@@DB@@@@BA@@B@@A@A@@@@B@@@@@@@B@@@@BB@B@@@B@B@B@@@B@@A@@@@@@@A@@@A@@@@@A@@@@@@@@@AB@B@B@@@@@B@@B@@@@BB@B@@B@@BD@@@B@@@@@@AB@@@BA@@@@B@@BB@@@@@@@BA@@@@@B@@@D@@@B@@@@@BB@BB@@B@@B@B@@@B@@@BB@@@@@@@B@@@@@@A@@@@@BB@@@@B@@@@AB@D@B@D@BAD@B@@@@@@@@AA@@@AA@AAA@@@A@@@AB@@@@@BAB@@@BB@@DD@BB@B@@@BBB@@@@@B@@@B@@AB@@A@@@@BA@@@@B@@@@BBBDD@@@@@@B@@@@@@@@@@@@@BA@@@@@@B@B@@@@A@@@A@@BA@@@@B@@B@@@B@@@B@@@@B@@@@@@@@A@@@@BA@@@@B@@@B@@@@@@A@@@AA@@A@@@A@@@@BA@@B@@@DD@@@@@B@@A@@B@@BB@B@B@@B@@@B@B@@@B@@@@AB@@@B@B@@@B@@@@@BA@A@@@A@@A@@A@@@A@@BABAB@@@@@@@"],
                    "encodeOffsets": [[106505, 31389]]
                }
            }, {
                "type": "Feature",
                "id": "510113",
                "properties": {"name": "青白江区", "cp": [104.250945, 30.878629], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@A@@A@EAC@E@A@AB@BEB@@A@@@AA@AAAAA@C@AAA@ABKDKDIHA@CBGBG@A@@@A@@@@AB@@@BABABA@@@@DEB@@A@@@AAA@@@@@AB@@@D@B@@@@@BA@@AA@@A@AAA@A@ABA@ABA@AB@BAB@DAD@@@@@@C@@@A@@BA@AB@@A@@@@HAFAFCDGDEDEBEBC@C@AAA@ACAOAA@AAA@@A@A@@@ABCB@@ABEBOFAB@@A@@B@@AB@DBPAD@BABCBYDEBCAAAA@YJ@@@@A@AB@@@@QFOHA@ABABCB@@@@@@CDKL@HAF@DAFAD@@@@@B@B@@DD@@B@AB@@@@A@C@@@AB@DA@@@@@A@A@@@@BAF@@@@A@@@A@GIAAA@A@A@A@@BCDABA@CBC@E@K@A@@@AA@@AA@@AA@@@A@@@AB@@A@@@@AA@@AA@@A@A@@@A@@BA@@@A@@AA@@@A@@@@@@A@@@@BAA@@BEDABABC@MFADCBADCDAB@B@D@B@B@BB@@BB@BBFB@BB@@BFN@B@BABABCB@@CBABAB@DAF@BAD@BA@ABA@@@AB@@@B@@@B@BB@@@B@@B@@@BA@@BABABAB@B@DABAD@BABA@E@E@C@@@A@@@AB@BB@@B@B@@@B@@AD@BABGFA@ADADAB@D@BBDBDDJB@@B@@B@B@JEBA@@B@B@@@BB@@@@@BA@CD@B@@@@@B@@B@@@BBB@@@B@@@@B@@@@@BA@@BC@@@AB@B@@@@@@A@@@@@@@@@@@@B@@@@@@@@@B@@A@@@@@@@@@A@@@@@@@@@@@@@@@@A@@@@A@@@@@@@@@@@A@@@@B@B@@@B@@BB@BBB@@@BABEHCB@BA@ABCBCBABA@ABGBCBABA@A@A@A@A@AAAAA@AA@@AB@@AB@BAB@BA@@@A@AAAAGGAA@@A@A@AAA@AB@@@@ABCDABABA@CBC@A@C@C@E@AAAAAAAC@@AA@A@A@@A@@@@A@@A@@@@@@A@@A@@@AB@@@@@B@@@@@@AB@@@@@@@@@BA@@@@@@@@B@@@@BB@@@@@B@@@@@@@B@@@@@@ABEBABAB@@@B@B@BB@@BB@BBH@@@B@@BB@@BBD@B@D@B@D@F@B@B@@BBB@D@BBD@FDDDBDBBDHBD@FBF@B@DB@@BFBFBBBN@BADABA@A@@@A@C@@AA@@BA@@B@@@B@@@BB@@@@B@@@B@@A@@B@@@@AA@B@@A@ABCDA@AB@B@@@DF@@DBDA@@HGBABA@@B@B@@BBBBBF@F@B@DAB@D@B@@@B@DBDBDBDBDD@DB@BBD@DA@A@A@@@CBA@AD@D@BBDBDBD@D@FAB@D@BAB@BBB@FDD@B@BAF@BAD@@@BAD@BAD@FAF@BAB@DCBABAHAB@D@@@B@FFDDBBBB@BBBD@B@BBB@B@B@@A@@@C@@B@@@B@@@BB@@BB@@B@BBB@@B@@BD@@@B@@D@BABA@AB@@A@@@@@@B@B@BA@@B@@@@A@@AAAA@AA@@A@AHIBABC@ABC@ABC@AB@BAB@B@BBD@FDBBB@BAB@BA@ABAB@F@B@DA@ABABC@ABC@ABG@C@A@@AAGE@A@@A@AA@AAC@A@@@I@CAAA@AAABC@A@E@CBA@AAEA@@A@A@A@I@A@A@AA@A@A@A@ABC@ABA@A@A@ABA@A@@B@@@B@B@BBB@FF@@@BBBAB@@B@@BB@B@B@@@BA@ADGBA@@BCB@@@@A@@@A@@GK@AAA@@BA@ADEBA@ABA@C@@@ABA@@B@B@@@@ABA@A@@BADAB@DAB@B@@A@@@A@@CE@A@@@A@A@A@@@A@@A@EAAA@@@A@@@A@ABABABABAD@BADBD@DBB@B@B@DAPEDAB@D@D@@@@@@@D@BDDBDDBBBBD@NBBB@@B@@BFD@@@@@@B@@@@A@@AA@AA@AAAAIEA@@A@AA@@ABAFKBADABAD@D@BBDBDHB@BBDAB@BAHIDAB@B@B@@@@@@@BBPNBBD@D@JABAB@DA@CBA@CAAAC@CAA@CBCBG@A@C@G@IBA@CBADC@A@@@A@ACC@AAA@@AAAAAACCCA@@AC@C@C@A@ABAB@D@B@H@DBFB@B@@@B@@ABA@AB@@@B@@@@B@@@D@BAB@DABABA@A@A@@@A@A@@A@@@C@AA@@@A@@@AB@BA@ABA@CBA@AAA@ECCCGAAEE@A@@@A@AB@@@D@B@D@D@BADAB@BA@ABABC@A@A@@@A@@AAA@@@OA@A"],
                    "encodeOffsets": [[106992, 31416]]
                }
            }, {
                "type": "Feature",
                "id": "510104",
                "properties": {"name": "锦江区", "cp": [104.117022, 30.598158], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@@@@@@@ABA@A@CB@@AB@@A@ABA@ABA@@@AB@@@@A@A@A@@@A@A@@@E@EB@@A@@@A@A@C@A@A@@@BB@BB@@BBB@@BD@@@@B@B@@@@BB@@B@@A@@@@@B@@BA@@@@BD@@DB@@@@B@B@BB@@@@@@@@@@@@@@AB@@@@ABB@AB@@@B@@@@@@@B@@@@@@@@@B@@@@@B@@BBB@@@@BB@@@@@B@@@B@@BB@AB@B@B@@@@@@@B@A@B@@@@@@@B@@@@@@@BA@@@@BBA@B@@@@@@B@@DD@BBDBAB@BA@@BABA@@@@@@BAB@@A@@@@@A@@A@A@@@AA@@@@AC@@@@@A@A@@AAAAACAA@@BA@@B@DA@@DA@@@@@@B@@@BA@@@@@@B@@@@AB@B@@@BA@@B@DADA@@B@@AB@FABA@@@@@@@@@@@@B@LEFCB@@@@@FA@A@@DAB@@A@A@@@AAAB@@A@@A@@@A@@@@@@@A@@@A@@@A@AA@@@A@@@@@AD@@@@@B@B@B@@@B@@A@@@@@AAA@@@@@@@A@@A@@A@@@@A@@A@@B@@AB@@@@AB@@@BA@@@@B@@AB@B@@@@@B@@@@@B@@@@@@@BB@@B@@@@@B@@@@@B@@@B@@@BA@@@@@@@@@A@@@@@@BB@@B@@@B@@@@A@@@@@@@@@@@@B@@@@@@@@@@A@@@@@@@@@A@@@@B@@@@AB@@@@@@@@A@@@A@@@@@A@@@@@@@@FABA@@@@@@@ABA@@@AB@@@@@B@@@B@@@B@B@@@BA@B@@@@@@FCAAA@@@@A@@@@@AA@@@AACED@@ADA@A@@@@@A@AD@@AD@B@@@FCB@@@@@@@@@BBB@@@@B@@@@@@AB@@@@@@@BB@@@@@@@@@B@@A@A@@@@@@@@@B@@@@@@@@@B@@@@@B@@@@@@B@@@@@@@@@BA@@@@@@@A@@@@@@@@@@@AB@@@@@@@@@@@@@@A@@@@AA@@@@A@@@@@@@@@CA@C@CAAAAACAAAC@@@@@@AAA@AAA@BAB@B@@@BAB@@A@A@C@A@@B@@@BB@B@BAF@@@BBADA@ABAAA@A@@BC@AA@@@ABA@@@@AA@@@A@C@A@@@@@BAD@BABAA@@AG@@@A@A@@B@@AA@@ABA@@AA@AA@@AB@@A@@@A@CC@@A@@@A@ABAF@@ABABA@A@A@A@A@A@AA@@KC@@C@AA@@A@@@AA@@CKA@@A@@B@@AD@@AB@DC@CCC@@@@@@@@@@@@A@@@@@@@A@@@@@@@@@@@@B@@@@A@@@@@@@A@@@@@@@@@A@@@@@@@@BA@@@AA@@@@@@A@@@@@ABA@@@@@A@@@@@@@@@A@@@@@@A@@@A@@@@A@A@A@@@@AA@@@ABAB@@A@AB@BAB@B@BBB@B@@BD@@BB@BBB@@B@@@@@B@B@@@@B@@@@@B@@AD@@@DADAB@BC@ABABC@A@A@C@A@ICA@AA@@@@A@@@A@A@@@AB@@A@A@AAEA@B@@ABA@A@C@C@A@AB@B@B@@FF@@BBBBB@@B@@@B@B@DAB@D@B@B@B@@@@@@BB@BB@D@@@BB@B@@@BAB@BAB@B@@@@@B@B@BBBB@FBBB@BBD@@@@@@@B@B@BADA@@@@B@B@BCB@B@B@@BB@B@B@B@@AB@B@B@BDDB@B@F@B@BB@@BB@B@B@@@BAB@@AF@B@@A@@B@BCD"],
                    "encodeOffsets": [[106588, 31376]]
                }
            }, {
                "type": "Feature",
                "id": "510108",
                "properties": {"name": "成华区", "cp": [104.101515, 30.659966], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@@CBA@@BA@@B@DD@@B@B@@ABA@CA@BA@@@G@A@ADA@AB@@@@AD@@A@@@@@@C@A@@AAA@A@AB@D@DA@@B@@ABEBE@A@A@@A@@CA@@C@A@@CBA@AB@@@C@@FA@@@A@@@A@ABABA@@@A@@@A@AA@@A@AC@A@A@AD@@ABABC@G@GA@@A@@@A@CA@ACC@@AA@@@@@@@B@@@@@@@@AB@@A@@@A@@@@@A@@@@@A@@@AA@@@@@@A@@@@@A@@@@@A@A@@BA@@@@@AB@@A@@B@@A@@BA@@@@BB@@@@@@BB@@@@B@@@@@@BB@B@@@@@BA@@@A@A@A@@@@@C@@B@@@@@B@@BBB@@@B@@@B@@@@@@@B@@@B@@@@BA@BB@B@@@B@BA@CB@@@BEB@@@@A@EDKFA@@@@@@@@@@@@@ABEBA@@BA@@@CBCBA@@@AB@@A@A@@B@@A@@@@@@@AB@@A@@@@@@@CB@@CBA@@@AB@@BBBDBBBB@@@B@B@@@@BD@@@@BB@@B@B@@@@B@@@@@BA@AB@@@@@@ABAB@@ABA@AB@@B@A@B@@@@@@B@@BBBBBDBB@@@@@@@@@@@B@@@@A@@@@@CB@@EB@@@BHHBDBBA@A@@@@@@B@@@@@@@B@@@@@B@@@@AB@@@@@@@@BB@@@@@@B@@@@@@BBB@@@@A@CD@@@@@@@@BB@@BB@@E@@@E@K@@@C@C@A@A@E@A@@B@D@@@B@B@@@@@@@@@D@B@D@@A@@B@BB@@BA@@@@D@@@@@B@@@F@@@@@B@@@@@BB@@@@@@@@@@@@@BA@@@@@@@@@@B@@@@@@A@@CA@@@A@@@AB@B@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@B@B@@@@B@@@B@@B@@@D@@@B@B@B@@@@@@C@@@@@@D@B@BBBAB@@@@@@BB@@@AB@@@@@B@B@D@B@@B@@B@@@@B@@@@@@@B@@@@@BB@@J@F@DBBB@D@BADBD@@B@DABA@@@@@@D@B@@@@@BBD@@@BBDABB@BB@DD@@@@@@@@A@@@@B@@@@@@@@BBA@@@@B@@@@B@@@B@@@@@@@B@@@@@@@B@@B@@AB@@@@AB@@A@@@@B@@FA@@B@B@@@D@B@@B@@@@B@@B@@@@CBA@@B@@@BB@@@AB@BBD@@@BB@DABAD@B@DB@ABA@C@@BADB@ADA@@@A@AA@EAA@@@A@@AC@@A@@@@DABAB@@@B@B@DBBB@@BBB@F@D@J@H@F@DA@@B@BA@A@A@A@A@BA@@@AA@@@@BA@AA@@ABADG@A@@B@DBBBDDD@BB@@@@B@BBB@DA@@D@B@@@@AAG@CD@DBBDBB@@B@@@B@BAB@@AB@@A@@AA@AACAG@A@A@@@A@@B@B@@@D@BAFAF@DBD@BC@@@@@@BAB@@@@@BA@@BAD@BB@B@D@BDBDBDBF@DBBAB@D@B@BA@@BABA@@AA@@EAA@AAA@@A@A@ABABADADA@@@@@A@@AC@A@A@A@A@@B@BAHCBABA@AB@@A@AA@A@ABA@AAA@@AAAAAA@AAAAA@A@A@CAA@@BG@ABC@A@AAA@@@CA@@@B@@A@@@AB@@@@@@@@A@@@@BA@@@@@@@A@@@AA@@A@@@@@@@A@@@@@A@@B@@A@@@@@A@EAEAAA@CAECCA@CAEA@@@@GAC@CCA@@@A@C@@@A@@@ADAD@@@@@@ABCACA@@CAAEAAAA@@@C@@BA@AB@@A@@C@A@AB@D@@ABA@ABA@A@A@@@@@A@@@AA@A"],
                    "encodeOffsets": [[106648, 31401]]
                }
            }, {
                "type": "Feature",
                "id": "510115",
                "properties": {"name": "温江区", "cp": [103.856646, 30.682203], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@A@A@E@C@E@@@@@E@KBCBC@ABCFABABA@A@A@A@@@@@ECCDCBA@@@@B@@@@BB@@@@@B@@AB@B@B@@@B@@AB@B@@A@@@A@@@@@A@@DABAD@@A@@B@@@@@@ABA@@@@@@@AB@@@@@@@@@B@@@@@@@@@B@@CB@BA@@@A@@@AB@@@@@BAB@@@BA@@@@@@B@@@B@@@@@BA@@@@@A@@@AB@@@B@@BB@@AB@BA@@BAB@@ABA@@B@@@@@B@@@B@@@@@B@B@D@@@@AB@@@@@@A@@@@BBD@@BBBBBBAB@DCFGNCFCDAFAJAH@F@F@F@FBDA@ABAB@B@D@@A@@BC@A@ABA@@B@B@B@@@@@@@BA@ABA@CDAB@@A@A@A@@BA@@B@BBB@B@@AB@B@BCBAB@@@BAB@B@@BB@B@@@BCF@BA@@B@B@B@@@DAB@@AD@@AF@@ABAB@@@B@BBD@@AB@@CB@@AB@B@BB@@BB@BB@@AB@BBB@@@D@B@BABAFCHAFAD@D@B@B@@@B@@@B@B@B@BAB@BA@@B@@@B@B@@@BAB@B@@@B@B@@@BBBAB@@AB@@CB@@ABAB@@BB@B@@AB@BA@A@@BA@@BAB@@CHCDCH@B@D@NAF@DCF@D@B@B@@ABABAB@@@D@B@B@BA@ABAB@B@@@B@@@B@B@@@BABAB@@@B@B@@@D@BA@@BAF@BDBH@@@@@@A@@B@@A@@BCBA@@B@@@DA@@B@@ABA@A@A@A@@BA@@B@B@@@BABAB@BC@@@AB@@AB@B@BA@@BA@@DA@A@@@ABA@@DEBCBABCB@@@@A@A@A@@@ABE@A@@BCDA@A@@@@@@BE@@@@BADAFA@@B@D@BAD@@@B@BA@@B@B@BABAB@B@D@@@B@B@@AB@@@BAD@BABA@@@@BABA@@@@BCB@@@@ABC@AA@@A@@@A@@@CBA@@BABAB@DA@@@@BA@A@ABA@@B@D@B@B@@@BBB@B@@@D@@@B@@@B@DB@BB@@@B@@A@@DCBAB@@A@@B@@A@C@E@@@A@@FC@@@A@A@A@@@AB@@AD@@AB@@A@AB@@AB@BC@@@A@AA@@AAA@@@@@A@@B@DAB@FBB@NCHA@@@@DADADC@ADCBCFCDCB@BAJGB@BAB@B@B@DAB@@@FCDCB@HCBABABABAB@BAL@H@BAFA@@@@FAB@D@B@@@@@B@@BB@@B@B@@EFCDAB@@@B@@BBB@BAFADADAD@BAD@@@BAB@BCDADCDAFEFADADAD@D@BB@@BBAB@@AB@@@B@@BBB@B@@@BAB@B@BADABAFC@A@@FABABABA@@@A@AB@B@BA@@B@BB@@@@F@@@@@BA@@@@@AA@@@@@@@@A@@B@@AB@@B@@B@@@B@@@B@@A@@@@@A@@A@@@@@@AB@@@B@@@B@@@@A@@@@AAA@CAA@CAAA@A@ABABA@@A@@@AAABEB@BCBA@@@AA@A@ABABA@CBABA@AAAAAAAA@A@CBA@@@@AA@@C@@@A@AA@@@AAA@CAA@@AA@@@@@@ABA@A@A@AA@@@@@@@@A@@AAAAEC@AAAAAAA@@AAA@A@@@A@@@@@@A@AA@@AAA@@A@@@AAA@C@EB@AAA@A@@BABA@@BABA@@@@B@D@@@B@@@@A@@@A@@D@BAB@BAB@@@@@PCFAD@B@B@BABA@A@@A@@@CB@@@A@@A@@@@@AA@@A@@BA@AB@@@@A@@@@AA@CC@@@@A@AB@@A@A@@@@@A@@@@@A@A@A@E@GBC@@@CACAAC@CBC@CAAA@CAAA@A@ADA@@@A@AA@CACBA@ABCBA@A@CA@AA@@@@@AD@B@BDJ@D@BABCDABA@@@AECKCCACAAAAAAEAAACAAAA@@AAA@A@@@@@A@@@@@@BC@C@@@C@ABA@C@@AA@@AAA@A@ABCDABCDCBA@A@A@AA@A@@@C@ADCBC@EBE@A@@AAA@CAA@AAA@AAAAAAA@@@A@EBE@AB@@@@A@"],
                    "encodeOffsets": [[106319, 31351]]
                }
            }, {
                "type": "Feature",
                "id": "510124",
                "properties": {"name": "郫都区", "cp": [103.901091, 30.795854], "childNum": 2},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@@A@A@@@@@@@E@A@CBABADCB@@A@@@AAA@@CC@@@@@@AAAA@@@@@@CGAAA@A@AAA@CBA@ABCDABA@ABA@@@BC@AA@@AC@@@@BA@@@@@A@@B@@BB@@@@BBBBABABABA@B@BBBBBBABCBABAB@@ABABCBA@@BA@ABCBC@ABA@ABCBA@ABA@AB@@@@CBC@ABAB@@A@@@@BABAB@BABB@@@BB@@B@BB@@@@BB@BB@DFE@BBA@@@B@@@@@B@@@@BB@@@@AB@@@@@@@@AB@@@A@@@@A@@@@@@@@@@@AB@D@@ABBBA@@@@@@@A@@B@@BJEB@@AA@@@B@@@@@@@@@@@@AB@@@BB@@@@@@BB@@A@@@@B@@A@@@@@@B@@@@@@@@@@@@@@@B@@@@@@@@@@BBA@@@@B@@@BAB@@@@@D@B@BA@@DMBB@ADLB@D@B@@BB@B@@@@A@@@@@@BA@@@@@A@@@A@@B@@@B@@@BJC@B@D@B@B@@A@@@@@ABA@A@@BA@@@@D@@HA@@@@@BB@@A@BBABB@@BBA@@BB@B@AA@A@@@@B@@@B@@@@@@@B@@@@@BBB@@@B@@A@@@@@A@@@@B@@A@@@@@@@@@@B@@@@@@AB@@@@B@@B@@A@@@@@A@@@A@@B@@A@@B@@B@@B@B@B@@@@A@@@@@@AA@@B@@AB@@AA@BA@A@@B@@@@@B@@A@@@AA@AAA@BA@@AA@@A@@@A@AA@A@A@@BA@@BADBBB@@B@@@@@B@@@@@B@@ABBB@@@B@@@@CAA@@AAAA@AA@C@@@@ABADAB@BBBB@@B@D@@BBAAC@C@C@@@CAA@ACAAA@A@@@@BA@@BABA@@B@@@@B@@B@@@@@@@BA@@@@@A@@B@@@@A@@@A"], ["@@CA@@@AAA@@@A@A@@@@A@@@C@CA@@@@@@@@A@A@@@A@@BA@A@@@AACAA@@@A@@B@@@@@B@@A@@@A@@@@@@@@B@@@@A@@BB@BB@@@@@B@@A@@@A@@@A@@B@@@@B@@@@B@@@@@BA@@@A@@@A@@@@AA@@BA@@@@B@@@@@@B@@B@@@@AB@@@@E@@@@@AAA@@@ABA@A@@B@B@@ABABABEB@@@BEDABCBABA@A@AB@@A@A@AA@@@A@@BA@@BAAA@@AAC@C@CBCBEBEFCBCDCBADA@AB@@C@ABC@CBCBEBABA@AA@@@A@@BADCFE@@@A@AA@@AA@@@@@A@C@A@EB@@@@EBABG@K@ABA@ABABABABGDA@CDED@@A@CBA@A@A@ABA@IHABA@CDEDADCD@BCDCBCB@@@@GBMDA@EAA@CBA@@@@B@@@@BB@BB@@B@B@@ADA@@BA@@B@BA@@BC@@BA@@B@@@B@B@B@@ED@@@B@@@F@D@BA@@@@BA@ABCD@@@BA@@@A@@ACAA@@@A@@@C@@@A@A@AA@@A@A@C@A@@@AB@B@BAB@@@@CBA@ABAB@@AB@D@@@B@@@BB@@BAD@B@@A@AD@@@@ABAB@@@@ABABC@AB@@A@@BA@A@@@C@A@A@ABABA@A@@@ABA@@@C@ABC@A@@@EBCBAB@@@@AF@@@@@@@BCBAD@@@BAF@B@@@B@B@B@@A@ADABADCF@@BBJBH@BB@@@@@@B@FFFJBD@B@BBB@DB@B@DBB@D@B@BBDAD@D@B@FD@BD@B@D@BBB@ABABCJ@BABA@C@ABABABADCBBDBBD@DA@AB@BBHJBD@D@@BHBFBB@BD@@@@@BFBF@H@@@@@B@H@F@B@FBD@D@B@DABAF@B@@@DBBBDBB@@@@B@FF@@B@@@D@B@@@B@@ABAB@@AB@B@DAB@BAB@BADE@AB@BA@@D@@@B@@ABC@@@@FCBAB@B@@@B@@BBBB@B@B@D@B@B@B@B@@@B@D@@A@@B@BAB@@ABAB@B@@@B@@AB@@AB@B@@AB@@A@CB@@A@@BA@@BA@A@@@@@A@@@A@@BAB@D@B@F@B@B@@@BAB@@@DBBB@BBB@F@B@BD@BBD@B@FAB@D@HDB@D@BAB@BA@@B@BCDABADAD@F@B@B@B@BAD@B@B@BAB@B@@ABADAB@B@F@D@DBB@B@B@@@@A@ABADCDCFCFADAD@LGB@B@DA@@BAB@B@DA@@@@DCB@@@BAD@B@DACACACC@A@C@CBABAJEB@FCBABA@A@@CCCA@AA@@AAA@@BA@AB@DABA@@@@@AA@ACECCCCAAA@A@A@ABABCBABABA@ABABA@@@@@@@A@@BG@@BA@@BCBAB@BAB@DAB@FAD@BBB@@@B@@@D@@@BAB@@ADG@A@@@AA@@AA@@AB@FCBAB@D@D@B@BADEB@@AB@@AB@B@BABBDBB@BA@@@AB@@A@A@AB@B@@@B@B@B@B@DC@@B@@@FBDBB@BADAB@JEDAB@BADCB@@A@@@A@AAC@A@@@A@@@AB@HC@@B@BABA@@@A@ABA@@@A@@B@B@BAB@BABABA@A@@@A@AA@AAA@@AA@@A@ABABAB@BAB@D@B@DB@@@@BB@@B@BABABCBC@A@A@@AAAAAA@@C@A@C@ABEBAB@@C@A@A@@AA@@C@@@A@@DC@@BEBC@A@A@A@AAA@@@A@AB@@@JGJE@@B@B@@@@@B@@@B@@@@@B@@AB@@@BA@@@@@AA@@@A@@@AAA@@@@@@@A@@@@@@@@@@@@@@@@@@A@@C@AA@@@@@@@@@@CA@@@@AA@@@@CC@@A@@@@@GA@@@@BEBA@@DABA@@@A@@@@@A@@@AA@@@AA@@@A@AAA@@@@@@A@@@@@A@CBABA@@@@B@@AB@@@BAB@@@@@B@@@@B@@@B@@@@@@@@BA@AB@@@@AB@@A@@@AA@@A@@@A@@@@B@@@B@B@@@B@@@B@@@B@@@@@B@@@B@@@@A@@@@@CA@A@@A@@@GDA@@@@@BB@B@@@@D@@@@@BD@@@@@@BB@@@@@BAB@@@@A@@@AB@@AB@@@@@@@BC@ABC@GAC@CAAAA@@AAAAC@A@B@@@B@@A@@@@B@@@@AB@@@@@@A@@@@A@@A@@@ABAB@@AB@@@@@BBBDB@BBB@D@@@D@DBDAB@AC@A@@@AAAAA@CBAB@B@@D@B@@BBBBB@@BB@D@@A@@@A@AA@BA@@@@@A@@@@@A@@@AACAAB@@AB@@@B@BBBB@@@B@@@BB@@ABB@BBB@@B@@@BA@@@@@A@@@@BABB@@BA@@BA@@@BB@@@@@@@B@@A@A@A@@@@AA@@@@BA@@@@B@@@B@@@@@BA@@@@A@@A@@B@@@@A@@@@@@@@@@@@BA@@@@@@B@@@@@BA@@@A@AA@@@@A@@@@@@@A@@@A@@@@@@BBBA@A@@AB@AA@@AAAB@A@BA@@A@@@@GB@@@C@@B@@AB@B@BA@@@@B@@@@A@A@C@AID@A@@@A@@@AB@@@B@@@@@B@@A@@@@B@@@@@@AAA@@@A@CKAABADCCCADCBAB@@@B@BBNA@CB@@A@A@C@@@@BA@A@@@A@@B@AA@@@@@@@@@@@A@@@@@@@@@@@@@@@A@@@@B@@@@A@@B@@@AA@@@@@@AA@@A@@B@@@@@@@@@@A@@@B@@BA@IF@AA@@@@B@@@@@@ABAA@BC@A@@B@@@@@@@@@@@B@@B@@@A@@B@@@@@@A@@B@@A@@A@@A@@@@@A@@@B@AAF@CEA@@AAA@@@@AAA@@@AA@@A@BA@ABABA@A@@B@@@BABAD@DA@@@@BAB@BAB@DABAB@BAD@DABAB@@AB@DABABA@@BABADABAAAAAAAA@B@BABABAAAAA@@@@AA@@@AB@@@@@B@@A@@AAA@A@HGLKGAA@EAGA@@@BA@@@@@BB@@B@@@@@B@AB@@ABA@A@@@@@@@AB@@@B@@@@@B@@@@@@@@A@@@@@@@@@@A@@@@@@@@@@@@@@A@@@@@@B@AAB@@@@@@@@A@@@@B@D@@@@@B@@AB@@A@@@@@"]],
                    "encodeOffsets": [[[106493, 31490]], [[106460, 31465]]]
                }
            }, {
                "type": "Feature",
                "id": "510114",
                "properties": {"name": "新都区", "cp": [104.158705, 30.823498], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@@@B@@@B@@@@@@@@@AAA@AA@@C@A@@@@@AB@B@@ABABA@E@A@A@@B@B@B@BBD@BB@@B@BA@@BABABGDABA@@@@B@B@B@BBD@@@B@@@@CBCBABAB@B@B@BB@BBB@FB@@BB@@ABAB@@ABA@C@A@ABCAE@CACACA@A@C@AAAC@AB@@AB@@@@A@AB@@@@@@ADC@CAE@EBABC@@@A@A@@@@B@@@B@BBHBD@BBB@@@BA@@BA@ABA@@@A@@@AAACCAC@@DBH@B@@A@C@@@CBA@AAA@@@@@AAC@CCAACAA@@@@BCHAB@BB@@BAB@@@@BB@@B@@A@B@B@B@BABA@@@CBE@G@I@C@E@A@AA@@AACAA@A@@@A@ABCB@@@@@BD@@BB@@@B@FBB@@B@B@@CBBB@@@B@F@@AP@D@DAB@BABA@@BC@ABA@ABA@IAC@AB@@C@CBAB@BA@@B@@@BB@LJB@BB@B@@@B@B@BADCBABA@ABEBG@C@CBABC@ADA@@@A@@@@BA@@B@BAB@@AB@@A@A@A@@@A@AAA@AA@@A@@@A@@@AB@B@@BB@@B@BB@@@BB@@@@BA@@B@B@@@@AB@@A@@@@@AA@AAA@@@AA@@@A@A@@@@B@B@@BB@@BB@@@@B@@B@@@@@B@@@BA@@BA@@BA@A@@@@@A@@CAA@@@@A@@@A@@BA@@@EC@@AA@@@@@@@@@@A@A@A@@@A@A@@A@@@A@@BA@AAA@@AAA@AA@@A@ABA@ABABAB@@A@@@AA@@@A@C@A@A@AAA@AAA@AA@AAAA@A@@@AB@@A@@BAD@@@DCBAB@@@B@@B@@@DBB@@@@B@B@DADA@ABA@A@A@A@A@A@AAA@ACGA@BA@@@@@@@@B@@B@@@@@@@@@@@@@AB@@@BA@A@@@@@@@@@@AA@@@@A@@@@@@@@B@@@@@@A@@@@@@@@A@@@@A@@@@@@@@@B@@@@@@@@A@@@@@A@@B@@@@@@@B@@A@@@@@@@@B@@@@@@@B@@@@@@B@@@@@@@@@@@@@@@B@@@@BB@@@@@@@@B@@@@@@@@C@A@@@@@@B@@@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@BB@@@@@@@@@@@BA@@@@@@@@B@@@@@@@@B@@@@@@@@@@@B@@@@@@@B@@@BB@@@@@B@@@BB@BB@@BB@D@B@B@@A@@@@@@@@@A@@@@@@@A@@B@@@@@B@@@B@B@@@B@@@@@@@@@@@@@@@B@@@@@@B@@B@@@@@@@@@@@@@BA@@@@@@@A@@A@A@@@@A@@A@@A@A@@B@@@@@B@@@@@@@@@@A@@@@AAACEAAAC@@AA@A@EA@@C@A@CAAC@A@@AIAC@A@@@@@@@@CCA@C@A@A@CB@@@B@@A@ABCBABCBABABABA@ABGB@@@@AB@@CBB@@B@@@@AB@@A@@BA@@@@@A@@@A@@@@@A@A@@@IFIH@@A@@B@B@@BB@B@B@B@BADAF@@CD@@@B@@@DB@@BB@B@D@@@BAFABAD@B@D@@@BBBBBB@@@B@BADADABABA@@@AA@@@@CAA@C@A@ABA@ABAB@B@BB@@BB@BBB@@B@B@@@BABABABA@ABA@A@@@@B@@AB@B@B@@ABABA@@@GDA@@B@@@B@@@BBD@B@B@@@BA@CDABA@CBIFA@CBABA@CAEA@@A@@@CDA@A@A@A@@@A@A@@B@B@BA@@B@@ABA@CAAAABA@A@@BA@@BA@CFABA@C@C@A@ABEDA@@BB@@BB@@B@@@BCH@BA@AB@@C@@@A@@@A@AAC@EBA@CBA@ABA@ABAD@@AB@@AH@@@B@@@@@@ABAB@BABABABADAB@B@B@BBBDBDDFDBDB@@B@@@@ABCBA@@BAB@@BB@BB@@BDBDD@@@BABABEDA@IFABAB@D@D@BDDDBDBCBA@C@AB@@A@CD@@@@CBA@A@AB@@CBA@A@KHC@CBEBEDCDCDAB@B@BB@BAB@DABCDAD@D@F@J@F@BBJAH@FAB@B@B@B@@@DABADCDAB@BAD@@@B@@B@@@D@BB@@@B@B@DCBAB@B@BBBBBB@B@B@B@B@@@@@F@B@BBBBBHBBBBBHFBBB@D@D@B@@@D@BBB@B@BBB@B@B@@@B@BAB@DA@@B@BBB@B@B@@@@B@@@BAB@@@@B@@@D@B@D@D@B@BBB@@@BB@BBDB@@BDBB@BB@@B@@@BBDBBBHHBBBBDBB@H@@@@@B@B@B@BBDBFF@BBBB@B@DAB@@A@A@C@ABABABAPGBCB@@A@A@A@C@A@ABABC@@DEBC@A@E@A@AAC@A@A@ABABAFEDADCFAFAJ@B@HAHAFAB@D@JBPBB@DADADAD@@@D@JDDBF@D@D@DBB@@@@@@@D@B@@@B@FABAB@FAB@F@B@@@BBBD@BBB@@D@B@B@@@B@DBB@@@B@BC@@BCBA@AB@BAB@D@BBBBB@@@D@BABCDAB@B@B@A@@C@AAE@EACCGAAACCCECC@AAC@A@AA@@@A@A@E@C@A@C@AAC@AA@@AA@@@G@AAA@@AA@@A@A@A@@BABAFABA@@@@@@@A@@@@@@@A@@@@AA@@@@@A@@@@@@B@@A@@@@@@@@BA@@@@@@@A@@@@BA@@B@@@@B@@@@B@@@@B@@B@@@@B@BBB@@BDBBBBBBF@D@D@B@D@DAB@BABADCBA@@@@BAB@BBB@B@@@BBHHBBBBB@@@B@@ABA@ABA@@BA@@BBB@BBBBB@B@B@B@B@BADAHABAB@BADADABAB@@ADAFGBA@A@@AA@AAA@@@A@@@A@A@@B@@@@@@@@@@@B@@@@@@B@@@@@@@@@@@@@@B@@@@@@@@@B@@@@A@@@@@@@@@A@@@@@@@@@@B@@@@@@@@ABA@@D@@AB@@A@@@@@A@@A@@@A@AA@@A@@@@A@@@@@ADCB@@A@@@@AA@@A@A@@@ABIFA@A@@@@AA@CIACAC@A@CBABCBCB@HEBA@ABC@@@A@@@A@AA@@ABA@@B@@@D@F@F@B@BA@ABCBA@C@ABABABA@AB@@A@@@AA@@@A@@A@A@@@A@@BA@@B@BAB@@ABC@ABE@CBABADA@@DABABA@A@AEM@AA@@AEAAAA@@AA@@A@A@A@C@ABADCBCDABCNED@BABAFC@AB@AB@@@@@B@@@@B@@@B@@BB@@@B@@AB@@@B@B@@@BB@@BB@@@@@BA@@B@@@B@@BB@@BB@@BB@@B@L@F@D@DAB@BADC@AB@B@B@B@BBHJB@@@B@@@@@BE@A@@B@B@@@@@B@@CBA@@D@B@@@@@BAA@@@CC@@@A@A@@@@BCBE@CBE@GCBC@A@A@AA@A@G@A@@@AA@IBAB@@A@C@IDC@C@A@A@A@ECAAA@A@KDCG@@@@AA@@@@@BA@A@@@AB@@A@@A@@@BA@@A@@@BA@@@@@A@A@@@@BA@@@@B@@A@@A@@AB@@@@BB@@@@@@A@@BA@@A@@A@@@AAA@@@@A@@A@@@A@@@@A@@B@@A@@@A@@@@A@@AB@@A@@AA@@AB@@AAB@AAB@A@@A@@AA@A@@@A@@@@AA@@@@A@@AA@@@A@@AA@@@BA@A@@B@@@@CBBB@BA@@AA@@@@@@@E@AEB@B@AGD@@@AA@@A@@@@@@@A@@@@AA@@A@@@AA@@@@@@@ABA@@B@@A@@@@@@@A@@@A@@A@@@@BA@@@@@A@@@A@@@@@@A@@@@B@@@@A@@@E@@@@@A@@@@@AABA@@@@@C@A@@A@A@@@A"],
                    "encodeOffsets": [[106750, 31415]]
                }
            }, {
                "type": "Feature",
                "id": "510116",
                "properties": {"name": "双流区", "cp": [103.923566, 30.574449], "childNum": 2},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@@CFCKCKCEJHFFBJA"], ["@@@C@A@@@G@CAA@@@ACAAA@@CCECAA@@CAAAEAGAAAAAA@@@CC@@AAIA@@C@C@@@CB@@CBAD@D@@@B@@ADABA@A@CBODCB@@ABABAFABADABCBC@B@EACAA@AB@@A@@@@B@B@@@BBB@@@BAB@@ABA@A@CACAC@@@CB@@AB@BCDB@AB@@ADAD@@ADA@@@A@AA@@CC@@AAC@@@A@@@ABAB@@AB@B@@@DAD@@A@C@@@KC@@KCEC@@C@@BAB@@@@@FAD@BC@AAEC@@CAA@CB@@C@@@CA@@AA@@GC@@CA@@GA@@EBA@A@@@ABCD@@ABADCDCDCDA@@@@@@@AB@B@DABADCB@@ABCB@@CBADADAD@F@@BBBN@@@D@BABA@CBABCBADABAD@DCBADCBC@C@CBCBCDCDABABCDEDAF@BCHABCD@@AFAD@B@DBBDBBBFD@B@@@B@@CBEACBEBC@E@CBICA@@DDLFNFJBLBFBBBDBHBD@DB@@B@BAH@J@BBB@B@B@DAHAH@BAB@BABA@ABCB@BAB@BAD@FABADCBABCDCDCDABCBAB@B@FFH@BBFFJ@BADABCDADABAJAHADCFMJABEBC@C@C@A@AACAA@@@@@@@A@@@@@@@@@@@@BA@AJ@@AD@@@@AB@@@@ABEDCBCBGBC@G@A@C@CAGAGAC@E@EBC@A@A@@@CCGAE@@@@BAFADADADBD@DAB@@ABABAB@@@BAF@B@@ABCB@BAB@@ABCL@BBD@HBF@@FH@BBB@BBD@FBF@@@@@F@DAF@D@B@B@BADABABADINIJCDCJADADCDAD@@@B@D@DAHINFD@@@@B@B@B@B@BABADEBAD@DALAF@@@@@F@D@F@B@B@B@@@@@BAF@FAB@@@B@BBBBBBB@BBB@DBB@BB@@@BAF@FADCD@B@D@@@BBBB@B@B@DADCBADCBAB@B@BB@@BB@@@DAB@B@D@@@DAD@@@@@@@B@@@@@BBB@BB@BBDBBBFBBBBBBBBDDDDLBF@@B@BADCBA@A@CCI@A@ABC@@@@B@@BDBB@B@DABAB@DADBB@@B@B@@CB@B@BBBDBB@BB@DAD@DBDDBDB@@D@HAF@B@B@B@@@@@B@@@@@B@B@@@BAB@@@@@DDB@@B@@B@@@@@BAB@@AB@@@BB@@@@B@@@@B@@DA@@B@B@@@@AB@@ABA@A@@@A@@AA@@@AB@@@@@B@@@B@@@@@@@B@@@B@@@BB@@BB@@B@@@@@B@B@@@B@@@B@@@B@B@@@@@BAA@@AB@@@@@@A@@@@B@B@@@B@@B@@@@@@@B@@B@@B@@B@@@B@@@@A@@B@@A@@@@B@@A@@@@@@AA@@@A@@B@@A@@BA@@@@@@@A@@AC@@@AA@A@@A@@A@@@@A@@@@@A@ABA@@@@@@@@B@@@@@B@@@B@@@@@@@B@@@@A@@@A@A@A@@@AAA@@@@@A@@@@@@@A@@B@B@@@@AB@@A@@A@@C@@@@@A@@@@BAB@BA@@@@@A@@@AB@@@@@BAB@BA@AB@@@BA@@A@@A@@@@A@@@ABA@@@@@@A@@@@@@BA@@AA@@@@@AA@AA@@A@@A@@@ABA@@@@@@@AAA@A@ABC@A@A@AB@@@B@B@@@B@B@@@B@@@@ABA@A@@B@@@@BBB@@B@@@@@@@@A@@@A@@@A@ABA@AA@@AA@@A@@@A@@BA@@@@@AAA@A@A@@@A@@B@@A@@@A@@@A@@@AAA@@@@@A@@BC@@@@@AA@@@@@@BA@@@ABA@B@AA@B@@@@@D@@BBC@@B@@@AA@@BAB@A@@@@A@AC@@@AB@@A@@@@BA@BBA@@@@B@BA@@@A@@@@@@@@B@@@B@@@@@@@@@@AB@BA@@@@@@AA@@@A@@@@BA@@B@B@@@@@@A@@A@AA@@@A@@@@BADADAB@B@D@B@@BB@@@@@B@@A@B@@BB@B@B@D@B@@@B@@B@BD@@@@B@@@@B@@B@BB@@@@@@B@DBB@@B@@B@B@BAB@DADA@@DAB@@@DAB@D@@@@EBABB@@@@@@@B@@@@@B@@@@B@@B@@@@B@@BB@@@@B@@BB@@@@@BA@AB@@@@@@@B@@@@B@B@@@D@BAF@B@@@BA@@B@BABABABABC@@@AB@BAB@B@B@BBB@@@@@B@@@B@@ADA@CBA@@@@@A@@@C@A@ACGCAA@A@C@@@AA@A@@@AEGAC@IA@@ACAAC@@@C@@@AC@C@CAAAACBAB@B@@@FB@@B@DACEB@DABCAAHAB@F@FAB@B@FBB@@CBAB@B@@@B@D@BB@BBD@PAD@BBB@@B@B@FADADEDADC@@HEFCJFB@BBBB@@BB@@BBB@B@@@D@@@D@B@@BBB@@@B@@@@CB@BABABAD@BA@A@@B@@@B@BBBB@B@F@BBB@@@BBBB@B@@@D@BABABCBAB@B@@BBBDBB@B@BFBBBB@B@@@BA@@B@B@@@B@@@@@BBB@JDB@D@B@B@D@BABAD@@ABABC@C@@BC@@@A@@@@@A@@A@A@@@@@A@@@AA@AAA@@AC@@@AAA@A@ABA@ABAB@@@BABA@@B@@B@@B@B@B@@@@@@B@@@B@@@@B@@@@@@@@@B@@@@@B@BA@@@@B@@@@@@@BB@@B@@A@@@@@@B@@@@@@@@@B@@@@@@@B@@@@@@A@@@@@@@@@@B@@@@@@@B@@@@@@@@@@@@@DD@DCDA@@BC@@BA@@@@BB@DL@@BB@@B@@@BBD@@@LD@@BBB@B@B@B@B@B@BABA@@BEBAB@@@B@@@DDB@@@B@@@BA@@BA@AB@@AAA@AAE@A@@@A@A@ABABANIB@DAF@B@DAB@@@BA@@BA@ABA@A@@BC@AB@@AB@@@B@@BB@@@@@B@BA@@BA@@BA@@@ABABC@CBE@@@@@@@CBA@AFEFK@@DE@A@@@CB@@@@@@@@@@@B@@@@@@A@@@@@@BB@@@@@A@@BA@@@@@@@@@@@@A@@AB@@@B@ACB@@@@@@@@@AA@@@@@@B@@@@A@@@@@A@@@A@@BA@@@A@@@A@@@@@@@AAA@@@@@@@@@@BA@@@AB@@@@@BB@@@@@@@@B@@@@@AA@@@AA@@@@A@@@@@@B@@@@@@@@@@A@@@@B@@@@@@@@@@@@@@@BB@@@@B@@@@A@@@@B@@@@@@@@@@@@@@A@A@@@@@B@@A@@@@@@A@@@@@@@@@@@@@@@@@A@@A@@@@B@@A@@@@A@@B@@@@@@@@A@@@@B@@@@@@B@@@@@@@AB@@@@@@@BA@@@B@@@@@B@@@@@@B@@@@@@@@A@@@@@@B@@@@@@@@@@@BA@@@@@@@@@@@@@@@@@@@@BA@@@@@@B@@B@@A@@@@@@@@@B@B@@@@@@@@@@@@A@@@@@A@@@@BB@@A@B@@@@@@@@@@@@@@AB@@@@@@@BA@@@@B@@BB@@@@A@@@@@@@@@A@@@@B@@@@@@@@A@@@@@@B@@B@@@@@@@@BAA@@@@@@@@@B@B@@@@@@@@@@@@A@@@@@@@@@@@A@@A@BC@AB@@ADAD@HAD@FA@@@@B@FANAAC@AAABABCB@DAB@DBJBDBJAFAB@@A@@@AAA@CEGCC@AEECISS@@@AAA@@DE@A@@@C@@A@A@CAG@C@A@C@CAA@CEEEAA@CBC@IAG@CAAA@AAC@CAC@AA@A@C@ABA@C@C@G@EAA@A@@CCAAEECCEIKKAAEEAC@A@A@EDE@A@C@AAACAACEKC@A@AA@@@@ACAAACEEAA@@AACA@A@ABEAEAGACACB@CC@CAA@@CA@@CAAC@A@@@A@C@AAGAA@@ACAAAACACAACAACK@AA@AACC@@@A@CAA@C@A@E@B@C"]],
                    "encodeOffsets": [[[106455, 31040]], [[106651, 30981]]]
                }
            }, {
                "type": "Feature",
                "id": "510121",
                "properties": {"name": "金堂县", "cp": [104.411976, 30.861979], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@BCDAB@BBDFFBBBD@B@@ABADA@A@A@@BC@A@MAA@@AAAC@@@CACACCECEEE@A@C@@BC@A@A@@@AA@E@CA@A@@@C@A@@AAC@A@@@@@@@GBE@A@CAA@EAECEACACDCBCBCBA@CBGBG@A@EAC@A@AAC@C@A@E@C@C@A@AAECCA@A@A@CBEBG@A@C@@A@@@A@A@@@A@@@AAA@@A@BA@A@@@AA@@C@A@AAA@A@@@@BA@@@AA@@A@ABA@@@AAA@@@@@A@@D@@A@@AC@ACCA@@A@@@@@AC@@A@A@AAA@@@A@A@E@E@A@ABAB@@@B@@B@DDDBDB@@@BA@@@@BA@A@E@@@AB@@@@BB@@BB@@BB@B@@AB@@AAA@CA@@AB@@BD@@@BA@CD@@@BBDIDGDQDCBA@EBEBA@@B@B@D@@@D@DBD@B@BABAB@DAH@BAFCDA@CBGDMBCBCBCBCBE@QHA@CBEDEFAF@D@FBF@BBJBD@D@B@@BBLFBBFHFJBB@B@B@BAB@@E@A@ABCB@@CBC@ABC@A@CBA@@@@BCD@@A@A@@@@D@@A@@@A@@@@@@@@@@@CC@@@@@@@B@@@B@@@@A@@B@@B@@@@@@B@@@@C@@@@@A@@B@AA@CA@CA@@@@@@BAB@@@B@@@@@BA@@@A@@@@@ABA@@@A@@@A@@E@@@@EB@@@@@@@A@@AACA@@A@@@@@@B@@AB@@@@BF@@@@A@A@A@A@ABA@@@ABC@@@@@@B@B@@A@EA@@@@@B@@@BA@@@@@A@@@CDABAA@@AA@@@@AB@BA@@AAAA@A@@@@@@C@@CAA@A@@B@B@@BD@@@@A@CBA@BBA@C@CBA@@AA@@ABAA@@AGB@@@@@B@B@@@@@@@@AAA@@AAB@@@@BD@@CB@@AB@@A@A@ADILCDCBAB@AA@GAGC@AA@AB@@EJEF@BAB@F@@@BA@A@GCCCA@AC@C@EAC@AACA@@AABC@IDOFAAA@@B@DA@@@AA@AC@@@@A@@@@@ABAB@BA@@CA@AAA@@C@A@@DA@@@CA@A@@BA@@A@@@@@ABA@A@@@AD@@@@@BBAB@@@BB@@A@@@A@G@@@AB@@A@@@@@@A@C@ABA@@B@B@BA@@AA@@E@ABA@A@@A@A@@@@AB@@A@@@BA@AB@BA@@@@@@@@@A@@A@A@@@@A@@DE@@AAGAE@A@C@AAACCEAA@@A@GEA@AA@@@A@E@@AAA@C@GDCBAA@A@C@A@AA@@AA@A@ABGCC@A@A@EDCBC@AAGAAACAMCC@M@A@ABABADA@C@AAICC@A@A@ABGFABA@E@C@ABGBHDDB@@BB@BBBBD@B@@@F@@@BBB@BB@B@B@@ADAB@BAB@B@B@DDB@BBDDFD@@@@@B@D@B@BBB@BBB@BDB@@BBBBBD@B@F@B@D@D@D@DAD@DAJAB@@ABA@AAECCCACAAAMAA@AAAA@@AA@EAA@@@A@@B@@A@@@@B@BA@@BB@BH@B@F@B@D@@@BDHDJ@BBBBBDD@@@B@B@D@B@@@@B@@@BAB@@AB@@@D@@@@@@@BC@CBA@ABAB@BAB@BAB@B@BBB@@@BB@@AB@@@@A@C@@@A@@B@@@@BB@B@@@BA@CF@@@@ABABAB@@A@@B@@B@@@B@H@HADAB@JGLCLCBAB@BBD@B@BBBBB@@B@@@BA@AFA@@B@B@FBD@F@BB@@BPB@@B@BB@@@B@@@B@BADAB@BABA@CBABC@C@A@C@@@A@@B@B@@@BFFBBDHDD@FBB@BAB@DAB@BABA@@B@@@B@@BBD@@@B@@@@B@B@@@B@BABABCBA@ABC@@@A@@@@@@A@@BAB@BA@@@A@@@AEACAG@A@C@A@AB@B@B@D@DBD@@DBDDBBBBBB@@BB@BDD@B@B@@@BCDAB@DAB@J@H@D@BAHAD@DBB@DBDBB@DAB@DCBA@ABIBC@C@AAOMAA@@@@@@A@A@A@CBGJABA@CBAAA@CGCAAAC@C@ABCBABELAB@BB@@B@BB@JFBBBBB@@BBB@@@B@@A@@@@@@@EC@AA@@@AAMAC@AAAACCCAACC@@@@@@@C@C@A@CBOFCBA@A@A@CAC@CAABC@ABABABAB@B@B@@@B@@BBFBB@@@@B@@@B@B@B@@@BDF@@@B@@@BA@A@CBA@CBAB@@@BAB@B@@A@A@@@AB@B@@@DAB@BABCF@BAB@@BB@BHL@@@B@@@B@@A@AD@@ABCH@BAB@@A@A@A@@AA@@@BAAA@A@@EEA@AAA@A@@@A@@@@BAB@B@B@BAB@BAD@B@B@B@BBBB@B@J@B@B@B@@@FBBBB@DAF@B@D@BABBB@BB@D@J@@@BBD@BBBB@@@@BHFBB@@@B@DAH@BAD@BADAB@BCBA@E@A@AB@BABA@ABA@AAECC@AAA@A@ABA@@BAD@BAD@BADABGJ@B@BB@@BBBBB@@@B@@A@@@ABA@A@@@@@@@@@BB@@BDBHHD@BB@@B@@AB@B@BBHB@DHDHBBBB@BBB@B@DDBBDDBDA@@DA@@BCDAFAB@BA@CBA@@@A@@BCBAD@DB@B@DBBBDBDBB@DBD@D@B@BB@BBD@@AB@@@DC@@BA@@BC@@D@@@HBFDFBHB@@FB@@DBD@FADAF@@ABB@BB@B@@@@@B@BAB@DAD@B@B@@@B@@@B@@BB@@B@DBB@@@@BAB@@@B@B@@B@@@B@BB@@@@@D@@@@@@BB@@BB@B@F@D@@BB@@@@@BABA@AB@F@B@B@@AB@B@@ABAD@DAD@BBB@@@@A@AB@B@@AHC@AB@DAB@@@@ABA@@BA@@DBB@BB@@BAD@BAD@BA@@B@B@BBFBBABAB@BCBC@@DCBA@@@@DCDADAB@JCBA@A@CGW@I@C@C@CAACAC@@AAAA@AA@@AC@@@A@A@A@@@ABCB@B@B@B@D@DA@@D@DA@@F@@@HAD@@@FA@AFABA@@DAHA@@HAHA@@DAF@@@FA@@BADA@BDC@@BADA@@D@B@DAFAD@DBDBB@D@B@@@B@@ABABABA@@BAD@@AFA@ABA@ABC@C@A@ADAB@D@D@F@DB@@FDDB@@D@@@D@@@D@DA@C@@BABCBC@CB@BA@AB@@ABAD@@@FAFA@@F@D@@@D@@@B@DADAD@DA@@BAB@F@DAH@@@D@D@@@DCBC@@DCD@F@B@@@DA@@LB@@D@D@D@@ADABA@CAAAAAAAC@@@A@@BC@@@E@@DABA@A@@DC@@BCDC@@@@BEFQBE@@@@BC@E@ABA@CAA@@@@A@@@A@AB@BA@@@@AAAB@ACBCBA@@@@DA@@D@@@FBFDBB@@BB@@BDDBDBDA@@DA@BBCBC@EDI@EBC@@BC@@BCBCBADC@@DA@@@@BA@@@CAC@AAA@@ACAC@@@A@@BA@@B@@@DA@@BABABA@A@@AAAC@ABABAA@BADAD@DBD@D@B@BABAB@DBB@D@@@BAAA@C@@@C@@@CBA@@DB@@DBDBD@@@F@B@FAFB@@B@@@D@FAD@@@BC@@@C@@CCCCAA@@AC@C@@@C@CBC@@@C@C@@@C@@@@ACBC@@BAF@F@F@D@@@DA@@BABA@@BE@@@A@@DA@@DC@BBCBC@@@C@@BC@@@CBC@@DC@@@A@@DC@@@ABE@@@CBC@@@C@A@ABCBA@AAG@C@@B@@AB@BA@@D@B@@BBBBDBB@BB@BBD@B@DAB@DBB@B@BB@A@A@AFGDABA@C@C@A@@AIEGCCCCC@AA@@@AAA@@@A@@@C@A@@A@ACAA@@@@@A@@A@@@@A@@@@@@@A@@B@@@@@@A@@A@@@@@@@@A@@@@A@@@@@@@A@@@@@C@@@@@@@@@@@AA@@@@@@@A@@@A@@@@@@@A@@@@A@@@A@@A@@A@@A@@@@A@@@@@@@@@@@AA@@@AAA@@@@@@@@@@A@@@@@@@@@@A@@A@@A@@@@@@@@@AB@@@@A@@AA@@@@A@@A@@@@@@@@@@BA@@@@@@@@@@@@@A@@@A@@@AA@@A@@@@A@@BA@@@@@@AA@@@@@@@@@@AB@@@@@@A@@@@A@@@@@@@@@@@@AB@@@@@@@@@@@@@AA@@@@@@@@B@@@BA@@@@@A@@@A@@A@@A@@B@@AB@@@@A@@@@@A@@@@A@@AA@@@@@@@@@B@@@@@@@@@B@BA@@B@B@@BBB@@@@B@@@@@B@@AB@@@DB@@@@@@@B@@@@BB@@B@@@@@BB@BB@@@@@@@B@@@@@B@@AB@@A@@B@@@B@@@@@B@@@@@@B@@@BB@@@@@BAB@@@@@@@@@@B@@@B@@@@BB@B@@@@A@@@@B@B@@@@@B@@@@B@@@@@@@DC@AB@B@@@B@@@@B@@@@@@B@@@@@@@B@@A@@@A@@@A@ABA@@@@@@BB@@@B@@@@@@BBB@@@@B@@@@BB@@@@BBB@@@D@@A@@@@@@AAB@@@@@BA@@@@@A@@@@@AB@@ADABA@@BA@@BCB@@ABA@C@C@A@ADEFCBC@@B@DAB@@ABA@A@C@AAA@A@@"],
                    "encodeOffsets": [[107393, 31287]]
                }
            }, {
                "type": "Feature",
                "id": "510129",
                "properties": {"name": "大邑县", "cp": [103.511865, 30.572268], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@B@@@B@B@@@B@B@BB@A@@BA@A@@@A@C@CB@AC@C@ACEAA@@AAA@A@CBE@C@@@E@@@IA@@A@CBGBC@EAC@CACACBA@C@A@ADCCA@C@C@A@CBCBCBADCDCBC@CAAAACCCA@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@@AA@B@@@@@@@@@B@@A@@@@@@@@@@@BB@@@@@@@@A@@@@@@@@@@@@@@@@@@@A@@B@@@@@@@B@@@@@@@@@@@@@@@@@B@@B@@@@@@B@@@@@@@@@@@@@@@@@@@@@@BB@B@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@B@AB@@@@@@@@@@@@@@@@@B@@A@@@@@@@@@@@@@@B@@@@@@@@A@A@@B@@@@@@A@@@@@@@@@@@A@@@@@@@@@@@@@@@@@@@@@@@@@@@AB@@@@@A@@@@@@@@@@AB@@@@@@@@A@@@@@@@A@@@@@@@@@@@@@@@@B@@@@A@@@@@@@@@@@@B@@B@@@@@@@A@@@@@@@A@@@@@@@@@B@@@@@AA@@@@@@@B@@@@A@@@@A@@@B@@A@@@@@@@@@@@@A@@A@@@@@@@@@@@A@@@@@@@@@A@@B@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@@@A@@B@@@@@@@@@@@B@@@@@@A@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@@@@@@@@@@@@BB@@@@@@@@A@@@@@@@@B@@A@@@@@@@@@@@@@@@A@@@@@@@@B@@@@@@@@@@@@@@@AA@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@@@A@@@@@@@@@@B@@@@A@@B@@@@@@@@@@A@@@@@@@@@@@@@@@@@@B@@@@@@@@@@@@@@@@@B@AB@@@@@@@@B@@@@@@@BA@@@@@@@@@@BA@@@@@@@@@@@@@@@@@@@@B@@@@@@@@@@A@@@@@@@B@@@@@@@@@B@@@@@@@AB@@@@@@@@@@@B@@@@@@@@@A@@@@BB@@@@@@@@@@@@@BA@@@@@@@@A@@@@@@@@@@@@AB@@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@A@@@@@@@@@@@@@@@@@@@@@@@@@@@@@AB@@@@@@A@@@@@@@@@@B@@@@@@@@B@@B@@@@@@@@A@@@@@A@@@@B@@@@@@@@@@@@@@@@@@@@@@A@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@@@@B@@@@@@@@A@@@@@@B@@A@@@@@@@@@A@@@@@@@@B@@@@@@AB@@B@@@@B@@@@@@@@@@A@@@@@@@@@@@A@@@@@@@BB@@A@@@@@@@@A@@@@@B@@@@@@@@@B@@@@@@A@@@@@@@@@@@@B@@@@@@@@@@A@@@@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@A@@@BB@@@@@B@@@@@@A@@@@@@@@@@B@@A@@A@@@@@B@@@@@@A@@@E@IFEFIDIBIBICA@AA@ABCACACAAAAA@@@A@@BAD@BAB@@CBS@CBA@ADAFA@EBA@@@@@@B@@BJ@BABAFAFAD@D@BAB@@ABEDIHADEFIJCFCB@BC@MFCBCBABE@CBA@@@@BCD@@ABAD@@ABEB@@@@CAAAA@@@A@@BEBCBCBI@A@A@A@AA@ACAEEAAA@@@A@@@ABC@CFEBUPGBE@EECCEIECIAG@IDKBG@MAKCCCAC@CBELIBEBGAIEICAC@ONGDIBEBEBEAKCCC@CCACACACA@CBEAECCE@CBE@EDCDEDABC@A@KGG@I@EBEDCDAF@NABCBGAGAA@CBCD@BADCDABA@CAEAEAC@E@OAKBKDAFBFDJHRDTCLEFABKJEHAH@H@DEBC@ICGAEDGDCHCH@FBD@VBFDHFFDJ@LCL@LBJAJCFEFEFAFAHEFCBI@I@KDIFEHGVEDGFGDEFAFDJ@HEFCBI@yYIAE@AB@F@DDV@BCFCFSTGDGDIHCFOZELAJBJCHHBB@D@BBB@BBBBB@BBBD@B@B@DBBDBD@DBDADBLDBBBBLFNFP@P@DBPLPJN@F@B@DAFCNGFAHCJEPGLCBAB@@@ACDC@E@E@CBEDEHCDAFIFGDAFAF@HBFCFGJGNGBEFEDCFAPCJ@HAFADCDCF@HBHFLLRPNHHDF@FAFAFGBCBEBEBCFAJBDABEDEBADAFKDI@EBCFAD@JBFBFAJCBAFBHHDFBBHDDBHFBDD@BBDAB@@ABOBABCFAHIFEFAH@DBBD@J@F@BFDJHJHJJDBF@D@HCFGDCFCHAHANBPHNFNFFAFCLIPOFAD@DBFDDBF@FCBCBAFAN@FBDFDD@@B@D@DEFAB@JADADADCBAF@H@F@FEDABABCBC@A@ABABCBADBFBDBBBD@D@JIBADCNIDADADCB@BA@@@ABABCHGHIBCAAAE@C@A@E@C@UBCBADEBA@CAC@CDEDABCBA@CB@@@BA@A@CAE@A@ABC@C@A@@@@@@@C@A@@@A@@@@@A@@AA@@@@@A@@@AB@@@B@@A@@@@@@@@AA@@@@@@AA@A@@AAB@@CB@@@B@@@F@BA@@AG@@AA@ACAC@AA@@AAACCMAE@EAA@ABEDGBEFGBCBC@C@@CEA@AAAAAAAC@CBEDEBABADAB@JDF@D@D@DAFAB@D@H@H@DAD@D@@@B@BABBBBBBPLDDD@NDD@BA@ADABABAAAACACAC@ABCBCBAB@F@BA@A@@CACAAC@A@CB@@C@CAA@AACB@FADBBBJDDBFHFDHLFHDHDFDBF@DBFDDBBFDBBBDBDBD@D@DEBBBB@BBBFDD@DABBF@@D@D@@@D@@JDD@BABAD@D@DBBBDDBBB@B@DABABABCDAB@DE@@NKNILGDCHO@ABC@@HMDEBGBA@C@AFMSCGBC@AACAECCI@C@EAC@C@CAACAAAAA@AAGBI@A@CACCAACAEAECCGAEC@@@@CACC@A@ABABA@@CAAACAECGEABADCDIHADADBBBBBBADABGDCBCAC@C@A@CBABABCDABCDCDA@@@ACCAC@CBCBCDEFGFE@CAC@AAECACA@CCEECACAC@ABABCB@@A@AEAGCACACAAA@ABABC@@@@BE"],
                    "encodeOffsets": [[106109, 31175]]
                }
            }, {
                "type": "Feature",
                "id": "510131",
                "properties": {"name": "蒲江县", "cp": [103.506498, 30.196788], "childNum": 2},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@A@@@A@@@@AABB@@@@@B@F@B@HBDB@@@B@@ABAB@@@@A@AB@@@BA@ABBDBB@@BBB@DA@BBB@CFKDCBAFAFAHEDC@CBA@A@@BC@CACAECECCCAEAE@A@GBA@CDAFEHAFABAD@B@BFD@B@BAB@@ABCB"], ["@@@A@C@AAAECC@A@A@GNABCAA@ACAAEACA@ACCCCAAAAACCCAAAAAAECG@CBA@CDCBAF@HA@ABGDEBADADCFCBAB@B@@@BBB@BABCD@BADCFABCBE@CB@B@B@D@@FDJDBDBDBFB@ADCHABBB@DDD@B@@@@@@@B@@@B@@@@@@@@CFCBG@A@CDCD@F@BBBBBDDBBBD@B@BCFCD@D@B@B@BDBFBFFBDBBADAF@@BBBDDB@BBF@D@FCH@F@FA@IBCDABG@@@A@EBEDCBCBAAEACBABC@A@CAKCKCE@AB@B@BBN@FCNGNCDIBBDDDHHDBNFD@@BBD@D@TBBBBB@BA@@BCBG@G@C@AB@BBFDBDDF@B@BABEDAD@BBBB@H@FAD@BBJFFFDBFBB@DBDAFB@B@D@DBBDDFDJDD@BAFAB@FALBJBHFDDBBCF@BDDXJJHDBBBD@BAB@DGBC@CBADADAD@D@B@HDFBNBB@FBJ@DBFBDDBBBBB@D@B@FIDCD@F@B@B@BBEHBDD@H@FAL@B@D@B@@@HEFAFAH@BBB@@BBFBDDBBBB@B@DCDAFAD@D@DBJFHDF@D@D@BA@ABC@C@@@AAECG@C@A@EBCB@FAFABABAD@H@HAH@F@BBJBLFJHD@H@F@F@F@J@F@DAB@HIFAFADAD@DBB@DDDBB@B@B@B@@CBIDABABAD@FBDBB@B@DAHGDADAB@HEDCBAD@DAD@HM@@DE@@@AAAACE@CAA@@@AAAAAC@A@@BC@C@@A@@A@@AC@EBA@AB@D@BAB@@A@ABEAA@@@@@@BAB@B@BAB@@@AA@@@A@@@@B@@@AAA@@@@@B@AA@ABA@ADA@A@@GEICEAGASAKAKAA@A@EAACCGAE@C@ABAFEBA@AA@@E@AFK@A@IACA@C@QJGBABCB@DADCDABABA@@@CIAEKQCEAACACAC@A@ABABBBBDDD@B@BA@GBIBE@C@EAAAI@AAEGA@A@A@EBA@@@MEEAEAAA@@ACAEA@AAA@EAOCICKCGA@@@@@A@@@@@@@ABA@A@@@A@@@AB@@@@AB@@ABA@@@AB@@@@AB@@AB@@A@@@AB@@@@A@@@@@@BA@@@@@@@@B@@@@@@@@@@@@A@@B@@@@@@@@A@@@@@AA@@A@@@AA@@AAAAAAAAAACEEAAGCCAOECACAAAAC@EAEACAAGDA@CAMMMQCEEKA@AA@@A@@D@DAD@DCH@BCBCDCBAB@BBFBD@HAB@BA@AAEA@@A@C@CDCDEBGAE@CCAA@ACBA@AA@@AAAC@@@AA@GAC@@@AA@@@ABC@ABA@@BAAA@A@C"]],
                    "encodeOffsets": [[[105924, 30843]], [[105921, 30838]]]
                }
            }, {
                "type": "Feature",
                "id": "510181",
                "properties": {"name": "都江堰市", "cp": [103.647153, 30.988767], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@BA@@DA@@BA@@AC@A@A@@BABA@@BE@@BC@@BA@C@@@A@A@AB@@AE@UAABENCHABILID@@ABKB@@@@CBGB@@@@EBE@@@KBKAIAQESCE@KAGAKAGAIAOA@D@@AB@@ABCF@BA@ABAB@@@B@BBBBBBD@BBD@@BBB@@BBDAJ@B@@EBAB@@C@CBCB@BAHAHABAF@DA@CBABGAA@C@A@C@CBABAJABABG@A@ABOHC@C@A@AACA@@AA@@@@AAEAABIH@BAD@BBD@B@DAB@DCBA@C@CBC@C@C@A@@@A@C@A@C@C@ABABCBABA@AAA@CBEBE@CBCBABAD@JAFABA@C@C@KBEAGAC@CD@DCHADCBCDEBEAA@A@C@IDGBEBMFA@G@EAC@@BA@BBBFNJFBB@DDDFHFDLDLAL@F@B@J@LDNHHDFFF@BHDHFLHLHNFNHHFFLDBJ@D@@@DBD@BD@B@@ABCD@HAD@D@DDLBDBBBBBH@B@F@F@BAJADAF@D@D@FAF@B@BADCBEBEBCDA@@BAB@@@B@BDFFJHLFDBBDFBFBD@D@F@B@DAD@D@DBBBBDFDDDDBDAFCF@D@B@DDDDB@FBDBD@BFBHLHJBFDH@B@B@DBD@BBBDDBDDFFDDDBDAFBDDB@BDFBFBL@FBFB@FBFD@@FDHJHHBF@D@J@BAD@D@H@BADABCDCF@BFV@DBHBJ@H@F@DADCDINIHBH@F@H@D@BDDDFHLBDBF@BCDCDADCH@DAF@DAD@BAFBBBH@B@DADAFAF@B@HBFDDDBHAB@D@FBJ@D@JBFBDDDFDFB@D@DADABABCJBHAFAFABBBBDDBBBBB@FBNDF@D@HABADAD@DBBBHBHBBBBBDDDHBBHHJGDABCDEBADEDED@BA@CAGAG@A@CBAFE@C@EDEDCFCF@BABABAAA@CFG@A@AACACEC@ABCB@DABC@A@CBABGBAHEDA@C@E@I@GAEACCECCAACAGECCCCCEECECCECE@GACGKCGAEACAE@C@CBEDCFIFCBCBCBABE@A@C@A@ABAB@BAD@D@B@B@HGJMDCDABCBABABABAJAHCB@B@HBB@B@@C@CAGACACCG@A@A@ABABCHGBA@A@CAC@ABC@C@ADEBE@CDEBCBABAH@B@BA@@@CBCDCHCDC@EAO@EDCB@BAFCD@DBL@H@BABACEA@A@U@GAKCA@G@CAOGEAC@A@C@E@IBC@AAAA@A@ABCNIFAD@BA@C@GDM@AJU@@FAFIBAACEQ@A@@@ABCJIFEB@BCFABABAHQBA@@@AB@DC@A@E@ABADAF@DAB@@A@ACC@AAABCBGBMGGAB@BA@@@A@C@@@A@@@EEA@@@@@AAACAA@C@@@ABEBA@C@A@CAC@E@A@E@G@A@@@@@GAEAE@@@@C@@AAAAEAG@@@CACGIAAA@@BCBC@AAACDABCBABABAD@B@BA@ADIBABAA@AAC@A@C@@AECA@C@C@CBAAA@C@A@CAA@A@@CAA@A@AACEIEEA@@@@@@@AAG@IAAAAB@B@@@BCB@@AB@@ABA@A@@BA@@B@@ADA@ABAB@@A@A@@@AB@@@B@B@BAB@BA@@@CB@@A@@@ABAD@@@BA@@@@B@@@@G@CA@ABE@AB@@A@C@@@A@A@@BABA@A@@@A@A@@@A@@@ABABAB@@A@A@A@C@@BABABA@@@A@A@CDE@CBE@M@C@ADGDCDG@@BA@AB@@AB@B@@ABA@@@AAA@@BABA@@DA@@BA@@BAAA@A@@@A@A@@@ABA@A@@@A@A@@@AB@@ABA@A@A@A@A@@@A@@@A@A@CBCBEDGBEBA@A@A@C@@AA@ABA@@AAA@@AA@@A@A"],
                    "encodeOffsets": [[106211, 31509]]
                }
            }, {
                "type": "Feature",
                "id": "510132",
                "properties": {"name": "新津县", "cp": [103.811286, 30.410346], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@AE@ACAC@E@EBED@B@B@DDFDBDBJFJDD@DDDF@B@BGHADCD@DAF@D@J@BABABABIJABKRAD@@@@@@CDCJEHEHMNIJGDCD@D@D@DBBDDHFFDDBBBDB@@ABAB@B@BDDDB@@@@FDHBDDBFBFBDDBBD@D@BAJBH@BBBBBDBBB@D@DBD@F@DDJFDDBBBD@HATDL@N@JAJAB@@@@@H@H@BBB@@@@BCBEBAB@DABA@ABABAD@BBBFFDBBB@B@BBBBBF@FAF@DAB@DBF@FDDDBDB@BA@@@ABE@A@@BABABA@@BA@CACBCBCBCBE@A@@F@HBDD@@B@B@D@FAF@D@HBHBDBD@B@H@D@HADADAFCBA@@@@BA@@@@BC@@BIB@@A@@@@@@@@@@B@@@@@@@B@DBBBB@D@D@D@FABANIDEBCBGBIBABCDCBABC@AEIAE@AEG@E@ABADABADCDCDCBADABCBA@EBC@ABA@ADABAB@BA@ABA@ABGBG@C@A@AAA@A@IBG@A@AA@@CACAGACAAAEAKEIEMCK@CCACAACAA@CBADEBCBA@C@AACCAC@AAB@A@ACAG@CAACBGBC@G@GAEAGAA@CB@D@B@BABABAF@BABABCHCBAB@B@J@D@BC@@ACICACAM@@@@@@@EAA@EACACACAA@@@A@A@EBM@EBE@CAU@I@A@E@IDEBC@EAMGIEECKCCCCAEICBA@A@A@C@A@C@@BA@@DBBBDOHEC"],
                    "encodeOffsets": [[106238, 31065]]
                }
            }, {
                "type": "Feature",
                "id": "510184",
                "properties": {"name": "崇州市", "cp": [103.673001, 30.630122], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@EGGKECEGCAICAACAEBA@BD@BBB@D@DA@@D@BBDDBDB@@@BABE@A@ABADAD@BBDBDBDBBABABCB@BABC@MCC@CCOKAAAAAAABA@@@C@C@CBG@G@C@A@EBCBC@C@E@ICA@CBABABCFAF@DBDBBBBBBB@DF@@@DADADEHAFCHAF@BBB@FBFDNBDBB@@BBD@DB@BBB@@BH@@ABE@@@A@@@A@@DA@BB@@@BBB@@@@@@BB@@@@@@@@@BA@@@A@@B@@@B@@@@BB@@@B@@@@@B@@@B@D@@@@@@@B@DAD@B@BBF@D@BAB@@A@@DABADCBCF@DBD@DABCFABAD@V@D@F@B@DBFBBADGJGHADAB@B@@ABA@CDCBCBMJCDABIJC@C@AACAEACAABADAB@B@BADADABCBEFE@G@E@ABCDCBCBIBA@EBCFC@A@@@CCCEEAM@EBABADEDE@CAECCAC@EBOPKJEDEBMEMEOGMAGBGBEDCDEHGDC@E@CAIIIGIGEC@A@E@IACCAG@EBEFGJEBADABAP@BA@CBAAC@ACGECAGCAACEGGEAABIDEBEAIAC@EBAD@FCJELCBABCFAFCBIAEBADAFAFADEHEBEBE@GCMGQOKKGEGAE@CDCDEBGBI@ODEBCDEFAFMHIHEHEDGAE@EBCBEHEJCBGDCFAF@D@F@FCDBD@AFAJFLNDNDJDFJBJHHDFFDFJTDFLFHDH@JCJBJBJATMHADAD@B@FBB@B@FADAD@B@B@D@DBLBBBB@DAH@HDFDF@BADGFGBAHCDAD@DAD@FBB@D@D@JIFIBIBCDALCF@FDNHLFJHHFJAF@HP@@HNNRFFD@LBLFHDLFJF@@H@H@P@JBLBFFZXB@B@B@DAB@D@@@AEAAB@@AD@FBH@B@NEFAHAJCD@B@B@FBFADCDABCDG@CDCD@HBFBLAD@D@B@BABE@IBCBADADAF@FADAB@BBB@BADABABAD@D@B@D@B@@@B@D@D@D@DAD@B@DA@CBA@C@AAC@ABC@AJGBAFBBB@@@@BB@@DBBBB@D@D@PGBAB@H@BABABIBADAD@B@D@B@HBBADAB@@CBEBABGBG@ADADAD@@@BAFA@@@ABIAC@AA@AA@@AC@AACAAAA@A@A@@BABAB@@ADEBA@@BA@@@CPBJBHBLBHBLBF@TDRFJBLBLA@@F@FA@@@@HADA@@@@LABA@@JCJKBADGFMBAVBF@DE@A@@@AAA@@@ABA@A@@BADA@A@ABA@@@AAA@A@AB@@AB@B@B@@@BADCB@BAB@@A@@@@@@@A@A@AB@BAB@D@@AB@@@@C@ABABAB@AC@E@E@E@EBGBIBEDCDEHMDE@CBAAAAAAA@@AC@A@@B@@@@@@@BA@@@@@C@A@A@@@@@A@@@A@@@@@AB@BA@@BA@AB@@ABA@@AA@@@A@@BA@@B@@@@@B@@A@@@@@A@@@A@@@@B@@A@@BA@A@@@@BA@@B@@@B@@ADA@@@A@@@@@@@@@A@@@@@@@@BA@@@@@@B@BA@@@@@@@AB@@@BCBA@CB@@@@@B@@@B@@@@ABA@@@A@@@A@ABA@@@A@@@@AA@@@@@A@@B@DADCJMBG@C@C@A@@BCDCBCBCDIDCJIJMBCBABABC@A@A@A@CBE@C@E@@@@AE@EAC@AAA@AEG@@AE@GAC@ADKBA@@BA@ADABAABA@ACCCECE@CAA@CBE@EBE@AAAA@A@AAACAEEAA@ABCBABAB@BA@CBAFADA@A@@A@AAG@G@@@@@A@IBIBM@K@EN@B@DABAHCFGN@@AD@BGPCDKHMJML@@CFA@CBADABABCBA@A@AACCAACAC@C@ABABC@IC@@@C@@@C@CE@AACBC@ECAA@AAAAACFC@C@CACAAACAAECAECCAE@CACECG"],
                    "encodeOffsets": [[106143, 31263]]
                }
            }, {
                "type": "Feature",
                "id": "510183",
                "properties": {"name": "邛崃市", "cp": [103.464207, 30.410324], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@CG@@CGAKCCAC@ABEAECCACCAA@GCA@EBEDADADBF@F@B@DAB@@ADAF@FABEFCFABABA@C@CCECABABMNEFABA@C@@@CCACEKGIGGKQAEGKEEICCAK@KBGC@@ABABEFA@GDGBA@OBEBWBSDOD@D@DDF@FAHADGFADBF@H@HAJ@JC@IBCDAFAFDNDLDLDLCFEFCD@HDHDDDBHBDDDFFLB@B@BABAFBFBFDHJNL@@JLJJHJFDTX@H@DCDEDGBCBADDJBHBHBDADAFCDBREFBBDDDD@FBDBD@BGN@BDLDBD@DAHEJAB@D@B@BB@DB@@B@BADQHIHADBDJFDHLJFJJFFD@@D@FBB@B@BCBED@D@@D@BFH@DBDBBB@@B@@B@@BBFDDDFDDBJBDDBFHFF@DEJAFCB@B@BBDD@FBFBDBB@BADCBC@ADCDAB@HBHBDABA@MBEDCFCFAJ@H@LHB@D@BAFCDCFCF@DAF@DDBFAF@DDBDBDBDB@DDDLDFBFAFAJAHCPMD@DBFJBJAHAFKJAF@DBDDDLDNBH@LAJCH@JBFDFJDDFFF@HAVOFADED@BA@@B@@@B@BBFFDB@BBBB@B@B@J@DADAFA@AB@@@B@BBDB@@@@FABA@@BCBA@@DC@A@@B@DAF@BADADANED@@ADADEJIFEBCJGFCBA@@BA@A@CBCBEBEBA@AAI@@@A@@@@B@FAB@BEBCB@DAT@DA@@BA@ABC@AB@@@B@BBBBBDBDAD@BBBB@JDJAJAJCFEJEF@@@B@@@@@@@@A@@@@@BB@@@@A@@@@@@@@B@@@@@@@@A@@@@AA@@B@@@@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@B@@@@@@@@@@@@A@@@@@@@@@@B@@@@@@@@A@@@@@@@@@A@@@@@B@@@@@@B@@@AA@@@@@@B@@@@@@@@@@@B@@@@@@@@@@@@A@@A@@@BA@@@@@@@A@@@@@@B@@@@@@@@@B@@@@A@@@@B@@@@@@@@@@A@@@@@@@@@@@A@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@B@@@@@@@@@@@@@@@@@@@@@@@@A@@B@@@@@B@@@@@@@@@@AA@@@@@@@@@@A@@@@@@@@B@@@@@@@BA@@@@@@@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@@@A@@@@@@@@@@@@@@@@@@@@@@BA@@@@@@@@@@@@@B@@@@@@B@@A@@@@@@@@@@@@AA@@@@@B@@@@@@@@@A@@@@@@@@@@BA@@@@@@A@@@@@@@@@A@@@@@@@B@@@@@@@@@@@@A@@@@@@@@@@@@@@@@@@B@@A@@@@@@@@B@@A@@@@@@@A@@@@@@A@@B@A@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@@@@@B@@@@@@@@@@@@AB@@@@@@A@@@@@@@@B@@@@@@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@@B@@B@@@@@@@@@@@@@@@A@@@@@@B@@@@@@@@@@@@@@@B@@@@A@@@@@@B@@@@@@@@@AA@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@A@@@@@@@@@@@AB@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@@AB@@@@@@@@@B@@@@@@@@@@@B@@@@B@@@@@@@@@@B@@@@A@@@B@@B@@@@@@A@@@@@@BB@@@@A@@@@@@@@@B@@@@@@@B@@@@@@@A@@@@A@@@@@@@@@@B@@@@@@A@@@@@@@@@@@@@@B@@@@@@@B@@@@@@@@@BA@@@@@@@@@@@B@@@@BA@@@@@@@@@@@@@@@@@@@@@@@@@@B@@@@@@@@@@@B@@@@@@@@AB@B@@@@@@@@@@A@@@@@@@@@@@@B@@@@A@@@@@@@@@@@@@@@@BAA@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@@@@@AAA@@@@@@@@@@@@@@@@@@@@@@@A@@@@A@@@@A@@@@@@@@@@@@@@@@@A@@@@@@@AB@@@@@@@@@@@@@@@@@@@B@@@@@@@@@AA@@@@@@@@@@B@@@@A@@@@@@@@@ABB@@@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@B@DDBDBBDBD@DADCBCDADADAB@D@D@B@DDBCB@D@B@DADBDBD@FBD@HADAB@@@JB@@F@@@D@F@DAB@B@BB@@BBDF@B@DBDA@@D@D@B@@@BAB@@@BAAA@A@@@A@A@@@A@AF@@@@ADAB@BBBDBDBDBBHBFB@@@DABABAD@DBDBFFDDB@BDFDBBD@DBF@HEFEDCDADAD@DBBD@@B@DCDCBADCBABADAB@D@D@DBDAHCBABCAAAAAABCBCJGDCBCBACCAA@C@C@CDCHCJINMFGFGDIDC@@@@@@BCLQBAJIBABABA@A@I@CBE@CDCBCHG@A@ACECCC@ICIECACACE@C@A@AFCFAF@D@DB@BBFFDPGACAA@CB@@AD@B@D@B@B@B@DAA@@ABCBC@C@C@@AAA@A@CBABC@G@CAA@CC@C@MAA@@EBA@CAAAA@EFABA@G@E@CAAA@A@A@CJKJK@C@CAC@AA@A@A@IDC@A@AACCAA@AA@ABC@AACE@@AAACAA@@CGCCAAA@C@AACBGBA@@BB@FB@@@BE@A@EAAA@CAA@@E@CBEDA@@DAD@@@BBDBBBB@@B@DBF@BDBB@B@@CF@@GNC@CBC@ABCDGFA@CBCBGHCBA@A@CAEAC@ABABCBAJ@DA@A@A@A@CACCA@CAC@CBEBEBGJA@CBE@I@E@E@E@G@C@IGKEIAAAE@G@GBG@C@ABABEBEBA@AD@F@B@DDHBF@B@@@DAD@BABC@C@E@GCIECAC@C@EBCBCDA@A@AACAACAE@AA@AAG@EBEBGF@@A@C@A@K@EBG@C@ACFGAAA@A@E@C@CDEJA@C@A@AAAACCEACAI@EAA@MAEAGCA@C@C@CBCBAB@DADCHA@ABC@AACAIGWICC@ADEAACCGEIAKAEBA@EBABC@ICECCCAA@C@C@AEACBCAA@EACAEEIEAAC@EBG@A@AA@ABCFCBA@A@ACEACECAAA@@B@D@HAHAD@@ABA@AAAA@S@CAC@AC@MECAGGCCACMDM@G@GAC@CBA@CBAAICAACAeQ@AICECEECI"],
                    "encodeOffsets": [[105719, 30964]]
                }
            }, {
                "type": "Feature",
                "id": "510182",
                "properties": {"name": "彭州市", "cp": [103.957983, 30.990212], "childNum": 2},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@@B@@@@@@@@@B@@@@@@D@@@@@@@@A@@@@B@@@@@@@@@@@@@@@@@@@@A@@C@@@@@@@@@@@@@@@@@A@@@@@@@@@@@@@@@"], ["@@IAC@A@EBGBGBA@I@EBEBCDCBEFABAB@B@B@BBD@B@B@F@BADCF@@ADAB@B@B@D@B@B@BA@ADOHABABAB@B@D@B@BA@CBA@A@AA@AEECAAAA@A@A@@@@@G@A@CAAAAAGGAACAAA@@A@@@AAA@CA@AA@AC@AAA@@A@AAA@C@C@A@C@@@A@@@@@BA@A@@@A@@A@A@A@AAA@@@CBA@ABA@@@A@A@A@AAA@A@AAC@@@A@C@C@A@AAGEAAAAGAAAAA@A@A@E@@@@@A@A@A@AAAAAAAA@A@ABCDA@A@@@A@@A@C@@@AA@@@C@ABA@CBCDABCB@@A@A@A@A@EBG@IBAAE@I@E@C@C@CBADCBA@ABA@@@A@A@A@CAC@E@A@A@CBAB@BA@A@ABA@A@C@ABA@A@A@E@C@CBABCBADA@@@ABA@ABC@A@GCC@A@EBA@C@AAC@@A@A@EAA@AAACA@@A@AB@@A@A@E@A@C@A@AB@@@B@@@B@@@@@BAB@@AB@@@BA@@D@BA@@BA@A@@BA@@BA@@@A@A@AB@BA@ABA@@@@BC@A@@@A@A@A@A@C@A@A@A@AA@AA@@@A@A@ABED@@@@AD@BA@@@C@@@ABA@@BCFABA@ABA@CBA@A@@BA@HHANAHADBB@BDD@B@BA@CBE@CBAB@B@F@BCDA@@B@@ABGRABABEBADA@EFIJAD@B@@@BFRBDABEJEB@@IV@BCN@H@DABC@EBMJAD@B@BBBBBD@JAF@D@B@D@FBPHDBH@B@LDHBV@B@B@DFABABG@K@CAC@EDABA@CD@FBP@FCDGDCDAD@D@@ABA@G@ABABADCF@DAFCF@B@DAD@BBD@D@BABGHADAB@B@B@BDHBDBDBH@D@DA@A@GAA@A@GDIBABABABABADCBCDINGHA@A@C@C@ABA@AB@B@B@D@BAFABADADEDEJCDAF@D@DBFBDBFDHHLBD@HDFDFFDFDDFDDDDHFDBBBDDDFBDBF@H@J@F@DCBGFABAHAB@D@BADCBA@AD@BFDBDBD@B@BEH@DBBABABABE@EDCDCF@F@DEFAB@D@BBHBH@DABC@CFCFABCFADCBIH@BBDDDDDJFFDDDDDDDDD@DBD@BB@DBB@B@N@F@DBFBB@BBD@FAFB@@DBDBDBD@DBDBBF@DBFBD@D@D@BDDHFHDLDLDHBFFD@FDJBFDD@B@@@DA@ADAD@BBD@DA@@BAB@B@@@@@DBBB@B@@BB@B@@B@@@D@D@BAB@@AB@DABE@A@CBC@CBABAFEFCFEBAB@B@B@BBB@FDF@BAD@BAH@BBD@D@FBFDDBDDDBDBB@B@DCBCDADABAB@D@DBD@DBBBBBBBBBBB@@B@DAD@DEBAAA@CAA@AAC@A@ABABABC@EBADCDCDEFE@C@E@C@ABABABAB@BA@@BADCFEDC@A@C@AAC@ABA@@BAB@B@DADCBC@C@ECEACCAA@A@C@CAEAECEEECEEEEECEGAEAE@G@G@C@C@E@ABEBADCBAHABABCBABC@ABADEB@DADA@ABCBCDAHCFAJCBABCDCBC@A@AAACAAACAAC@EBCDC@ABADCDC@ABAAEAACCACAA@EBCBCB@FI@@BAB@@@B@BBB@B@@@B@BC@@B@B@@A@@@AB@@@@@BAA@@@@@A@@@A@E@@A@@@@@@@AB@@@B@@@@@B@@@@@B@@@@@B@@@@@B@@@@@A@@@@@@A@@B@@@@@B@@@@@BB@@@@B@@@@@BA@@@@AAAA@@@@@A@A@@@A@@A@A@@A@@@A@A@@@ABC@AB@@@B@B@B@DBB@@@@AB@B@@A@@B@@BB@@@B@@@DD@B@@@@@B@@@@B@@BB@@@@@FGBDDBB@@@@@@@B@@@B@BA@@@@BA@@@@@A@@AA@AB@@@@@@BB@@@@@@A@@@@B@@@@@@@BB@@@A@@@@@@@@@@@@A@@A@@@@B@@@@@B@@@B@@AB@@@D@@@@@B@@@BA@A@@@AHE@@@AAA@A@@@@BAB@@@BB@@B@@@DA@AB@@ADA@A@@B@@@BABA@ABA@@@@@A@A@@@A@@B@@ABA@AB@@@@@@@B@@@B@@@@@@@B@B@@@@@B@@B@@@@@@@@B@@@@@BA@ABA@A@@@@@A@@@@@@A@@@@AB@@A@@DA@AB@@@@AB@@@@@@AB@@@@C@AA@C@AAA@@@AADA@A@AA@@@@A@@@A@@AC@A@@@A@@@@@AB@BC@@@@@@@@@@B@@@@@B@@A@@A@@A@@@@BA@@B@@@B@DAB@FCDCCE@AACBA@@@ADA@AAA@@@ABA@@A@@A@@@@@@@@@A@@B@@@@B@@@@@@@@BA@A@@@@A@@A@@@@@@@ADC@@@AEA@@AA@@BAAA@C@@@@A@@A@@A@A@@AA@@@@AB@@@B@B@B@@@@@@@BA@@@@@@BB@@B@B@@@BAB@@@BA@@B@@@B@@@@@@@@@@AAA@@A@CAA@@@A@@AA@CA@AA@@A@A@@@@@@B@JB@@@@@@B@@@@AB@@@@@@@B@@A@@@@@@@@@A@@@@A@A@@@@@@A@@@A@@@@B@@@@@B@@@@@@@@@@@@@@@B@@@@@@@@@@@@@CC@@@@B@@@@@@@B@B@@@@@@@@@@@BA@@@@@A@@BAB@@@@A@@@@BA@@B@@@B@@@B@@@BA@@B@B@FA@@@A@@B@@AA@AAAA@@B@@@@AB@@@@C@CD@JEB@@@@@DAB@@@B@@@B@B@@@BA@@@@@A@@@A@A@@@@@@@@@@B@@@@@@B@@@@BA@@@@@@@@@A@E@A@@@A@A@@@A@@@@A@@@@A@@@@B@@@@@@@@@@@@A@A@@B@D@F@BAD@B@DABA@@BAB@DABAB@@A@@@@BCAC@A@@@A@@A@@@@@@@@A@@@@B@@AB@BA@@BA@@B@BAB@@A@@@@@A@@@@@@B@@@@@BA@@@@@@@@@@@@@@@@B@@@@@@A@@A@@@@@@@@@@@@@BA@@B@@A@@AAAA@@@A@@DAD@B@@A@@BA@A@@B@DAJAHA@@B@B@@@@@B@@@A@@BA@@@@@B@@@@@@@@@@@B@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@B@@@@A@@@@@@@@@@@@@@@@@@@@@@@@B@@B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@A@@@@@@@B@@@@@@B@@@@@A@@@@@@@D@B@@A@@@@@@A@@@@@@@@@BA@@F@B@D@B@B@B@B@B@@@@@@ABC@@A@@@@@AAC@A@@AA@@AA@BAAA@A@@@ABA@ABA@@B@B@@@@BB@@@B@B@D@@ABAB@DA@@DAB@FA@@@@D@DA@@D@B@@@DAB@@@@A@CB@@A@@@@@A@@@@@@@@B@D@BA@@B@@@@@AAA@@A@@@@@AB@@@D@@@B@@B@B@BB@B@@@@@B@@CBA@AB@B@@@B@B@@ADA@A@A@@B@BA@AFCDCBC@C@CA@AAA@AA@ABCDC@CB@@C@C@ABC@@AAAA@AAA@A@A@A@AAAA@@@AAA@@A@ABCDC@A@C@@EAA@C@@CAE@@@AACA@CACB@AAA@A@A@A@C@A@A@A@A@A@@@CAA@@A@@@CAABCAA@A@AA@@AABA@AB@DAB@@ABC@A@A@ABA@ABA@@A@ABEBA@@@A@C@@@@@@@A@CAC@C@E@CAICC@@@C@CBCBCBA@OA"]],
                    "encodeOffsets": [[[106606, 31777]], [[106605, 31656]]]
                }
            }, {
                "type": "Feature",
                "id": "510112",
                "properties": {"name": "龙泉驿区", "cp": [104.274632, 30.556506], "childNum": 1},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": ["@@A@ABA@C@@AA@@A@CACAA@@@ACACAIEIGEAA@CAA@MA@@AAE@CCEEAC@A@@@@BCDED@BA@C@@AACAE@ICCAMBEBA@@@@@EBC@GBC@CB@BA@@BADB@@@@B@@@@@@@@@@@B@@@@@@@@@@A@A@@@@@@@@@B@AB@@@@@@@@@AA@@@@@@@@B@@@@@@A@@@@@@B@@@@@@@@@B@@A@@AA@@@@@AB@@@@@@A@@B@@@@@@@@@@@@A@B@@@AA@@@@@B@@@@@B@@@@@@@@@@A@A@@@@@@@@@B@@@@AA@@@@@@@AB@@@@@@@@@@@@@@@@@@@@AB@@@@@@@@@@A@@@@@@@@B@@@@@@A@@@@@@@@A@@@@@A@@AB@@@@@@A@@B@@@@@@@A@@@@A@@@@@@B@@@@@@A@@@@B@@B@@@@A@@B@@@@B@@@@@@@@@@@@@@@@@B@@@@B@@@@A@@@@@B@B@@@@@@@@@@@@A@@@@@@B@@A@@@@@AA@@@@@@@@@@@@@@A@@@@@@B@@@@@@@@A@@@@@@@@B@@B@@B@@BB@@@@A@@@@@@@@@AA@@@@A@@B@@AB@@@@@@@@@@BB@B@@@@@@@B@@@B@@AB@@@B@@@B@@@@@B@@A@@@@@@@BB@@@@@@@@A@BDA@@@A@@BB@@@@@@@@@@@@@AB@@@B@@@@AA@@@@@@@B@@@@A@@@@@@@@@@@A@@D@@@BCF@@ELEF@BAB@D@@@@@@AF@DADAB@B@@AB@@AB@@ABA@@@@@A@@AA@@@A@@BA@@BAD@@@BAB@BAB@@AB@@A@CBA@E@CBA@MJABAB@B@B@B@@@BBF@BBB@BA@@BABBBB@@BB@BA@@BB@@@AB@B@@@H@@BB@ABABC@AB@@@@B@D@B@@@B@@B@@B@BA@@B@@BAD@@@BBBAB@BCBAB@A@@BE@A@AAA@@A@@@@B@D@B@BA@AB@@A@A@ABB@BBB@BB@@@@@@BDBBBDBBBB@D@DDB@@@@@@@@B@@@@@BB@@@@@B@@@@@@@@@@@@A@@B@@@@@@@@@@@B@@@@@@AB@@@@@@@@A@@@@@@@@A@@@@@A@@@@@@@@@A@@@@@@@@@B@BA@@@@@@@@@A@@A@@@@@@BA@@@@@@@A@@A@AA@@@@@@@@A@ED@@A@C@@BC@@B@B@@@@@BCB@BC@DFBB@@B@@B@@@@@B@@B@BBED@@@@@@@AAB@@A@A@@@A@@@A@@@@@A@@B@@AB@B@@@@@@ABEB@@@@@@@@@B@@@@@B@@@B@@@@@@A@@B@@A@@@@@@B@@@@@@@@@B@@@@@@@@A@@@@@@@@@@@@@@B@@A@@@A@@@@@DD@BDBB@@@B@@@HBH@D@BABA@@BCB@B@D@@B@BB@@B@B@@@B@@ABAB@B@B@@@B@@EB@@@D@@BAB@DA@@@B@DB@@DB@@@@B@BAFAF@BA@@@CBC@A@@B@BBB@BB@D@@@@@@@@BC@@B@@A@@BCB@B@B@H@@ABB@@DAB@BA@A@@@CCA@@@AB@@AB@D@BBB@@B@@@@@B@B@B@BAB@BA@@@CBAB@D@@@@BA@@BAB@@@D@@BBBBBFDB@@DBDBBA@@@@@@BCBC@@B@@@D@B@@@B@DDD@HB@@@@FBDBB@DDBF@DBBFBFBB@@@@@B@@@@AB@@@@@B@@@@@@@B@@@BB@@B@@@@@@@B@@A@@B@@@@@@@@@BA@@B@@@@A@@DB@@B@BBB@D@BAH@@AB@DBB@B@B@BBBBB@BBBB@BB@BBB@BAB@@AAC@A@A@A@AB@B@F@B@BABA@@@ABA@@@@B@D@@@BBB@BB@@@@@@@@A@@@A@@@@B@@@B@BB@D@@@@@B@BA@B@@@@@B@@@@@F@@@B@@A@@@@@@B@@@@B@@@B@@@@@B@@A@@B@@@@B@@@B@@@@@@@BA@@@AB@B@@@@@@BB@@B@@@BB@@@@@B@@@@@@@BB@@B@@HC@B@AFA@B@F@@@@@@BB@@ABA@AA@D@@A@@@@BAB@@B@@BB@@@B@@BB@@@@@BB@@@@@B@@@BBB@@@BB@A@BBA@BB@@BA@@BB@@@BA@@BB@@@@@@B@@@BA@@@@B@@B@@@B@@@@B@@B@BB@@B@@@@BB@@AB@@@@@@@AA@@@@BA@@@BB@@@@A@@B@@A@@B@B@@@@@B@@A@@@BB@@A@@@BB@@@BA@@B@B@@A@@@@BB@@@@DHLCB@B@BBFDB@B@B@D@D@JCD@B@@@BAJAB@@B@@@B@H@BBBB@B@D@DALKDC@@@@@@DABABAB@PGRE@@@@BAB@@@@@ZIB@BBDBFAZCDABA@ABCAO@CBA@@@AB@@@BAPEFABA@@DABA@@B@B@@@BB@BBBBPBDB@BBD@D@FAFAFCHCDCBEBE@G@@@A@C@A@A@@CCAAAA@ACICG@A@@@C@A@E@AAGA@@AB@@A@A@@B@@@@AB@@@B@FBB@@BB@BB@BBBBNBBBDDDFDBBB@BA@@BABI@CBC@C@C@C@C@A@E@AACAAAA@@CA@AAA@AAA@A@A@C@A@@@@ECCCAAA@CCA@A@A@ABA@CB@BA@A@A@@AAA@A@@@E@@@AACAA@AAA@@CAGCC@A@EAEAA@@@@@AAAA@@@@@@CC@AAC@C@AACACAG@CBE@@@EBA@AHI@A@AGG@CAA@AAE@C@M@I@AAACA@A@A@A@@@ADEFEFABAB@DBB@BADABC@A@CACACCA@@GCGCKCAAAAAA@ABCBGBA@CAE@@@@@@AACACCA@AAYFGBC@E@C@@@A@@AEI@@CAC@@@GBC@A@AACAMAA@A@@B@B@DBBFDBB@B@DADCJAFELCFADGFCB@@A@A@@BA@AAA@@AAC@C@A@AB@D@D@B@D@@ABA@@@AEIBCFG@@CCGAC@I@C@EAA@CBIHABCDE@ABAFAB@@"],
                    "encodeOffsets": [[106803, 31237]]
                }
            }, {
                "type": "Feature",
                "id": "510180",
                "properties": {"name": "简阳市", "cp": [104.54722, 30.411264], "childNum": 4},
                "geometry": {
                    "type": "MultiPolygon",
                    "coordinates": [["@@@@@@@@@@@@A@@B@@B@@@@@@@@@@@@@B@@@@@@A@@@A@@@@@@AB"], ["@@@@@@@@@@A@@@@@@@@@B@@@@@@@@@"], ["@@A@@A@@BA@@A@ABABA@@@A@BA@A@AB@B@BA@@A@A@@@A@BA@AA@@BABAAA@@@GBCAAD@B@B@BLJ@B@DB@B@@B@@@BB@B@@@BA@AB@BAB@@@BB@A@@A@@A@@BAD@AAA@@BA@ABAAA@BABAAABAB@DA@AA@AB@@"], ["@@@AAAC@E@@@A@@ABAB@VCDABAAEGAAAMF@AAA@A@CAA@AA@@A@ABA@A@AA@A@CAC@C@KHEDGJ@B@BB@HD@BCFAB@D@BAHCDCBAD@BAD@B@@AB@@C@C@CAI@CBA@CBCDGJDHBB@B@BAD@B@DCR@D@BAHABEH@@A@WDGFIDGBEHADABBD@@D@NAB@B@BBBB@BABABEBGFKH@@ABA@IBE@GBC@ABAB@BA@CBABADAB@@A@EAEAMCC@A@A@ABA@@DCFABA@E@E@CBIFEDADGFCD@BA@CAA@CAECA@@BA@ADAB@B@B@B@BBB@D@FGLCHABA@@BIAA@C@@@KFA@A@C@CA@BCBEHA@@@EBCBABAD@B@B@BBBFDDD@@@@DBB@@@DDBDB@@BABCDABAB@@@D@B@@A@A@A@EEAA@@A@CDCBAB@B@@@B@@BD@@@DDBHA@@@@A@@@@AB@B@@@@B@@A@B@BBBA@AB@@BABB@@@B@B@@@ABA@A@@B@BABB@@@B@BABAB@@@AB@@@BB@@@BAB@@BCBA@ABBBABABB@BBBAB@@AB@BBC@AB@@@BB@@@@BAA@@A@ABA@@BAB@@A@A@@A@@@AA@A@@H@DAH@BBBB@BBBD@@@DADCBABE@GDIBEDEBC@@@AACAECAAC@ABA@@DCHABCBABAF@BA@A@FLBDDBBB@B@D@BCF@F@B@BBDFFBBLLFJDDFFBBDD@@@BBB@F@H@D@DAB@B@D@BBBD@DBD@BBB@BB@DBH@JAD@DBBFFDFB@DBD@B@D@H@DBB@B@@@@D@@@BCF@@BB@B@@TTDJFF@BDDFH@DBB@B@@@BA@EBIBCAIACAA@CBA@ADABBB@BBDDBJDF@DBBB@@@DABC@CFAD@@@@@BBDFFDDF@BB@@NBB@DBB@FBJHJFDBDB@B@@BBBD@D@BB@@BD@B@BAB@@@BABEBAF@DCBAJGDAB@FBD@J@D@HBDD@@EHADFJ@B@@AB@BC@A@C@C@A@@B@B@DBD@BB@BBB@@AB@B@@@DAHEBCDEFKBEDIBC@C@AAAECAA@C@A@AB@B@NBDBBBB@D@HA@@D@DB@@FJ@BB@@@D@F@D@HAZEBBB@DDDBBB@@@@@@BF@DABAHAD@BBBBBBBLDHDHD@@DBBDBD@D@BADCBABA@CAA@ABEBEFCF@B@@@B@B@BDBBB@B@J@N@DBF@BBB@DHH@B@BGJ@BAB@F@@AF@DBHBDBD@B@DBD@BDD@@@@@@BBBB@@@@B@FBFBB@D@HABAD@F@B@BAHEBAB@B@D@JDBBD@B@BCBABAB@N@D@NDDBBBHBBBD@DAFCB@B@D@HDBAB@B@@BB@@B@B@D@BBBDAHCD@B@BB@@@F@B@@BBB@HFB@@@BBDFBDBBD@B@F@HBBB@@CF@@@B@@B@B@@@@B@@@@@@@@ABA@@BAB@@B@@@BA@@@@@B@BB@B@BAF@@@BB@@ABA@A@@@AB@B@D@B@@@@B@@@BA@@H@B@@@B@@@AA@@A@AB@A@@@@BC@@B@B@BA@@@@B@@@AB@@@BDB@@B@@CB@D@@@BB@BDB@@ABA@AB@B@@@@@B@@D@@BBB@@B@@C@AB@BBPEJCD@BA@BB@BD@BBD@F@DBDB@DDHDB@B@@A@@@EBA@AFEFI@@BAB@@BHDHBB@@BBADADCJKBCB@B@@@BA@@DA@@AC@@@@BA@BB@BB@@@@@@@@@A@A@@@@HA@BB@AB@BB@@BB@DAD@B@AAB@DAB@@@@@AC@@@A@AB@B@DB@@@D@@@@B@B@BB@BB@@ABA@@@@BB@@BBBADC@@B@@@@@B@@A@@@A@@@@FBB@@@@A@A@@@@D@BA@@B@BAB@B@B@B@@@@@AE@@@@BA@@@A@@@@B@@@DBBB@@@B@@@@@@FA@@@@@FB@@@B@@@B@BA@@@@B@@@B@@A@@@@@A@@BA@A@@@@B@@DDBB@@B@AB@@@@@D@@@@@@A@@@@A@@@@AB@@@@@@A@@@A@@@@@@DD@@@@@@@@@@B@@@B@@@@C@@B@B@@@DC@A@@B@DAB@D@BAD@DA@@DABAB@F@@@BA@A@A@AAAEIEGAAKEAA@@@A@CACAI@AAE@E@CBEFEFCDAB@RGF@DADADADANAHCDAB@DCBE@ABG@CBABA@A@AAC@C@C@@@C@A@AB@FAFAB@DARCHCJCAC@A@@DCB@@A@@AC@@BA@@DBB@BB@@BA@@@AAA@@AA@@AA@@@@BA@@F@B@B@@A@@B@@A@@CACACCA@@@@A@@BABAB@F@F@B@B@@@B@BBB@B@@@BD@@@@B@@@DBBDD@@BB@@@@CB@@@@@B@BB@@B@BAB@@@BB@@B@@A@@B@B@BBB@D@@@BB@@B@B@@A@BB@BB@@B@@@B@B@@@B@@@@D@BAHAF@D@B@BDBFDBBB@D@D@F@B@D@D@BBB@D@FBB@H@HADAB@DADADADCDBFBFDFBB@DBB@F@HA@@@@@@B@D@BG@A@EAAACCE@C@C@A@CDEBA@CA@@CAA@K@C@CBA@CBG@G@A@CAG@C@QBIAA@AACAACE@A@A@C@CDEBABAH@@@@@B@@@@K@E@A@K@CEECGAA@CBC@CB@@AB@DABB@@@B@H@B@DB@@@B@PKNKBEBA@AA@@AA@@@C@ADA@@@A@AA@CAC@@A@A@A@AAAAAC@CAG@AAA@AA@A@ABCDC@GBEBA@G@AAA@ACAICCAC@A@CAG@AAAC@@ACB@@ABAB@H@BADKJCDABA@C@A@@@AA@A@ADGDCDCDCBE@ABADAD@BABABC@A@M@E@A@C@ABC@A@C@A@A@KCIAAA@AAE@@@C@C@A@CACCAAA@@@ABCBCBA@@AECA@@AAA@@@CBABA@A@@@AA@@@A@CB@@EA@@CB@@A@ACAA@@ABA@AB@D@BABAAAACA@@A@@A@IAAACCEAEA@AAABEDAFCPCDADC@A@A@C@ABCBADCBABA@A@CAGAA@CBEBA@@@E@EA@@AAA@@AA@@CAGAAAACAE@A@C@A@GBCBABE@A@@BAB@D@J@DADABAB@@A@A@@@AACCA@A@A@ABA@A@C@GCECAAAECICGAC@@EKEKAAC@C@CBEFAB@@A@EEKAE@C@CBE@ABEBCFGHA@A@A@A@CACCEECGAEAA@ABC@AFEDCFEJKDE@EBE@C@CACA@G@EAG@I@MBS@E@IHCBABC@A@KACACA@AACBABCD@FA@A@E@AAE@G@CACAACCIAAAA@CCGEEACAGAEA@AA@AGAGAA@ACAKCAAMCKECAGCA@A@CDAJABCDCBA@A@AAEIACAAAACAIAA@IAC@A@ABABADEJAB@@ECGCA@GCCAAAAA@AAABA@ABC@A@C@@ACAC@A@CBCB@FE@A@A@AGGA@A@C@ABCFABA@A@EA@@ECAAAACC@A@A@A@ABAACE@E@C@A@@AAA@A@C@ABCAA@@G@A@AAAA@A@ABADEBCDCBCDGIGA@EAGAAAAAAA"]],
                    "encodeOffsets": [[[106978, 30874]], [[106980, 30874]], [[106742, 31014]], [[106949, 30835]]]
                }
            }],
            "UTF8Encoding": true
        }
    </script>
    <title>可视化</title>
</head>
<body class="easyui-layout">
<div data-options="region:'center',fit:true">
    <canvas id="main"></canvas>
</div>
</body>
<script>
    $(function () {
        var myChart = echarts.init(document.getElementById('main'));
        myChart.showLoading();//加载数据前显示的动画效果
        var width = $("#main").parent().width()-20;
        var height = $("#main").parent().height()-20;
        echarts.registerMap('cd', geoData);
        myChart.hideLoading();//加载数据完成后隐藏动画
        var option = {
            tooltip: {
                trigger: 'item',
                formatter: '{b}'
            },
//            backgroundColor: 'rgba(102,102,102,1)'，
            geo: {
                map: 'cd',
                label: {
                    emphasis: {
                        show: false
                    }
                },
                roam: true,
                zlevel: 1,
                itemStyle: {
                    normal: {
//                        color: 'rgba(51, 69, 89, .5)',
                        areaColor: '#CCCCCC',
                        borderColor: '#fff',
//                        borderColor: 'rgba(100,149,237,1)'
                    },
                    emphasis: {
                        //areaColor: '#031525'
                    }
                }
            },
            series: [
                {
                    type: 'scatter',
                    coordinateSystem: 'geo',
                    //showEffectOn: 'render',
                    zlevel: 3,
                    symbol: 'circle',
                    symbolSize: 30,
//                    rippleEffect: {
//                        brushType: 'stroke',
//                        period: 2,
//                        scale: 10
//                    },
                    label: {
                        normal: {
                            formatter: '{b}',
                            position: 'right',
                            //offset: [1, -3],
                            show: true,
                            textStyle: {
                                color: "black"
                            }
                        }
                    },
                    itemStyle: {
                        normal: {
                            show: true,
                            color: '#2BB4B6'
                        }
                    },
                    data: [
                        {
                            name: '西区数据中心',
                            value:  [103.8356299898, 30.8539866078]
                        }
//                        , {
//                            name: '东区移动',
//                            value: [104.1361705032, 30.6409049504]
//                        }, {
//                            name: '双流移动',
//                            value: [104.0820616963, 30.4144635831]
//                        }
                    ]
                },
                {
                    type: 'scatter',
                    coordinateSystem: 'geo',
//                    showEffectOn: 'render',
                    zlevel: 3,
                    symbol: 'circle',
                    symbolSize: 30,
//                    rippleEffect: {
//                        brushType: 'stroke',
//                        period: 2,
//                        scale: 10
//                    },
                    label: {
                        normal: {
                            formatter: '{b}',
                            position: 'right',
                            //offset: [1, -3],
                            show: true,
                            textStyle: {
                                color: "black"
                            }
                        }
                    },
                    itemStyle: {
                        normal: {
                            show: true,
                            color: 'orange'
                        }
                    },
                    data: [
                       {
                            name: '东区数据中心',
                            value: [104.1361705032, 30.6409049504]
                        }
                    ]
                },
                {
                    type: 'scatter',
                    coordinateSystem: 'geo',
                    //howEffectOn: 'render',
                    zlevel: 3,
                    symbol: 'circle',
                    symbolSize: 30,
//                    rippleEffect: {
//                        brushType: 'stroke',
//                        period: 2,
//                        scale: 10
//                    },
                    label: {
                        normal: {
                            formatter: '{b}',
                            position: 'right',
                            //offset: [1, -3],
                            show: true,
                            textStyle: {
                                color: "black"
                            }
                        }
                    },
                    itemStyle: {
                        normal: {
                            show: true,
                            color: 'lime'
                        }
                    },
                    data: [
                        {
                            name: '西云数据中心',
                            value: [104.0820616963, 30.4144635831]
                        }
                    ]
                }
//                {
//                    name: '成都',
//                    type: 'map',
//                    mapType: 'cd',
//                    //selectedMode: 'multiple',
//                    label: {
//                        normal: {
//                            show: false
//                        },
//                        emphasis: {
//                            show: true
//                        }
//                    },
//                    itemStyle:{
//                        normal: {
//                            borderWidth: .5,//区域边框宽度
//                            borderColor: '#fff',//区域边框颜色
//                            areaColor:"#CCCCCC",//区域颜色
//                        },
////                        emphasis:{
////                            areaColor:"#AEDEA6",//区域颜色
////                        }
//
//                    },
//                    data: [],
//                    markPoint: {
//                        symbol: 'pin',
//                        symbolSize: 100,
//                        label: {
//                            normal: {
//                                show: true,
//                                color:"#fff",
//                                formatter: function (d) {
//                                    return d.name
//                                }
//                            }
//                        },
//                        itemStyle:{
//                            normal: {
//                                borderWidth: .5,//区域边框宽度
//                                borderColor: '#fff',//区域边框颜色
//                                color:"#2EC7C9",//区域颜色
//
//                            },
//                        },
//                        data: [
//                            {name: '西区移动', coord: [103.8356299898, 30.8539866078]},
//                            {name: '东区移动', coord: [104.1361705032, 30.6409049504]},
//                            {name: '双流移动', coord: [104.0820616963, 30.4144635831]}
//                        ]
//                    }
//                },
//
//                {
//                    type: 'effectScatter',
//                    coordinateSystem: 'geo',
//                    zlevel: 2,
//                    rippleEffect: {
//                        period: 4,
//                        brushType: 'stroke',
//                        scale: 4
//                    },
//                    label: {
//                        normal: {
//                            show: true,
//                            position: 'right',
//                            offset: [5, 0],
//                            formatter: '{b}'
//                        },
//                        emphasis: {
//                            show: true
//                        }
//                    },
//                    symbol: 'circle',
//                    symbolSize: function(val) {
//                        return 4 + val[2] / 10;
//                    },
//                    itemStyle: {
//                        normal: {
//                            show: false,
//                            color: '#f00'
//                        }
//                    },
//                    data: [
//                        {name: '西区移动', coord: [103.8356299898, 30.8539866078]},
//                        {name: '东区移动', coord: [104.1361705032, 30.6409049504]},
//                        {name: '双流移动', coord: [104.0820616963, 30.4144635831]}
//                    ],
//                },
            ]
        };
        myChart.setOption(option);
        myChart.resize({width: width, height: height});
        myChart.on('click', function (params) {
            console.log(params)
            if (params.seriesType == 'scatter') {
//                if (params.seriesIndex != 2) {
//                    top.layer.msg("暂未开放");
//                    return;
//                }
                location.href =contextPath + "/visualization/build/" + params.seriesIndex
                //window.open(contextPath + "/visualization/build/" + params.dataIndex);
            }
        });
    })

</script>
</html>