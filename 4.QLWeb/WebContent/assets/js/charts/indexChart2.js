//入店率
(function () {
    var myChart = echarts.init(document.getElementById("widget-chart-box-1"));

    var labelTop = {

        normal: {
            label: {
                show: true,
                position: 'center',
                formatter: '{b}',
                textStyle: {
                    baseline: 'bottom'
                }
            },
            labelLine: {
                show: false
            }

        }
    };
    var labelFromatter = {
        normal: {
            label: {
                formatter: function (params) {
                    return 100 - params.value + '%'
                },
                textStyle: {
                    baseline: 'center'
                }
            }
        },
    }
    var labelBottom = {
        normal: {
            color: '#ccc',
            label: {
                show: true,
                position: 'center'
            },
            labelLine: {
                show: false
            }
        },
        emphasis: {
            color: '#ccc'
        }
    };
    var radius = [50, 44];
    option = {



        legend: {
            x: 'center',
            y: 'center',

        },

        grid: {
            x: 0,
            y: 0,
            x2: 0,
            y2: 0
        },

        toolbox: {
            show: true,
            feature: {
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            width: '50%',
                            height: '50%',
                            itemStyle: {
                                normal: {
                                    label: {
                                        formatter: function (params) {
                                            return 'other\n' + params.value + '%\n'
                                        },
                                        textStyle: {
                                            baseline: 'middle'
                                        }
                                    }
                                },
                            }
                        }
                    }
                }

            }
        },
        series: [
            {
                type: 'pie',

                radius: radius,
                x: '0%', // for funnel
                itemStyle: labelFromatter,
                data: [
                    { name: 'other', value: 80, itemStyle: labelBottom },
                    { name: '', value: 20, itemStyle: labelTop }
                ]
            }

        ],
        animation: false
    };


    myChart.setOption(option);

})();


//跳出率
(function () {
  
    var myChart2 = echarts.init(document.getElementById("widget-chart-box-2"));

    var labelTop = {

        normal: {
            label: {
                show: true,
                position: 'center',
                formatter: '{b}',
                textStyle: {
                    baseline: 'bottom'
                }
            },
            labelLine: {
                show: false
            }

        }
    };
    var labelFromatter = {
        normal: {
            label: {
                formatter: function (params) {
                    return 100 - params.value + '%'
                },
                textStyle: {
                    baseline: 'center'
                }
            }
        },
    }
    var labelBottom = {
        normal: {
            color: '#ccc',
            label: {
                show: true,
                position: 'center'
            },
            labelLine: {
                show: false
            }
        },
        emphasis: {
            color: '#ccc'
        }
    };
    var radius = [50, 44];
    option = {



        legend: {
            x: 'center',
            y: 'center',

        },

        grid: {
            x: 0,
            y: 0,
            x2: 0,
            y2: 0
        },

        toolbox: {
            show: true,
            feature: {
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            width: '50%',
                            height: '50%',
                            itemStyle: {
                                normal: {
                                    label: {
                                        formatter: function (params) {
                                            return 'other\n' + params.value + '%\n'
                                        },
                                        textStyle: {
                                            baseline: 'middle'
                                        }
                                    }
                                },
                            }
                        }
                    }
                }

            }
        },
        series: [
            {
                type: 'pie',

                radius: radius,
                x: '0%', // for funnel
                itemStyle: labelFromatter,
                data: [
                    { name: 'other', value: 94, itemStyle: labelBottom },
                    { name: '', value: 6, itemStyle: labelTop }
                ]
            }

        ],
        animation: false
    };

    myChart2.setOption(option);
})();



//顾客分析
(function () {
    var myChart = echarts.init(document.getElementById("index-pie-1"));

    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['高活跃', '中活跃', '低活跃', '新用户']
        },
        toolbox: {
            show: true,
            feature: {
                mark: { show: true },
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'center',
                            max: 1548
                        }
                    }
                },
            }
        },
        calculable: true,
        series: [
            {
                name: '顾客分析',
                type: 'pie',
                radius: ['50%', '70%'],
                itemStyle: {
                    normal: {
                        label: {
                            show: false
                        },
                        labelLine: {
                            show: false
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                            position: 'center',
                            textStyle: {
                                fontSize: '20',
                                fontWeight: 'bold'
                            }
                        }
                    }
                },
                data: [
                    { value: 203, name: '高活跃' },
                    { value: 56, name: '中活跃' },
                    { value: 16, name: '低活跃' },
                    { value: 79, name: '新用户' },
                ]
            }
        ]
    };



    myChart.setOption(option);
})();


//驻店时长分布
(function () {
    var myChart = echarts.init(document.getElementById("index-bar-1"));

    option = {
        color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: ['<5', '5-15', '15-30', '30-60', '1-3h', '>3h'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '直接访问',
                type: 'bar',
                barWidth: '60%',
                data: [3, 16, 22, 166, 127, 4]
            }
        ]
    };




    myChart.setOption(option);
})();


//用户趋势
(function () {
    var myChart = echarts.init(document.getElementById("index-line-1"));

    option = {

        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['客流量', '入店量'],
            x: "right"
        },

        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
        },
        yAxis: {
            type: 'value',
            axisLabel: {
                formatter: '{value} '
            }
        },
        series: [
            {
                name: '客流量',
                type: 'line',
                data: [1920,1769,1753,1425,1913,1523,1429],
                markPoint: {
                    data: [
                        { type: 'max', name: '最大值' },
                        { type: 'min', name: '最小值' }
                    ]
                },
                markLine: {
                    data: [
                        { type: 'average', name: '平均值' }
                    ]
                }
            },
            {
                name: '入店量',
                type: 'line',
                data: [530,421,362,398,398,485,321,314],
                markPoint: {
                    data: [
                        { name: '周最低', value: -2, xAxis: 1, yAxis: -1.5 }
                    ]
                },
                markLine: {
                    data: [
                        { type: 'average', name: '平均值' },
                        [{
                            symbol: 'none',
                            x: '90%',
                            yAxis: 'max'
                        }, {
                            symbol: 'circle',
                            label: {
                                normal: {
                                    position: 'start',
                                    formatter: '最大值'
                                }
                            },
                            type: 'max',
                            name: '最高点'
                        }]
                    ]
                }
            }
        ]
    };





    myChart.setOption(option);
})();

