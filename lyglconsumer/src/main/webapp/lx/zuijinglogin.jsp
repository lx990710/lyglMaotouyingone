<%--
  Created by IntelliJ IDEA.
  User: qW
  Date: 2018/7/23
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath(); %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- jquery -->
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
<!-- bootstrap -->
<link rel="stylesheet" href="<%=path %>/js/boot/bootstrap/css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="<%=path %>/js/boot/bootstrap/css/bootstrap.min.css" >
<script type="text/javascript" src="<%=path %>/js/boot/bootstrap/js/bootstrap.min.js"></script>
<!-- addtabs -->
<link rel="stylesheet" href="<%=path %>/js/boot/bootStrap-addTabs/bootstrap.addtabs.css" >
<script type="text/javascript" src="<%=path %>/js/boot/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
<!-- table -->
<link rel="stylesheet" href="<%=path %>/js/boot/bootstrap-table/dist/bootstrap-table.css" >
<script type="text/javascript" src="<%=path %>/js/boot/bootstrap-table/dist/bootstrap-table.js"></script>
<script type="text/javascript" src="<%=path %>/js/boot/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- dialog -->
<link rel="stylesheet" href="<%=path %>/js/boot/bootstrap-dialog/dist/css/bootstrap-dialog.css" >
<script type="text/javascript" src="<%=path %>/js/boot/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<table id="table" class="table"></table>
<script type="text/javascript">
    $("#table").bootstrapTable({
        strictSearch:true,//设置精确匹配 还是模糊匹配     默认模糊匹配false
        pagination:true,//显示分页条
        pageNumber:1,//初始化 页数
        pageSize:6,//初始化 条数
        pageList:[6,12,20],//初始化 可选择的条数
        paginationLoop:false,//关闭分页的无限循环
        height:530,//高度
        undefinedText:"-",//有数据为空时 显示的内容
        striped:true,//斑马线
        showFooter:true,//表格底部角
        showRefresh:true,//刷新按钮
        showPaginationSwitch:true,//展示所有数据 和分页数据的切换按钮
        searchAlign:"left",//搜索框的显示位置
        paginationHAlign:"left",//分页按钮的显示位置
        paginationDetailHAlign:"right",//总页数 和条数的显示位置
        paginationPreText:"上一页",//设置上一页显示的文本

        paginationNextText:"下一页",//设置下一页显示的文本
        toolbar:"#so",
        sidePagination:"server",

        method:"post",
        contentType:"application/x-www-form-urlencoded",
        queryParams:function(){
            var sort=this.sortName;
            var order=this.sortOrder;
            var offset=(this.pageNumber-1)*this.pageSize;
            var limit=this.pageSize;
            var age =$("#age").val();
            return formToJson("where",limit,offset,sort,order,age);
        },
        url:"<%=request.getContextPath()%>/DubboLxController/getPerson.do",//获取数据的请求路径
        columns:[//绑定数据
            // {checkbox:true},
            {field:"ipadress",title:"ip地址"},
            {field:"idname",title:"设备名称",/* align:"center" 居中 */},
            {field:"denglushijian",title:"登录时间",/* align:"center" 居中 */},
            {field:"cz",title:"操作",
                formatter:function(value,row,index){
                    return "<button type='button' onclick='deletesipname("+row.pid+")' class='btn btn-danger'>删除</button>";
                }
            },
        ],
    })
    function formToJson(id,limit,offset,sort,order) {
        //序列化表当为数组对象
        var arr = $("#" + id).serializeArray();
        //准备拼接字符串
        var jsonStr = "";
        //拼接开始位置的{
        jsonStr += '{';
        //循环所有的
        for (var i = 0; i < arr.length; i++) {
            //拼接字符串     "name值":"value值",
            jsonStr += '"' + arr[i].name + '":"' + arr[i].value + '",'
        }
        //拼接上我们分页必要几个参数
        jsonStr +='"limit":"'+limit+'",';
        jsonStr +='"offset":"'+offset+'",';
        jsonStr +='"sort":"'+sort+'",';
        jsonStr +='"order":"'+order+'",';
        //去掉最后一个，
        jsonStr = jsonStr.substring(0, (jsonStr.length - 1));
        jsonStr += '}'
        var json = JSON.parse(jsonStr)
        return json
    }
    function deletesipname(pid) {
        alert(pid);
        if(confirm("是否确认要删除选中数据!!!")){
            $.ajax({
                url:"<%=request.getContextPath()%>/DubboLxController/deletesipname.do",
                type:"post",
                data:{"pid":pid},
                dataType:"text",
                traditional: true,//这里设置为true
                async:false,
                success:function(result){
                    if(result=="success"){
                        alert("删除成功");
                        $("#table").bootstrapTable("refresh",{pageNumber:1});
                    }
                },
                error:function(){
                    alert("删除失败");
                }
            })
        }
    }
</script>

</body>
</html>
