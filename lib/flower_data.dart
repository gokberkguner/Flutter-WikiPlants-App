class FlowerInfo {
  final int position;
  final String name;
  final String topic;
  final String iconImage;
  final String description;
  final List<String> images;
  final String sun;
  final String degree;
  final String water;

  FlowerInfo(this.position,
      {this.name,
      this.topic,
      this.iconImage,
      this.description,
      this.images,
      this.sun,
      this.degree,
      this.water});
}

List<FlowerInfo> flowers = [
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
    images: [
      'https://orkidedunyasi.net/wp-content/uploads/2020/10/Orkide-nasil-cicek-actirilir-1-1024x576.jpg',
      'https://www.bestpriceturkey.com/upload/resim/betul-gurkan-5f4e8f2d391534d113cf2143f1221c5d3cb7f59c-0.jpg',
      'https://foto.haberler.com/haber/2020/05/21/orkide-bakimi-asil-yapilir-13246382_3151_o.jpg',
      'https://imgrosetta.mynet.com.tr/file/11800913/11800913-728xauto.jpg',
    ],
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
    images: [
      'https://i.evimdergisi.com.tr/wp-content/uploads/2021/01/kalanso.jpg',
      'https://alternatifdunyam.com/wp-content/uploads/2020/10/kalan%C3%A7o-7-800x445.jpeg',
      'https://i12.haber7.net//haber/haber7/photos/2019/16/kalanso_cicegi_nasil_bakilir_kalanso_cicegi_nasil_cogaltilir_1555769316_2575.jpg',
      'https://www.gezenadam.com/flora/images/640X480/xx784.jpg',
    ],
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
    images: [
      'https://www.gigbi.com/blog/wp-content/uploads/2016/12/begonya-cicegi-6.jpg',
      'https://i.nefisyemektarifleri.com/2018/11/05/begonya-cicegi-bakimi-cogaltilmasi-sulama-teknikleri-1.jpg',
      'https://img.bilgihanem.com/wp-content/uploads/2016/08/begonya-cicegi-hakkinda-bilgiler-1024x597.jpg',
      'https://cicekambari.com/wp-content/uploads/2020/12/begonyalarr-e1607002753511-1024x768.jpg',
    ],
    sun: 'Güneş ışığını doğrudan almamalıdır.',
    degree:
        'İdeal sıcaklığı 16-18 derece arasında\nolan bir bölge uygun olacaktır.',
    water: 'Kışın haftada 1-2 gün yazın ise \n2 günde 1 sulamanız yeterlidir.',
  ),
  FlowerInfo(
    5,
    name: 'Sukulent',
    topic: 'Evcil Çicekler',
    iconImage: 'assets/images/succulent2.png',
    description:
        "Aslında bir çöl bitkisi olan sukulentler, ne direkt güneş ışığını ne de çok gölge bir ortamı severler. Evinize en uygun sukulenti bulmak için farklı renklerde ve şekillerde olan bu bitkiden yararlanabilirsiniz.",
    images: [
      'https://www.sukulentler.com/wp-content/uploads/2020/06/Echeveria-Agavoides.jpg',
      'https://www.salonbitkileri.com/image/cache/cache/1-1000/226/main/a941-echeveria_chihuahuensis_46016-0-4-0-1-4-500x500.jpg',
      'https://www.salonbitkileri.com/image/cache/cache/1-1000/200/main/e9eb-2.2-0-4-0-1-4-500x500.jpg',
      'https://st3.myideasoft.com/idea/er/22/myassets/products/086/guzellile-kralicesi-echeveria-agavoides-sukulent.jpg?revision=1566542253',
    ],
    sun: 'En az doğrudan veya kısmi güneş alması\ngereklidir.',
    degree:
        'İdeal sıcaklığı 7-29 derece arasında\nolan bir bölge uygun olacaktır.',
    water: 'Haftada 1 kere sulamak yeterlidir.',
  ),
];
