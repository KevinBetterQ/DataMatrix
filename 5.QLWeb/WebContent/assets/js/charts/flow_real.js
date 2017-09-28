
/*----------------------实时客流JS-----------------------*/


//客流量：动态数据+时间坐标轴
(function () {

    var trends = echarts.init(document.getElementById("kltrend"));

    option_inter = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#283b56'
                }
            }
        },
        legend: {
            data: ['客流量']
        },
        dataZoom: {
            show: false,
            start: 0,
            end: 100
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: true,
                data: []
            }
        ],
        yAxis: [
            {
                type: 'value',
                scale: true,
                name: '人数',
                //max: 30,
                min: 0,
                boundaryGap: [0.2, 0.2]
            }
        ],
        series: [
            {
                name: '客流量',
                type: 'line',
                itemStyle:{
                    noemal:{
                        color:'#78ADF5',
                        lineStyle:{
                            color:'#78ADF5'
                        }
                    }
                    
                },
                data: []
            }
        ]
    }

    setInterval(function () {
        axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

        var out_data = (Math.random() * 10 + 1653).toFixed(1) - 0;

        var data_inter_out = option_inter.series[0].data;

        if (data_inter_out.length <= 20) {
            data_inter_out.push(out_data);

            option_inter.xAxis[0].data.push(axisData);
        } else {
            data_inter_out.shift();
            data_inter_out.push(out_data);

            option_inter.xAxis[0].data.shift();
            option_inter.xAxis[0].data.push(axisData);
        }
        trends.setOption(option_inter);
    }, 5000);

    var data_inter_out = option_inter.series[0].data;

    var axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

    var out_data = (Math.random() * 10 + 1653).toFixed(1) - 0;
    data_inter_out.push(out_data);

    option_inter.xAxis[0].data.push(axisData);
    trends.setOption(option_inter);
})();



//入店量：动态数据+时间坐标轴
(function () {

    var trends = echarts.init(document.getElementById("rdtrend"));

    option_inter2 = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#283b56'
                }
            }
        },
        legend: {
            data: ['入店量']
        },
        dataZoom: {
            show: false,
            start: 0,
            end: 100
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: true,
                data: []
            }
        ],
        yAxis: [
            {
                type: 'value',
                scale: true,
                name: '人数',
                //max: 30,
                min: 0,
                boundaryGap: [0.2, 0.2]
            }
        ],
        series: [
            {
                name: '入店量',
                type: 'line',
                 itemStyle:{
                     normal:{
                         color:'#F7A71C',
                        lineStyle:{
                            color:'#F7A71C'
                        }
                     }
                    
                },
                data: []
            }
        ]
    }

    setInterval(function () {
        axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

        var out_data = (Math.random() * 10 + 421).toFixed(1) - 0;

        var data_inter_out = option_inter2.series[0].data;

        if (data_inter_out.length <= 20) {
            data_inter_out.push(out_data);

            option_inter2.xAxis[0].data.push(axisData);
        } else {
            data_inter_out.shift();
            data_inter_out.push(out_data);

            option_inter2.xAxis[0].data.shift();
            option_inter2.xAxis[0].data.push(axisData);
        }
        trends.setOption(option_inter2);
    }, 5000);

    var data_inter_out = option_inter2.series[0].data;

    var axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

    var out_data = (Math.random() * 10 + 421).toFixed(1) - 0;
    data_inter_out.push(out_data);

    option_inter2.xAxis[0].data.push(axisData);
    trends.setOption(option_inter2);
})();




//跳出量：动态数据+时间坐标轴
(function () {

    var trends = echarts.init(document.getElementById("tctrend"));

   option_inter3 = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#283b56'
                }
            }
        },
        legend: {
            data: ['跳出量']
        },
        dataZoom: {
            show: false,
            start: 0,
            end: 100
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: true,
                data: []
            }
        ],
        yAxis: [
            {
                type: 'value',
                scale: true,
                name: '人数',
                //max: 30,
                min: 0,
                boundaryGap: [0.2, 0.2]
            }
        ],
        series: [
            {
                name: '跳出量',
                type: 'line',
                data: []
            }
        ]
    }

    setInterval(function () {
        axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

        var out_data = (Math.random() * 30 + 158).toFixed(1) - 0;

        var data_inter_out = option_inter3.series[0].data;

        if (data_inter_out.length <= 20) {
            data_inter_out.push(out_data);

            option_inter3.xAxis[0].data.push(axisData);
        } else {
            data_inter_out.shift();
            data_inter_out.push(out_data);

            option_inter3.xAxis[0].data.shift();
            option_inter3.xAxis[0].data.push(axisData);
        }
        trends.setOption(option_inter3);
    }, 5000);

    var data_inter_out = option_inter3.series[0].data;

    var axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

    var out_data = (Math.random() * 10 + 158).toFixed(1) - 0;
    data_inter_out.push(out_data);

    option_inter3.xAxis[0].data.push(axisData);
    trends.setOption(option_inter3);
})();




