/*----------------------用户分析-----------------------*/
//驻店时长-天
(function () {

    var pie1 = echarts.init(document.getElementById("zdpie"));

    option = {

        title: {
            text: "顾客驻店时长",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['5分钟以内', '5-15分钟', '15-30分钟', '30-60分钟', '1-3小时','3小时以上']
        },
        series: [
            {
                name: '驻店时长',
                type: 'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 3, name: '5分钟以内' },
                    { value: 16, name: '1小时以上' },
                    { value: 22, name: '15-30分钟' },
                    { value: 166, name: '30-60分钟' },
                    { value: 147, name: '1-3小时' },
                    { value: 0, name: '>3小时' }
                ]
            }
        ]
    };

    pie1.setOption(option);
})();


//顾客活跃度分布-天
(function () {

    var pie2 = echarts.init(document.getElementById("hypie"));

    option = {

        title: {
            text: "顾客活跃度分布",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['高活跃', '中活跃', '低活跃', '沉睡用户','一天多次', '间隔一天', '间隔三天','间隔一周', '间隔三周','间隔一月', '间隔三月','间隔半年', '沉睡']
        },
        series: [
            {
                name: '活跃度分布',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '30%'],

                label: {
                    normal: {
                        position: 'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 203, name: '高活跃', selected: true },
                    { value: 81, name: '中活跃' },
                    { value: 16, name: '低活跃' },
                    { value: 3, name: '沉睡用户' }
                ]
            },
            {
                name: '活跃度分布',
                type: 'pie',
                radius: ['40%', '55%'],

                data: [
                    { value: 123, name: '一天多次' },
                    { value: 63, name: '间隔一天' },
                    { value: 17, name:  '间隔三天' },
                    { value: 61, name: '间隔一周' },
                    { value: 17, name: '间隔三周' },
                    { value: 3, name: '间隔一月' },
                    { value: 15, name: '间隔三月' },
                    { value: 1, name: '间隔半年' },
                    { value: 3, name: '沉睡' }

                ]
            }
        ]
    };
    pie2.setOption(option);
})();


//新老顾客分布-天
(function () {

    var pie3 = echarts.init(document.getElementById("xlpie"));

    option = {
        title: {
            text: '新老顾客分布',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['新顾客', '老顾客','3']
        },
        series: [
            {
                name: '新老顾客',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: 79, name: '新顾客' },
                    { value: 0 },
                    { value: 275, name: '老顾客' },
                  
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

    pie3.setOption(option);
})();


//驻店时长-周
(function () {

    var pie1 = echarts.init(document.getElementById("zdpiez"));

    option = {

        title: {
            text: "顾客驻店时长",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['5分钟以内', '5-15分钟', '15-30分钟', '30-60分钟', '1-3小时','3小时以上']
        },
        series: [
            {
                name: '驻店时长',
                type: 'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 21, name: '5分钟以内' },
                    { value: 142, name: '1小时以上' },
                    { value: 142, name: '15-30分钟' },
                    { value: 1254, name: '30-60分钟' },
                    { value: 1011, name: '1-3小时' },
                    { value: 14, name: '>3小时' }
                ]
            }
        ]
    };

    pie1.setOption(option);
})();


//顾客活跃度分布-周
(function () {

    var pie2 = echarts.init(document.getElementById("hypiez"));

    option = {

        title: {
            text: "顾客活跃度分布",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['高活跃', '中活跃', '低活跃', '沉睡用户','一天多次', '间隔一天', '间隔三天','间隔一周', '间隔三周','间隔一月', '间隔三月','间隔半年', '沉睡']
        },
        series: [
            {
                name: '活跃度分布',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '30%'],

                label: {
                    normal: {
                        position: 'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 1325, name: '高活跃', selected: true },
                    { value: 420, name: '中活跃' },
                    { value: 107, name: '低活跃' },
                    { value: 18, name: '沉睡用户' }
                ]
            },
            {
                name: '活跃度分布',
                type: 'pie',
                radius: ['40%', '55%'],

                data: [
                    { value: 700, name: '一天多次' },
                    { value: 400, name: '间隔一天' },
                    { value: 225, name:  '间隔三天' },
                    { value: 300, name: '间隔一周' },
                    { value: 120, name: '间隔三周' },
                    { value: 17, name: '间隔一月' },
                    { value: 80, name: '间隔三月' },
                    { value: 10, name: '间隔半年' },
                    { value: 18, name: '沉睡' }

                ]
            }
        ]
    };
    pie2.setOption(option);
})();


//新老顾客分布-周
(function () {

    var pie3 = echarts.init(document.getElementById("xlpiez"));

    option = {
        title: {
            text: '新老顾客分布',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['新顾客', '老顾客','3']
        },
        series: [
            {
                name: '新老顾客',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: 231, name: '新顾客' },
                    { value: 0 },
                    { value: 375, name: '老顾客' },
                  
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

    pie3.setOption(option);
})();


//驻店时长-月
(function () {

    var pie1 = echarts.init(document.getElementById("zdpiey"));

    option = {

        title: {
            text: "顾客驻店时长",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['5分钟以内', '5-15分钟', '15-30分钟', '30-60分钟', '1-3小时','3小时以上']
        },
        series: [
            {
                name: '驻店时长',
                type: 'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 21, name: '5分钟以内' },
                    { value: 142, name: '1小时以上' },
                    { value: 142, name: '15-30分钟' },
                    { value: 1254, name: '30-60分钟' },
                    { value: 1011, name: '1-3小时' },
                    { value: 14, name: '>3小时' }
                ]
            }
        ]
    };

    pie1.setOption(option);
})();


//顾客活跃度分布-月
(function () {

    var pie2 = echarts.init(document.getElementById("hypiey"));

    option = {

        title: {
            text: "顾客活跃度分布",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['高活跃', '中活跃', '低活跃', '沉睡用户','一天多次', '间隔一天', '间隔三天','间隔一周', '间隔三周','间隔一月', '间隔三月','间隔半年', '沉睡']
        },
        series: [
            {
                name: '活跃度分布',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '30%'],

                label: {
                    normal: {
                        position: 'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 1325, name: '高活跃', selected: true },
                    { value: 420, name: '中活跃' },
                    { value: 107, name: '低活跃' },
                    { value: 18, name: '沉睡用户' }
                ]
            },
            {
                name: '活跃度分布',
                type: 'pie',
                radius: ['40%', '55%'],

                data: [
                    { value: 700, name: '一天多次' },
                    { value: 400, name: '间隔一天' },
                    { value: 225, name:  '间隔三天' },
                    { value: 300, name: '间隔一周' },
                    { value: 120, name: '间隔三周' },
                    { value: 17, name: '间隔一月' },
                    { value: 80, name: '间隔三月' },
                    { value: 10, name: '间隔半年' },
                    { value: 18, name: '沉睡' }

                ]
            }
        ]
    };
    pie2.setOption(option);
})();


//新老顾客分布-月
(function () {

    var pie3 = echarts.init(document.getElementById("xlpiey"));

    option = {
        title: {
            text: '新老顾客分布',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['新顾客', '老顾客','3']
        },
        series: [
            {
                name: '新老顾客',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: 231, name: '新顾客' },
                    { value: 0 },
                    { value: 375, name: '老顾客' },
                  
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

    pie3.setOption(option);
})();

//驻店时长-2天
(function () {

    var pie1 = echarts.init(document.getElementById("zdpieu"));

    option = {

        title: {
            text: "顾客驻店时长",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['5分钟以内', '5-15分钟', '15-30分钟', '30-60分钟', '1-3小时','3小时以上']
        },
        series: [
            {
                name: '驻店时长',
                type: 'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 6, name: '5分钟以内' },
                    { value: 30, name: '1小时以上' },
                    { value: 46, name: '15-30分钟' },
                    { value: 386, name: '30-60分钟' },
                    { value: 300, name: '1-3小时' },
                    { value: 2, name: '>3小时' }
                ]
            }
        ]
    };

    pie1.setOption(option);
})();


//顾客活跃度分布-2天
(function () {

    var pie2 = echarts.init(document.getElementById("hypieu"));

    option = {

        title: {
            text: "顾客活跃度分布",
            x: 'center'
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: ['高活跃', '中活跃', '低活跃', '沉睡用户','一天多次', '间隔一天', '间隔三天','间隔一周', '间隔三周','间隔一月', '间隔三月','间隔半年', '沉睡']
        },
        series: [
            {
                name: '活跃度分布',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '30%'],

                label: {
                    normal: {
                        position: 'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: [
                    { value: 406, name: '高活跃', selected: true },
                    { value: 162, name: '中活跃' },
                    { value: 32, name: '低活跃' },
                    { value: 3, name: '沉睡用户' }
                ]
            },
            {
                name: '活跃度分布',
                type: 'pie',
                radius: ['40%', '55%'],

                data: [
                    { value: 246, name: '一天多次' },
                    { value: 126, name: '间隔一天' },
                    { value: 37, name:  '间隔三天' },
                    { value: 122, name: '间隔一周' },
                    { value: 34, name: '间隔三周' },
                    { value: 6, name: '间隔一月' },
                    { value: 30, name: '间隔三月' },
                    { value: 2, name: '间隔半年' },
                    { value: 3, name: '沉睡' }

                ]
            }
        ]
    };
    pie2.setOption(option);
})();


//新老顾客分布-2天
(function () {

    var pie3 = echarts.init(document.getElementById("xlpieu"));

    option = {
        title: {
            text: '新老顾客分布',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['新顾客', '老顾客','3']
        },
        series: [
            {
                name: '新老顾客',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: 95, name: '新顾客' },
                    { value: 0 },
                    { value: 364, name: '老顾客' },
                  
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

    pie3.setOption(option);
})();
