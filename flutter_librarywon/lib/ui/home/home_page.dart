import 'package:flutter/material.dart';
import 'package:flutter_librarywon/ui/home/home_view_model.dart';
import 'package:flutter_librarywon/ui/widgets/title_text_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: TitleTextWidget(text: title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 도시 선택 버튼을 가로로 배열
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => model.fetchWeather('Seoul'),
                        child: const Text('서울'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () => model.fetchWeather('New York'),
                        child: const Text('뉴욕'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () => model.fetchWeather('London'),
                        child: const Text('런던'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () => model.fetchWeather('Tokyo'),
                        child: const Text('도쿄'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // 선택한 도시의 날씨 정보 표시
                Text('도시: ${model.cityName ?? "-"}'),
                Text('기온: ${model.temperature?.toStringAsFixed(1) ?? "-"}°C'),
                Text('습도: ${model.humidity ?? "-"}%'),
                Text('기압: ${model.pressure ?? "-"} hPa'),
                Text('풍속: ${model.windSpeed ?? "-"} m/s'),
                if (model.error != null) // 에러 메시지 표시
                  Text(
                    '오류: ${model.error}',
                    style: TextStyle(color: Colors.red),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
