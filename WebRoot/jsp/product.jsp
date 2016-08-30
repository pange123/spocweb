<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>管理员作品管理界面</title>
<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="../video/video-js.min.css" rel="stylesheet">
<link href="../css/admin1.css" type="text/css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../video/video.min.js"></script>
<script src="../js/run_main.js"></script>
<script>
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
</script>
</head>


<body>
	<div class="container-fluid">
		<div class="container">

			<div class="row bg">
				<div class="col-md-2 col-xs-3 text-while">思博课网站管理</div>
				<div class="col-md-7 col-xs-6 text-while">
					<!-- <a style="color: #fff" href="" target=main>修改口令</a>
             &nbsp;&nbsp;  -->
					<a style="color: #fff"
						onclick="if (confirm('确定要退出吗？')) return true; else return false;"
						href="exit.do" target=_top>退出系统</a>
				</div>
				<div class="col-md-3 col-xs-3 bg2"></div>
			</div>

			<div class="row">
				<div class="col-md-2 col-xs-2">
					<table class=" table admin_table_1">
						<tr>
							<td valign=top align=middle>
								<table cellspacing=0 cellpadding=0 width="100%" border=0>
									<tr>
										<td height=10></td>
									</tr>
								</table>

								<table class="admin_table">

									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(1) href="javascript:void(0);">成员管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>

								<table id=child1 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>

										<td><a class=menuchild href="user.do?flag=1">老师管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="user.do?flag=2">学生管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>


								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(2) href="javascript:void(0);">荣誉管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
                             <table id=child2 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="honors.do">荣誉信息管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent href="products.do">作品管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>

								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(4) href="javascript:void(0);">业务管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child4 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="applyAffair.do?flag=0">业务申请管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="applyAffair.do?flag=1">业务处理管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="dealAT.do">业务类型管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(5) href="javascript:void(0);">报名管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child5 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="applys.do">报名申请管理</a></td>
									</tr>
								
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent class=menuparent onclick=expand(6)
											href="javascript:void(0);">收费管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child6 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="service.do">服务类别管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="TypeCategory.do">类别分类管理</a></td>
									</tr>
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="chargeStandard.do">收费标准管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
								<table class="admin_table">
									<tr height=22>
										<td style="padding-left: 30px" background=../image/menu_bt.jpg><a
											class=menuparent onclick=expand(7) href="javascript:void(0);">组别管理</a></td>
									</tr>
									<tr height=4>
										<td></td>
									</tr>
								</table>
								<table id=child7 style="display: none"
									class="text-left admin_table">
									<tr height=20>
										<td width=30><img src="../image/menu_icon.gif"></td>
										<td><a class=menuchild href="group.do">组别信息管理</a></td>
									</tr>
									<tr height=4>
										<td colspan=2></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

				</div>
				<div class="col-md-10 col-xs-10">
                     
                        <div class=" row text-right" style="margin-top:10px;">
                        	<div class="col-md-12 col-xs-12">
                                <form class="form-inline">
                                    <div class="form-group">
                                        <label for="exampleInputName2">作品搜索</label>
                                        <input type="text" class="form-control" id="exampleInputName2" placeholder="作品名称">
                                    </div>
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </form>
                            </div>
                        </div>
                        
                        <div class="row admin_black admin_spacing">
                            <div class="col-md-3 col-xs-5">作品管理信息表</div>
                            <div class="col-md-6 hidden-xs"></div>
                            <div class="col-md-3 col-xs-7">
                                <span>
                                    <a href="#"  data-toggle="modal" data-target="#myModal">
                                    <img src="../image/add.gif" width="10" height="10" /> 添加</a>   &nbsp;
                                    <a href="javascript:deleteMember()">
                                    <img src="../image/del.gif" width="10" height="10" /> 删除</a>    &nbsp;&nbsp;
                                    <a  data-toggle="modal" data-target=".bs-example-modal-lg" href="#">
                                    <img src="../image/edit.gif" width="10" height="10" /> 编辑</a>   &nbsp;
                                </span>
                            </div>
                        </div>
                        
                        
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">添加作品</h4>
                              </div>
                              <div class="modal-body">
                                <table class="table">
                                	<tr>
                                    	<td><label for="x">作品名称</label></td>
                                        <td><input type="text" class="form-control"></td>
                                        <td><label for="xx">完成时间</label></td>
                                        <td><input type="text" class="form-control"></td>
                                    </tr>
                                    <tr>
                                    	<td><label for="x">参与学生</label></td>
                                        <td><input type="text" class="form-control"></td>
                                        <td><label for="xx">指导老师</label></td>
                                        <td><input type="text" class="form-control"></td>
                                    </tr>
                                    <tr>
                                    	<td><label for="x">作品描述</label></td>
                                        <td colspan="3"><textarea type="text" class="form-control"></textarea></td>
                                    </tr>
                                    <tr>
									<td><label for="x">上传预览图</label></td>
									<td colspan="3"><img id="imgPre" src="" width="100px" height="120px" style="display: block;" /> <input type="file" name="imgOne"
										id="imgOne" onchange="preImg(this.id,'imgPre');" />
                                    </td>
									</tr>
                                </table>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                              </div>
                            </div>
                          </div>
                        </div>
                        
                        
                        
                        
                        
                        
                        <div id="tableBox">
                            <div class="admin_roll">
                            	<form action="deleteproducts.do" method="post" name="myform" id="myform" onSubmit="return check()">
                            		  <table class="table" id="tabBox">
	                                    <tr>
	                                        <td></td>
	                                        <td>作品名称</td>
	                                        <td>作品描述</td>
	                                        <td>完成时间</td>
	                                        <td>参与学生</td>
	                                        <td>指导老师</td>
	                                        <td>基本操作</td>
	                                        <td>是否显示</td>
	                                    </tr>
	                                    <c:forEach items='${products1}' var="product">
	                                    <tr>
	                                    	
		                                    	<td><label><input type="checkbox" name="products" id="products" value="${product.pid}" class="ck"/></label></td>
		                                        <td>${product.name}</td>
		                                        <td>${product.description}</td>
		                                        <td>${product.time}</td>
		                                        <td>${product.student}</td>
		                                        <td>${product.teacher}</td>
		                                        <td><a href="#"  data-toggle="modal" data-target="#myModal2">查看详情</a></td>
		                                        <td>
		                                        	<c:if test="${product.flag==1}">
			                                        	<label class="radio-inline">
			                                              	 是
			                                            </label>
		                                            </c:if>
		                                            <c:if test="${product.flag==0}">
			                                            <label class="radio-inline">
			                                              	 否
			                                            </label>
		                                            </c:if>
		                                       </td>	                                                     	
                                       <!-- Modal -->
                                       <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">作品详情</h4>
                                              </div>
                                              <div class="modal-body">
                                             		<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls ="none" width="400px" height="200px"
                                                      poster="http://video-js.zencoder.com/oceans-clip.png"
                                                      data-setup="{}">                                  
                                                    <source src="${product.pro_path}" type='video/mp4' />                                                   
                                                    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track>
                                                    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track>
                                                    </video>
                                              </div>
                                              <div class="modal-body">
                                              </div>
                                              <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <!-- Modal -->
                                               
                                    </tr>
                                    </c:forEach>
                                	</table>
                            	</form>
	                              
                        </div>
                            <div class="text-right" style="margin-right:60px;">
                                <label><input type="checkbox" name="0" class="ck-all"/>全选</label>
                                <label><input type="checkbox" name="0" class="ck-re"/>反选</label>
                            </div>
                        </div>
                        <script type="text/javascript">
						function deleteMember() {

							$('#myform').submit();

						}
						function check()
						{
						 var checkboxs=document.getElementsByName("products");
						 var m=0;
						  for(var i=0;i<checkboxs.length;i++)
							{
								if(checkboxs[i].checked==false)
								{
									m=m+1;
								}
							}
							if(m==i)
							{
								alert("请选择您要删除的选项！！！");
								return false;
								}
						}
						</script>
                        <script>
                            var tabBox = document.getElementById("tabBox"),
                                //tab = tabBox.getElementsByClassName("tab"),
                                tab = [0,1,2,3],
                                tabShow = tabBox.getElementsByClassName("tab-show");
                        
                            function Index1(val){
                                for(var i =0; i<tab.length;i++){
                                    if(tab[i] == val){
                                        return i
                                    }
                                }
                            }
                        
                        
                            allCkBox(); //js全选反选调用
                            allCkBox("tableBox2"); //可以重复使用哦，传个外层 id 进去就可以了
                        
                            function allCkBox(id){
                                //声明各种变量
                                var tableBox = document.getElementById(id||"tableBox"),
                                    table = tableBox.getElementsByTagName("table")[0],
                                    ck = tableBox.getElementsByClassName("ck"),
                                    tableFoot = tableBox.getElementsByClassName("table-foot")[0],
                                    ckAll = tableBox.getElementsByClassName("ck-all")[0],
                                    ckRe = tableBox.getElementsByClassName("ck-re")[0];
                        
                                //js全选
                                ckAll.onchange = function(){
                                    allCk(this.checked);
                                };
                        
                                //js反选
                                ckRe.onchange = function(){
                                    reCk();
                                };
                        
                                //全选函数
                                function allCk(bool){
                                    for(var i =0; i<ck.length;i++){
                                        ck[i].checked = bool;
                                    }
                                }
                        
                                //反选函数 by:<a href="http://www.51xuediannao.com/">懒人建站</a>
                                function reCk(){
                                    for(var i =0; i<ck.length;i++){
                                        ck[i].checked ? ck[i].checked = false : ck[i].checked = true;
                                    }
                                }
                            }
                        </script>
            </div>
        </div>
    </div>
</div>
</body>
</html>