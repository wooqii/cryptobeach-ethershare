import 'dart:async';
import 'package:ethershare/src/utils/web3.dart' as Web3;

class StoryModel {
  String id;
  String title;
  String description;
  String hostName;
  String imageUrl;
  DateTime endDate;
  int current;
  int goal;
  String accountId;

  StoryModel(
      String id,
      String imageUrl,
      String title,
      String description,
      String hostName,
      DateTime endDate,
      int current,
      int goal,
      String accountId) {
    this.id = id;
    this.title = title;
    this.description = description;
    this.hostName = hostName;
    this.imageUrl = imageUrl;
    this.endDate = endDate;
    this.current = current;
    this.goal = goal;
    this.accountId = accountId;
  }
}

class StoryService {
  List<StoryModel> mockStories = [
    new StoryModel(
        'cat',
        'https://happybean-phinf.pstatic.net/20180809_282/hlog_s02634_1533825103418skdoq_JPEG/IMG_7856-%EB%A9%94%EC%9D%B8jpg?type=w720',
        '희망의 소리를 들려주세요!',
        '''
1,000명 중 2~3명의 신생아가 난청으로 태어납니다. 
시끄러운 청소기 소리, 아름다운 피아노 소리 그리고 엄마의 '사랑한다'는 마음 가득 차오르는 소리조차 들을 수 없는 아이들입니다.
어느 날 갑자기 나는 큰 소리에도 울지 않고 놀라지 않는 아이를 보며 그저 의젓하고 조용한 아이라고만 생각했던 다희의 엄마는 감기인 줄로만 알고 찾아갔던 병원에서 들은 뜻밖의 진단에 마음이 내려 앉았습니다.
'고도난청'이라 소리를 들을 수 없다는 의사 이야기에 눈물조차 나지 않을 정도로 깊은 슬픔에 빠졌습니다. 
"우리 다희가 소리를 들을 방법은 없을까요??"
소리 없는 세상을 살아가는 이 아이들을 위한 방법은 없는 걸까요?
잃어버린 소리, 잃어버린 일상, 들리지 않는 꿈
소리를 듣지 못한다는 의사선생님의 이야기에 몇 번이고 검사를 다시 받았지만 검사결과는 변하지 않았습니다. 
고도난청이라 인공달팽이관 수술을 받으면 들을 수 있다는 말조차 위로되지 않았던 그 때, 엄마는 큰 소리로 불러도 돌아보지 않는 아이를 바라보며 막연한 현실에 눈물이 흘렀습니다. 
'큰 소리가 나도 놀라지 않는 아이를 보며 의젓하다고만 생각한 자신이 너무나도 원망스럽습니다.' 
매일 자책하던 아이의 엄마는 언어발달시기를 놓칠세라 서둘러 인공달팽이관 수술을 하려고 했지만 비싼 수술비에 또 다시 막막한 현실을 마주하게 됩니다.
아이에게 무엇이라도 다 해주고 싶었던 엄마의 마음마저 외면하는 이 현실로 인해 우리에게는 당연한 소리이고 당연한 일상이라서 꿈꿀 수 있었던 그 희망이 이들에겐 절망이 되어버렸습니다.
잃어버린 소리와 일상을 되찾을 수 있도록 들리는 꿈을 선물해 주세요!
We Can hear, We Can speak and We Can Dream!
청각장애를 가졌다고 해서 들을 수 없는 건 아닙니다. 귓속 달팽이관에 청신경이 살아있다면 인공달팽이관 수술로 잃어버린 소리를 되찾을 수 있습니다. 
선천적인 청각장애어린이라도 3세 이전에 수술하고 지속적인 언어재활치료를 받으면 듣고 말할 수 있으며 일반학교에 다닐 확률이 90%이상입니다. 
하지만 청각장애를 가진 많은 아이들이 어려운 경제사정으로 수술비와 지속적인 언어재활을 감당하지 못해 수술할 시기를 놓치고 소리를 들을 수 있는 기회마저 잃어가고 있습니다.
듣지 못하는 것은 다양한 꿈을 가질 수 있는 기회조차 제한되는 것을 의미합니다.
"보이지 않으면 사물에서 멀어지지만, 들리지 않으면 사람에게서 멀어집니다." _헬렌켈러
청각장애 어린이에게 소리와 꿈을 선물해 주세요~!
사랑의달팽이는 인공달팽이관 수술을 받으면 소리를 들을 수 있지만, 가정 경제의 어려움으로 수술을 받지 못하는 아이들에게 수술비와 언어재활치료비를 지원합니다.
여러분의 콩 하나하나가 모여 한 아이가 또래 아이와 같이 다양한 꿈을 꾸며 살아가는 소중한 삶의 소리를 선물받을 수 있습니다.
듣지 못한다는 제한에 놓여 일상과 꿈마저 한계에 놓이지 않도록, 청각장애 어린이에게 여러분의 가치있는 콩을 선물해 주세요!
''',
        '사랑의달팽이',
        new DateTime.utc(2018, 9, 18),
        2,
        8,
        '0x7af3642918d50d634a87231b7b3244a696a37a03'),
    new StoryModel(
        'dog',
        'https://happybean-phinf.pstatic.net/20180816_182/hlog_m01484_1534400149044doQcJ_JPEG/KakaoTalk_20180816_151242683.jpg?type=w720',
        '너무 일찍 어른이 된 14살 현준이의 착한 꿈',
        '''
현준이가 7살이 되던 해, 아버지는 대장암에 걸리셨습니다. 현준이를 위해 열심히 병마와 싸우던 아버지는 3년이 지난 어느 날 결국 현준이의 곁을 떠나 하늘의 별이 되었습니다. 아버지가 살아계실 때 현준이에게 늘 하시던 말씀이 있습니다. “너에게 부족한 아빠지만 세상 그 누구보다도 너를 사랑한단다. 언젠가 내가 네 곁에 있을 수 없는 날이 오더라도 아빠는 여전히 널 사랑할 거야. 아빠가 없더라도 늘 씩씩하게, 그리고 너희 엄마와 누나에게 든든한 버팀목이 되어줬으면 좋겠구나.” 고작 10살의 현준이는 누구보다 빨리 철이 들어야 했습니다. 아버지를 대신 해 어머니와 누나의 든든한 버팀목이 되어야 했던 현준이. 그렇게 현준이는 남들보다 일찍 어른이 되었습니다.
아픈 아버지를 돌봐온 현준이의 어머니는 아버지가 떠난 뒤 마음에 깊은 상처가 남아 바깥 외출조차 쉽지 않게 되었습니다. 현준이와 현준이 누나는 먹고 싶은 것도, 하고 싶은 것도, 배우고 싶은 것도 많은 어린 나이지만 아픈 어머니에게 단 한 번도 갖지 못한 것에 대한 불평을 한 적이 없습니다. 이토록 마음씨까지 이쁜 현준이는 몸이 아파 맛있는 음식 한번 제대로 먹지 못하고 떠난 아버지와 그런 아버지로 인해 마음의 깊은 상처를 받은 어머니를 위해 건강한 음식을 만드는 ‘약선요리사’의 꿈을 품게 되었습니다.
약이 되는 요리를 만들어 아픈 사람들에게 건강하고 맛있는 식사를 대접하고 싶다는 현준이는 그 꿈을 이루기 위해 오늘도 열심히 공부를 합니다. 훌륭한 요리사가 되기 위해 방과 후 요리교실에도 빠짐없이 참여하는 현준이가 착한 꿈을 이루고 그 꿈으로 또 다른 사람들에게 희망을 전달하는 멋진 어른이 될 수 있도록 함께해주세요! 우리의 관심과 사랑이 현준에게는 너무나 절실합니다. 어린 현준이가 열심히 공부하고 그토록 원하던 약선요리를 배울 수 있는 기회를 줄 수 있는 유일한 존재! 바로 지금 현준이의 이야기를 읽고 있는 여러분입니다.
''',
        '고양시문화재',
        new DateTime.utc(2018, 9, 18),
        1,
        10,
        '0xb58b018b73ed43a4deec4ee7c36be6c88ca8263c'),
    new StoryModel(
        'dog1',
        'https://happybean-phinf.pstatic.net/20180809_100/hlog_k00224_1533793342207P8Fko_JPEG/%ED%99%9C%EC%A7%9D_%EC%9B%83%EB%8A%94_%ED%95%98%EC%A4%80%EC%9D%B4.JPG?type=w720',
        '레녹스 가스토 증후군으로 7년 째 투병 중인 하준이',
        '''
7살 어린 하준이는 레녹스 가스토증후군을 앓고 있습니다. 하준이는 태어난 지 3일만에 저혈당 쇼크가 찾아와 엄마 품에 제대로 안겨보지도 못한 채 한 달을 병원에 입원해야 했습니다. 그렇게 8개월에 접어들 무렵, 하준이는 고개를 가누지 못하고 얼굴을 떨구는 증세가 나타나며 뇌전증 중에서도 가장 사후결과가 좋지 않다는 레녹스 가스토증후군 판정을 받았습니다. 이 증후군으로 간질과 발작이 하루에도 수십 번씩 찾아오며, 한번 발작이 일어날 때마다 몸이 굳는 강직현상과 함께 초점을 잃고 입에 거품을 물며 숨을 제대로 쉬지 못합니다. 몸에 과도한 힘이 들어가 앞니가 모두 부러진 적도 있습니다. 엄만 그런 하준이를 품에 꼬옥 안고 눈물을 흘린 적이 많았습니다. 잠깐 자리를 비우는 사이에도 하준이가 잘못될까봐 일상생활을 하기도 어렵다는 엄마의 마음은 찢어지기만 합니다.
더 이상 약물로는 뇌파를 조절할 수 없다는 의사의 말에 한줄기 희망을 걸고 마지막 방법인 케톤생성 식이요법을 시도했습니다. 이조차 열 명 중 한명만 증세가 완화돼 성공가능성이 매우 희박했지만 하준이 부모님이 할 수 있는 유일한 방법이었습니다. 하지만 식이요법을 진행한 1년은 그야말로 지옥이 따로 없었습니다, 지방을 최대한 많이 먹어야 해 어른도 먹기 힘든 기름을 숟가락으로 떠먹어야 했고 먹으면 토하고, 먹으면 토하는 고통스러운 순간이 반복되었습니다. 결국 효과는 보지 못하고 지방간, 고지혈증, 탈수증세 등 엄청난 부작용만 낳았습니다. 하준이에게 그 많은 지방을 먹일 때마다 느끼는 죄책감 때문에 엄마는 제대로 숟가락 드는 것조차 힘겹기만 했습니다...
하준이는 어쩔 수 없이 유일한 희망이었던 케톤생성 식이요법을 멈추고 다시 약물치료를 시작했습니다. 다시 발작과 경련이 심해지면 수술해야 할지도 모르고 늦게 수술을 진행하게 되면 한 쪽에 장애가 올 수 있는 상황. 장애를 예방하기 위해서는 빠른 시일 내 검사를 진행해야 하지만 비용마련이 되지 않아 계속 미뤄지고 있습니다. 또한 청각이 발달한 하준이는 유독 작은 소리에도 민감해서 1인실 이용만 가능한데 하루에 수 십 만원에 달하는 1인실 입원비를 감당할 수 없어 통원치료만 반복하고 있습니다. 엄만 유일한 희망이었던 식이요법 이 후에도 하준이가 차도를 보이지 않자, 다시 약물 치료를 시작하는 힘든 결정을 했지만 경제적 어려움으로 하준이를 더 힘들게하는 것 같아 미안한 마음입니다.
하준이는 힘든 상황에서도 엄마가 걱정하는 걸 아는지 칭얼거리지 않고 환하게 잘 웃는 착한 아이입니다. 그런 하준이의 모습을 보며 엄마는 마음이 너무 아픕니다. 결국은 다 잘되리라 믿지만 아무리 굳게 마음을 먹어도 당장 부딪히는 경제적인 문제에 자꾸 무너지고 맙니다. 제 유일한 소원은 하준이가 어서 치료를 받아 조금 덜 아프고 덜 힘들어서 웃음을 잃지 않는 것입니다. 언제쯤이면 엄마의 간절한 소원이 이루어질까요? 해피빈 여러분들이 하준이와 엄마가 웃음을 잃지 않고 계속해서 힘을 낼 수 있도록 하준이의 치료를 도와주세요. 해피빈을 통해 모인 후원금 전액은 하준이의 소변검사, 피검사, 엑스레이, 뇌파검사 및 진료비로 소중하게 사용됩니다.
        ''',
        '초록우산 어린이재단',
        new DateTime.utc(2018, 9, 18),
        5,
        5,
        '0x7af3642918d50d634a87231b7b3244a696a37a03'),
    new StoryModel(
        'sw',
        'https://happybean-phinf.pstatic.net/20180809_119/hlog_k00224_1533789086717gjvSt_PNG/1.png?type=w720',
        '상원이가 아파요',
        '상원이를 도와주세요 제발 도와주세요',
        '상원이',
        new DateTime.utc(2018, 9, 18),
        8,
        10,
        '0xdE4b7064691ec1a96A52a3EAdFb4fb348b716BD9'),
    new StoryModel(
        'sw2',
        'https://happybean-phinf.pstatic.net/20180130_70/hlog_w00004_1517276735355LuWhr_JPEG/2.jpg?type=w720',
        '"얘들아, 따뜻한 밥 먹자" 월드비전 X 포스포굿후원회',
        '''
사랑의 도시락 나눔 활동
월드비전 사랑의 도시락은 현실적인 여건으로 인스턴트로 끼니를 때우거나 식사를 거르는 아동들, 거동이 불편하신 장애인과 독거 어르신들이 적어도 하루 한 끼는 영양가 있는 식사를 할 수 있도록 직접 조리한 도시락을 제공합니다. 어떤 아동이든 몸에 좋은 음식을 먹어야 하며 건강하게 성장해야 할 권리를 가집니다.이 권리를 기반으로 라면이나 통조림 대신 영양사에 의해 구성된 건강한 도시락으로아동들의 건강한 성장을 돕고자 합니다.뉴스킨코리아 포스 포 굿 후원회와 함께 합니다. 빈곤가정의 53%는 영양 불균형으로 인한 저체중/비만, 과체중을 겪습니다.우리 주위의 어려운 이웃들을 위해 뉴스킨코리아에서 균형 잡힌 도시락을 선물합니다.
주5일, 영양가 있는 도시락 구성
도시락은 전문 영양사에 의해 계획된 영양가 있는 식단으로 조리되며 1식 3찬으로 구성됩니다. 설이나 추석과 같은 명절 에는 명절특식을 제공합니다.또한 주5회 도시락을 배달하다 보면 아이들이 잘 지내고 있는지, 특별한 문제가 생기지는 않았는지, 어르신들이 편찮으시지는 않은지 봉사자들에 의한 점검이 가능해집니다.
사랑의 도시락을 지원받는 윤서의 감사 편지
"안녕하세요, 윤서예요. 엄마가 뇌졸중으로 고생하시고 큰오빠하고 작은오빠하고 우리끼리 생활할 수 밖에 없는데..아빠는 직장생활에 엄마 간병하시고 집 청소랑 우리들 밥도 챙겨주시니까 피곤하시고 지친몸을 볼 때 아빠에게 너무 죄송했습니다. 엄마가 돌아가시고 아빠는 반찬걱정, 밥걱정을 늘 하셨어요. 그런데 월드비전 사랑의 도시락에서 2년동안 따뜻한 밥과 반찬을 주셔서 굶지 않아도 오빠랑 저는 항상 밥을 맛있게 먹을 수 있어서 너무 행복합니다. 늦게까지 일하시는 아빠는 저희들이 굶지 않아서 너무 좋아하세요. 도시락과 쌀, 라면 등 물품도 주시고 지원해주셔서 감사합니다. 빨리커서 훌륭한 요리사가 되어서 후원자님처럼 봉사하고 남들도 돕겠습니다.아빠는 사람은 받은만큼 베풀면서 살아야한다고 하셨습니다. 후원해주셔서 감사합니다.".
        ''',
        '포스포굿후원회',
        new DateTime.utc(2018, 9, 18),
        77,
        100,
        '0xdE4b7064691ec1a96A52a3EAdFb4fb348b716BD9'),
    new StoryModel(
        'sw3',
        'https://happybean-phinf.pstatic.net/20180809_297/hlog_k00224_1533789152861T0rXx_PNG/6.png?type=w720',
        '"KBS 동행 171회 우리 엄마',
        '''
우리 엄마, 존경해요. 맏이 지혜
고등학교 기숙사에서 생활하는 지혜가 방학을 맞아 집으로 돌아왔습니다. 바쁜 엄마를 대신해 집안 살림을 챙기고 동생들을 돌보는 일상, 무더위에 원예농원에서 아르바이트를 하면서도 지혜의 마음은 늘 한 사람에게 닿아 있습니다. 손목이 아픈 것을 참고 식당에서 일을 하는 엄마가 걱정되기 때문입니다. 오랫동안 병상에 누워 있었던 할머니, 할아버지를 모시면서 고속도로 휴게소 식당에서 일을 해 왔던 엄마... 가족을 위해 누구보다 열심히 살았던 엄마의 삶을 이해하게 되면서 지혜는 엄마가 더없이 애틋하고 안타깝기만 합니다. 글자를 모르고 말을 더듬는 엄마를 때로 사람들은 오해하기도 하지만, 지혜에게 엄마는 세상 누구보다 존경스러운 단 한 사람입니다.
아이들한테 너무 미안해요. 엄마의 눈물
안녕하세요, 언니. 잘 지냈어요? 오늘도 엄마는 이웃들에게 큰 목소리로 인사를 건냅니다. 엄마의 손을 마주잡고 안부를 묻는 이웃들이 엄마를 가리키는 말은 착한 사람입니다. 세 아이를 키우기 위해 누구보다 열심히 사는 사람, 힘든 환경에서도 늘 환하게 웃으며 인정을 베푸는 사람, 그래서 행복하길 바라게 되는 사람, 이웃들에게도 엄마는 그런 사람입니다. 식당일을 하러 가기 전, 냇가에서 다슬기를 주워 팔아서 번 돈 2만원 덕분에 하루가 행복해진 엄마. 이렇게까지 억척스럽게 일을 하는 이유는 자식들에게 맛있는 것을 먹이고 싶어서 입니다. 누구보다 열심히 살면서도 자신을 못난 엄마라고 칭하며 고개를 떨구는 엄마... 점점 자라는 아이들에게 무엇을 어떻게 해주어야 할지 몰라 두렵다는 엄마는 그 마음을 기댈 곳이 없습니다.
꽃보다 예쁜 우리 엄마
세찬 비가 내리기라도 하면 집 안으로 물이 들이차는 오래된 농가 주택. 빗물이 집 바닥으로 스며들어 보일러는 고장 난 지 벌써 오랩니다. 열악한 환경에 투덜거릴 법도 하지만 열일곱 지혜는 담담하기만 합니다. 좀처럼 힘든 내색을 하지 않는 속 깊은 맏이 지혜의 걱정은 단 하나, 엄마의 건강 걱정입니다. 손목 수술이 필요하다는 진단을 받은 지도 오래되었는데 병원에 가지 않겠다며 고집을 피우는 엄마... 그 이유가 돈 때문이라는 것을 알지만 지혜는 막무가내로 고집을 피우는 엄마가 답답하기만 합니다. 아이들에게 예쁜 것을 보여주고 싶어 작은 마당 가득 꽃을 심고 살피는 엄마, 지혜는 어떤 꽃보다 예쁜 엄마의 웃음을 지켜드리고 싶습니다. 
        ''',
        '초록우산어린이재단',
        new DateTime.utc(2018, 9, 18),
        67,
        100,
        '0xdE4b7064691ec1a96A52a3EAdFb4fb348b716BD9'),
    new StoryModel(
        'toilet',
        'https://happybean-phinf.pstatic.net/20180808_250/hlog_h00230_1533702953239Jb59t_JPEG/%ED%95%B4%ED%94%BC%EB%B9%88_%EC%8D%B8%EB%84%A4%EC%9D%BC%ED%85%9C%ED%94%8C%EB%A6%BFjpg?type=w720',
        '성장기 아이들에게 유아용 화장실은 너무 작아요.',
        '''
“홈스쿨의 유일한 화장실이 유아용이에요.”
예일행복한홈스쿨에는 장애가 있는 아이, 다문화 가정 아이, 초등학생부터 중학생까지 모두 29명의 아이들이 함께 공부하며 지내고 있습니다. 행복한홈스쿨은 학교가 끝난 뒤, 밤 늦게까지 집에서 홀로 지내야 했던 아이들을 안전하게 보호하는 공간입니다. 홈스쿨에서 생활은 방과후가 기다려질 만큼 즐겁지만 아이들에겐 한가지 고민이 있습니다. 바로 화장실입니다. 23년된 상가 내, 어린이 집을 보수한 홈스쿨에는 유아용 화장실 하나뿐입니다. 성장기에 있는 아이들이 사용하기엔 너무 작고 불편한 구조입니다. 바닥용 변기 두 개와 작은 유아용 양변기 하나만 있는 화장실은 점점 몸집이 커져가는 아이들에겐 불편하고도 비위생적인 공간입니다.
“남자 소변기도, 세면대도 없어요.”
남녀가 분리된 화장실도 아니고, 남자용 소변기도 없다 보니 위생관리도 어렵습니다. 여자아이도, 남자아이도 모두가 불편한 상황입니다. 청소를 자주해도 냄새가 빠지지 않아 집이 가까운 아이들은 집까지 화장실을 사용하러 다녀오거나, 관리사무소 화장실을 이용하기도 합니다. 세면대도 없던 터라 임시 세면대를 놓았지만 그마저도 크기가 작아서 손을 씻다 보면 화장실 바닥이 다 젖어 버리고 맙니다. 바닥에 고인 물이 빠지지 않아 곰팡이가 생기고, 위생관리도 어려운 상황입니다. 미끄러운 바닥에 아이들이 넘어지기도 합니다.
“찜통 더위엔 화장실 가기가 더 꺼려져요.”
덥고 습한 여름 날씨에 화장실 악취가 심해져 아이들이 공부하는 데 어려움을 겪을 정도입니다. 천장도, 조명도 낡아진 터라 보수가 꼭 필요합니다. 아이들에게 남녀가 분리된, 안전하고 깨끗한 화장실을 만들어 주겠다고 약속했지만 넉넉하지 않은 운영비가 걱정됩니다. 홈스쿨에서 아이들이 청결한 환경에서 생활하고, 안전하게 보호받도록 화장실 리모델링을 지원해주세요!
        ''',
        '기아대책',
        new DateTime.utc(2018, 9, 18),
        89,
        100,
        '0xdE4b7064691ec1a96A52a3EAdFb4fb348b716BD9'),
    new StoryModel(
        'dog4',
        'https://happybean-phinf.pstatic.net/20180807_43/hlog_h00194_1533604218215nQqoY_JPEG/KakaoTalk_20180627_170551977.jpg?type=w720',
        '건강해지면 엄마, 아빠를 만날 수 있겠죠?',
        '''
미소천사 연우를 소개합니다
동그란 얼굴에 하얀 피부를 가진 연우(가명, 14개월)는 태어나자마자 부모님 품에서 클 수 없어 홀트아동복지회에 오게 되었습니다. 유독 웃음이 많고 장난기가 많은 귀여운 연우는 병원으로 가는 길, 위탁 엄마 뒤를 졸졸 잘 따라오는가 싶더니 어느새 낯선 형에게 다가가 먼저 말을 걸으며 장난을 치고 있습니다.
귀여운 미소 뒤 숨겨진 7가지 병
위탁가정에서 많은 사랑을 받으며 쑥쑥 크고 있는 연우는 사실 태어났을 때부터 상세 불명의 패혈증, 신생아황달, 저칼슘, 장염, 신생아 질식의증 등으로 10일간 입원치료를 받았습니다.혼자 병실에서 여러 질병들과 싸우고 어렵사리 회복했지만 몇 달 지나지 않아 *서혜부 탈장이라는 또다른 진단을 받고 수술을 해야만 했습니다.

*서혜부 탈장 – 복강 안의 장기가 복벽의 약한 부분 중 서혜부 주위를 통해 빠져 나오는 현상

수술이 잘 되었나 싶더니 언제부터인가 아이가 울 때마다 아랫배가 불룩 해지기 시작했습니다. 위탁어머니는 걱정되는 마음에 병원을 다시 찾았고, 그 결과 병의 재발로 재수술을 해야 한다는 소견이 나왔습니다. 기껏 어려운 과정을 넘겼는데 1년도 채 되지 않아 또 수술을 해야한다 하니, 위탁어머니는 그저 답답하고 안타까운 마음 뿐입니다.
건강해지면 저도 엄마, 아빠를 만날 수 있겠죠?
두시간의 수술 끝에 회복실로 돌아온 아이는 마취기운이 사라지며 울기 시작합니다. 그 모습에 너무 마음이 아파 위탁어머니는 연우를 꼭 안아주고 싶지만, 혹시나 수술 부위를 누를까 조심스러워 우는 아기 등만 어루만집니다. 
연우가 세상에 나온 지 고작 1년. 그 시간 동안 연우가 배운 것은 가족의 사랑, 웃음 보다는 헤어짐과 아픔을 참는 일이었습니다. 이제 더이상 연우에게 몸과 마음의 아픔은 잊게 해 주고 싶습니다. 

연우의 수술의 상처가 아물 때 쯤이면 엄마, 아빠를 만날 수 있겠죠?
연우가 맞이하는 앞으로의 시간들이 한 없이 따뜻하고 행복하기만 하길, 여러분께서 함께 힘을 모아주세요!
        ''',
        '홀트아동복지회',
        new DateTime.utc(2018, 9, 18),
        60,
        100,
        '0x7af3642918d50d634a87231b7b3244a696a37a03'),
  ];

  Future<List<StoryModel>> getStories() async {
    return mockStories;
  }

  Future<StoryModel> getStoryById(String storyId) async {
    final stories = await getStories();
    return stories.firstWhere((story) => story.id == storyId);
  }

  Future<void> donate(String storyId, [double value = 0.1]) async {
    final story = await getStoryById(storyId);
    assert(story.accountId != null);
    await Web3.transfer(story.accountId, value);
  }
}
