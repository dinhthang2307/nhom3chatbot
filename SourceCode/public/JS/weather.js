/**
 * Created by USER on 12/23/2017.
 */
$.ajax(
    {
        url: "http://ip-api.com/json",
        type: "GET",
        dataType: "JSON",
        success: function (kq) {
            $.ajax(
                {

                    url: "https://api.apixu.com/v1/current.json?key=fc3eec73af0f490385745614171412&q=" + kq.city,
                    type: "GET",
                    dataType: "JSON",
                    success: function (data) {
                        var a = "https:" + data.current.condition.icon;
                        $('#tinhthanh').val(data.location.name);
                        $('#weather_cloud').append(data.current.cloud + ' %');
                        $('#weather_temperature').append(data.current.temp_c + ' &#8451;');
                        $('#weather_wind').append(Math.ceil(data.current.wind_mph * 1.609) + ' km/h');

                        $('#thoitiet1').attr('src', a);
                        $('#thoitiet2').attr('src', a);
                    }
                })
        }
    }
)