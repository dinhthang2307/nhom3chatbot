/**
 * Created by Phong on 11/16/2017.
 */
$("#mytext_amnhac").emoji({
    button: "#iconchat_amnhac",
    showTab: true,
    animation: 'slide',
    icons: [{
        name: "Emoji",
        path: "../public/Images/icon_emoji/",
        maxNum: 51,
        file: ".png",
        placeholder: ":{alias}:",
        alias: {
            1: "hehe",
            2: "haha",
            3: "tushe",
            4: "a",
            5: "ku",
            6: "lu",
            7: "kaixin",
            8: "han",
            9: "lei",
            10: "heixian",
            11: "bishi",
            12: "bugaoxing",
            13: "zhenbang",
            14: "qian",
            15: "yiwen",
            16: "yinxian",
            17: "tu",
            18: "yi",
            19: "weiqu",
            20: "huaxin",
            21: "hu",
            22: "xiaonian",
            23: "neng",
            24: "taikaixin",
            25: "huaji",
            26: "mianqiang",
            27: "kuanghan",
            28: "guai",
            29: "shuijiao",
            30: "jinku",
            31: "shengqi",
            32: "jinya",
            33: "pen",
            34: "aixin",
            35: "xinsui",
            36: "meigui",
            37: "liwu",
            38: "caihong",
            39: "xxyl",
            40: "taiyang",
            41: "qianbi",
            42: "dnegpao",
            43: "chabei",
            44: "dangao",
            45: "yinyue",
            46: "haha2",
            47: "shenli",
            48: "damuzhi",
            49: "ruo",
            50: "OK",
            51: "emoji_cat"
        },
    }]
});
$("#emoji_container_3").appendTo("#iconchat_amnhac");
$("#emoji_container_3").css("top","");
$("#emoji_container_3").css("left","");
$("#emoji_container_3").css("right","0");
$("#emoji_container_3").css("bottom","79px");
$( ".emoji_tab" ).remove();
