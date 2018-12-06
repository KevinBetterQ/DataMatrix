<%@ page language="java" contentType="text/html; charset=GB18030" import="java.util.*" 
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<!-- ���� ECharts �ļ� -->
    <script src="js/echarts.min.js"></script>
</head>


<body>
hello
<% String str ="yes"; %>
<%!long i = 1,j=1; %>
	<!-- ΪECharts׼��һ���߱���С����ߣ���Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // ����׼���õ�dom����ʼ��echartsʵ��
        var myChart = echarts.init(document.getElementById('main'));

        var app = {};
        option = null;
        option = {
            title : {
                text: '��ͼ������ø���ʾ��',
                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: ['ֱ�ӷ���','�ʼ�Ӫ��','���˹��','��Ƶ���','��������']
            },
            series : [
                {
                    name: '������Դ',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:[
                        {value:335, name:'ֱ�ӷ���'},
                        {value:310, name:'�ʼ�Ӫ��'},
                        {value:234, name:'���˹��'},
                        {value:135, name:'��Ƶ���'},
                        {value:1548, name:'��������'}
                    ],
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };

        app.currentIndex = -1;

        setInterval(function () {
            var dataLen = option.series[0].data.length;
            // ȡ��֮ǰ������ͼ��
            myChart.dispatchAction({
                type: 'downplay',
                seriesIndex: 0,
                dataIndex: app.currentIndex
            });
            app.currentIndex = (app.currentIndex + 1) % dataLen;
            // ������ǰͼ��
            myChart.dispatchAction({
                type: 'highlight',
                seriesIndex: 0,
                dataIndex: app.currentIndex
            });
            // ��ʾ tooltip
            myChart.dispatchAction({
                type: 'showTip',
                seriesIndex: 0,
                dataIndex: app.currentIndex
            });
        }, 1000);

        
        

        // ʹ�ø�ָ�����������������ʾͼ��
        myChart.setOption(option);
    </script>
</body>
</html>


