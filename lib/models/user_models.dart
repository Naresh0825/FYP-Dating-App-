class User {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interests;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
    required this.interests,
  });

  @override
  List<Object> get props => [
        id,
        name,
        age,
        imageUrls,
        bio,
        jobTitle,
      ];
  static List<User> users = [
    User(
        id: 1,
        name: 'Naresh',
        age: 21,
        interests: ['Music', 'Fitness', 'Stock Market', 'Real estates'],
        imageUrls: [
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/118307960_2674763119452772_5899516365637601870_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=l6EmXSH2IWAAX_LYleI&_nc_ht=scontent.fktm6-1.fna&oh=0b3b3f42a004121a960f94a7754a2855&oe=61CE1B26',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/108824989_2641414046121013_1282049635363507394_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=GgtxBQD9qF0AX_LwDNX&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=0806551547867669dc30aff0ac7e9a34&oe=61CD10A2',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/117415992_2667714086824342_3716227299870487260_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=NeRDCVSXgV4AX9MEvOe&_nc_ht=scontent.fktm6-1.fna&oh=78fd26771fe967b9ed6b2f6b7488e487&oe=61CCC109',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/78163493_2446192688976484_329034120241872896_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_ohc=kjF-qyKTn2UAX92EHPU&_nc_ht=scontent.fktm6-1.fna&oh=00_AT8U2gCg8zyeU9vdXqWlG9uEurk8yP9gudcNRoa909G1jQ&oe=61E72D62',
        ],
        jobTitle: 'Engineer',
        bio: 'Hello, I am Naresh'),
    User(
        id: 2,
        name: 'Ritesh',
        age: 22,
        interests: [
          'Finance',
          'Cooking',
          'Foods',
          'Girls',
        ],
        imageUrls: [
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/90815003_628803701315335_5926255441922228224_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=K-Nrj3SGRyQAX-V-8Yy&_nc_ht=scontent.fktm6-1.fna&oh=a55b95388c5c7a08025a0ee53e7b96c6&oe=61CD1808',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/118181982_689234351938936_5575181024676507889_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_ohc=p1JuM3_EQJYAX9Ct16O&_nc_ht=scontent.fktm6-1.fna&oh=1af2e9d4548fd8924c4367b5f395f261&oe=61CC68E6',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/55460065_346389442890097_8358766051831316480_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=174925&_nc_ohc=fhvoEsnV0IkAX-9ZzuO&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=71551040ade9b5f4aacfde95e9477b79&oe=61CBBAD1',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/90815003_628803701315335_5926255441922228224_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=K-Nrj3SGRyQAX-V-8Yy&_nc_ht=scontent.fktm6-1.fna&oh=a55b95388c5c7a08025a0ee53e7b96c6&oe=61CD1808',
        ],
        jobTitle: 'Chef',
        bio: 'Hello, I am Ritesh Adhikari'),
    User(
        id: 3,
        name: 'Swarin',
        age: 20,
        interests: [
          'coding',
          'Programming',
          'Computers',
          'Social media',
        ],
        imageUrls: [
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t31.18172-8/16707513_596576113872250_5382871117270987170_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=OP0obcRQlHoAX-RrmK-&_nc_ht=scontent.fktm6-1.fna&oh=e3b548bd9450b900c519d566a3fccf06&oe=61CBC4F9',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.18169-9/10897076_324340297762501_1778832184363320744_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=JxuVYBbdYqQAX_DAeCe&_nc_ht=scontent.fktm6-1.fna&oh=51a29bde9ecbfbb78f08c866c9714b05&oe=61CEA5AB',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.18169-9/11137085_378913785638485_3164671110291682384_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=vbElGvdOV4EAX-nQBmv&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=a93c1041b6f2df0d9e0cac700266099a&oe=61CD870D',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.18169-9/11137085_378913785638485_3164671110291682384_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=vbElGvdOV4EAX-nQBmv&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=a93c1041b6f2df0d9e0cac700266099a&oe=61CD870D',
        ],
        jobTitle: 'Product Manager',
        bio: 'Hello, I am Swarin Shakya'),
    User(
        id: 4,
        name: 'kiran',
        age: 21,
        interests: [
          'Finance',
          'Business',
          'Money',
          'economy',
        ],
        imageUrls: [
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t31.18172-8/28827667_409606129510510_5322858294603956692_o.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=HFmTxwvVrMYAX-5qwGq&_nc_ht=scontent.fktm6-1.fna&oh=11ca4199c954d90d04af750cf33cd2f7&oe=61CB2A1A',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/61827334_687831931687927_5867410588920971264_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=F-24ZeLMmqcAX_uGpGk&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=0ad04ab26a802725385ab11f73031d22&oe=61CD4AE4',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/84353478_882970888840696_7235672949066301440_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_ohc=w-uP-IDc_F4AX92_rZ7&_nc_ht=scontent.fktm6-1.fna&oh=3701317e76a44b4ce7188dc4bc02a86f&oe=61CE46E3',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/84353478_882970888840696_7235672949066301440_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_ohc=w-uP-IDc_F4AX92_rZ7&_nc_ht=scontent.fktm6-1.fna&oh=3701317e76a44b4ce7188dc4bc02a86f&oe=61CE46E3',
        ],
        jobTitle: 'Banker',
        bio: 'Hello, I am Kiran Yogi'),
    User(
        id: 5,
        name: 'kiran',
        age: 21,
        interests: [
          'Finance',
          'Business',
          'Money',
          'economy',
        ],
        imageUrls: [
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t31.18172-8/28827667_409606129510510_5322858294603956692_o.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=HFmTxwvVrMYAX-5qwGq&_nc_ht=scontent.fktm6-1.fna&oh=11ca4199c954d90d04af750cf33cd2f7&oe=61CB2A1A',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/61827334_687831931687927_5867410588920971264_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=F-24ZeLMmqcAX_uGpGk&tn=oRCVXzj1WYrxbjd6&_nc_ht=scontent.fktm6-1.fna&oh=0ad04ab26a802725385ab11f73031d22&oe=61CD4AE4',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/84353478_882970888840696_7235672949066301440_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_ohc=w-uP-IDc_F4AX92_rZ7&_nc_ht=scontent.fktm6-1.fna&oh=3701317e76a44b4ce7188dc4bc02a86f&oe=61CE46E3',
          'https://scontent.fktm6-1.fna.fbcdn.net/v/t1.6435-9/84353478_882970888840696_7235672949066301440_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_ohc=w-uP-IDc_F4AX92_rZ7&_nc_ht=scontent.fktm6-1.fna&oh=3701317e76a44b4ce7188dc4bc02a86f&oe=61CE46E3',
        ],
        jobTitle: 'Banker',
        bio: 'Hello, I am Kiran Yogi'),
  ];
}
