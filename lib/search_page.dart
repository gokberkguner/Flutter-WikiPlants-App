import 'package:flutter/material.dart';
import 'package:flutter_flower/flower_data.dart';
import 'package:search_page/search_page.dart';

class Flowers {
  final String name, topic;

  Flowers(this.name, this.topic);
}

class SearchingPage extends StatelessWidget {
  static List<FlowerInfo> flowersInfo = [
    FlowerInfo(
      1,
      name: 'Menekşe',
      topic: 'Evcil Çicekler',
      iconImage: 'assets/images/violet2.png',
      description:
          "500 farklı türü olan menekşeler genellikle bahar aylarında açarlar. Ancak serin ve gölgelik bir yerde bakarsanız yaz aylarına kadar menekşeleriniz çiçeklerini koruyacaktır.",
      images: [
        'https://cdn.yemek.com/uploads/2018/05/menekse-bakimi-1.jpg',
        'https://www.cicekal.net/blog/wp-content/uploads/2017/10/Hercai-Menekse-Anlami-e1509463294978.jpg',
        'https://i.pstimaj.com/img/78/740x0/5ea42ff666a97c6375104e98.jpg',
        'https://www.sifalibitkitedavisi.com/wp-content/uploads/2012/05/menekse-faydalari.jpg',
      ],
      sun: 'Güneşi çok sever fakat\ngüneş ışığını doğrudan almamalıdır.',
      degree:
          '14 derece altı ve 26 derece\nüstündeki sıcaklıklar iyi gelmemektedir.',
      water:
          'Bitkinin yapraklarına değil,\ndirekt toprağına su vermek gereklidir.',
    ),
    FlowerInfo(
      2,
      name: 'Orkide',
      topic: 'Evcil Çicekler',
      iconImage: 'assets/images/orchid2.png',
      description:
          "Artık her yerde görmeye alıştığımız orkidelerin de bakımı oldukça kolay. Az veya orta ışıkta, sıcak bir ortamda, ortalama sulamayla orkideleriniz aylarca çiçeklerini koruyabilir.",
      images: [],
      sun: 'Güneş ışığını doğrudan almamalıdır.',
      degree:
          '18 derece altı ve 29 derece\nüstündeki sıcaklıklar iyi gelmemektedir.',
      water: 'Ne fazla suyu ne de kurak kalmayı sever.',
    ),
    FlowerInfo(
      3,
      name: 'Kalanşo',
      topic: 'Evcil Çicekler',
      iconImage: 'assets/images/kalanche2.png',
      description:
          "Minik çiçekleriyle evinize ahenk katacak kalanşo gerçekten de zahmetsiz bitkilerden biri. Aslında bir çeşit sukulent olan kalanşo, hem güneşli hem de gölgeli ortamda kolayca yaşayabilir.",
      images: [],
      sun: 'Güneş ışığını doğrudan almamalıdır.',
      degree:
          'İdeal sıcaklığı 10-12 derece arasında\nolan bir bölge uygun olacaktır.',
      water:
          'Kışın haftada 1 gün yazın ise \nhaftada 2 gün sulamanız yeterlidir.',
    ),
    FlowerInfo(
      4,
      name: 'Begonya',
      topic: 'Evcil Çicekler',
      iconImage: 'assets/images/begonia2.png',
      description:
          "Balkonunuza biraz neşe katmak istiyorsanız begonya tam size göre. Tavandan asılan saksılara da dikebileceğiniz begonya, güneş ışığını sever.",
      images: [],
      sun: 'Güneş ışığını doğrudan almamalıdır.',
      degree:
          'İdeal sıcaklığı 16-18 derece arasında\nolan bir bölge uygun olacaktır.',
      water:
          'Kışın haftada 1-2 gün yazın ise \n2 günde 1 sulamanız yeterlidir.',
    ),
    FlowerInfo(
      5,
      name: 'Sukulent',
      topic: 'Evcil Çicekler',
      iconImage: 'assets/images/succulent2.png',
      description:
          "Aslında bir çöl bitkisi olan sukulentler, ne direkt güneş ışığını ne de çok gölge bir ortamı severler. Evinize en uygun sukulenti bulmak için farklı renklerde ve şekillerde olan bu bitkiden yararlanabilirsiniz.",
      images: [],
      sun: 'En az doğrudan veya kısmi güneş alması\ngereklidir.',
      degree:
          'İdeal sıcaklığı 7-29 derece arasında\nolan bir bölge uygun olacaktır.',
      water: 'Haftada 1 kere sulamak yeterlidir.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        foregroundColor: Colors.yellow,
        title: Text(
          '(Aşağıdaki butona basarak aramaya başla!)',
          style: TextStyle(color: const Color(0xff47455f), fontSize: 15),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: flowersInfo.length,
        itemBuilder: (context, index) {
          final FlowerInfo flowerInfo = flowersInfo[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff47455f),
                image: DecorationImage(
                  image: AssetImage('assets/images/databg.png'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      flowerInfo.name,
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                        fontFamily: 'Avenir',
                        fontSize: 32,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      flowerInfo.topic,
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],
                        fontFamily: 'Avenir',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),

      /*
      GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          flowersInfo.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff47455f),
                  image: DecorationImage(
                    image: AssetImage('assets/images/databg.png'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ,
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontFamily: 'Avenir',
                          fontSize: 34,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        flowersInfo.name,
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      )
      */
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff47455f),
        tooltip: 'Çicek araması.',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<FlowerInfo>(
            onQueryUpdate: (s) => print(s),
            items: flowersInfo,
            searchLabel: 'Evcil çiçek araması.',
            suggestion: Center(
              child: Text('İsme göre arama yapabilirsiniz.'),
            ),
            failure: Center(
              child: Text('Aradığınız çicek bulunamadı.'),
            ),
            filter: (flowersInfo) => [
              flowersInfo.name,
              flowersInfo.topic,
              //person.age.toString(),
            ],
            builder: (flowersInfo) => GridTile(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff47455f),
                    /*
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/databg.png',
                      ),
                    ),
                    */
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            flowersInfo.name,
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                              fontFamily: 'Avenir',
                              fontSize: 32,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            flowersInfo.topic,
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                              fontFamily: 'Avenir',
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}

/*
ListTile(
              title: Text(flowersInfo.name),
              subtitle: Text(flowersInfo.topic),
              trailing: Icon(Icons.arrow_forward_outlined),
            ),
 */
