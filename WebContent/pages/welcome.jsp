<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/lanrenzhijia.css" />
<script src="<%=path %>/js/jquery-1.8.3.js"></script>
<script src="<%=path %>/js/lanrenzhijia.js"></script>
</head>
<body id="wel_bg" style="background-image: url('<%=path %>/images/login/user_all_bg.gif');">
<div class="full_bg zoom">
  <div class="warrper m_auto">
    <!--main-->
    <div class="game_pic_tab zoom mt_10" id="container">
      <div id="example2-item-0" class="game_pic"><img src="<%=path %>/images/lanrenzhijia1.jpg" /></div>
      <div id="example2-item-1" class="game_pic"><img src="<%=path %>/images/lanrenzhijia2.jpg" /></div>
      <div id="example2-item-2" class="game_pic"><img src="<%=path %>/images/lanrenzhijia3.jpg" /></div>
      <div id="example2-item-3" class="game_pic"><img src="<%=path %>/images/lanrenzhijia4.jpg" /></div>
      <div id="example2-item-4" class="game_pic"><img src="<%=path %>/images/lanrenzhijia5.jpg" /></div>
      <div id="example2-click-prev" class="game_pic_icon game_pic_icon_l">Prev</div>
      <div id="example2-click-next" class="game_pic_icon game_pic_icon_r">Next</div>
      <div class="prev_l"></div>
      <div class="next_r"></div>
    </div>
    <!-- main -->
  </div>
</div>
<script> 
$(document).ready(
	function() {

		var example2 = new Mg({
			reference : "example2",
			click : {
				activated : [ 0 ],
				cycle : true,
				multiMode : 'centered',
				interactive : true,
				multiLess : 2,
				multiPlus : 2,
				auto : 3000,
				autoSlow : 5000
			}
		});
		example2.click.onEvent = function() {
			$("#" + this.reference + "-item-" + this.deactivated)
					.removeClass("active");
			$("#" + this.reference + "-item-" + this.activated)
					.addClass("active");
			$('[id^="' + this.reference + '-item-"]').css("display",
					"none");
			//
			var arr = this.multiActivated;
			for ( var i = 0; i < arr.length; i++) {
				var depth = Math.abs(example2.mapDistanceReverse(
						this.multiPlus, i, arr.length, 0)); // Parameters: center, num, max, min
				var path = $("#" + this.reference + "-item-" + arr[i]);
				path.css("position", "absolute").css("z-index", depth);
				path.css("display", "block")
						.css("position", "absolute").animate({
							left : ((i - 2) * 604 + 190) + "px"
						}, 500);
			}
		}
		example2.init();

	}
);
</script>
</body>
</html>