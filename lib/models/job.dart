class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs(){
    return [
      Job(
        'Google LLC,',
        'assets/images/google_logo.png',
        false,
        'Product manager',
        '131 zomba',
        '2 days ago',
         [
        
         ]
        ),
        Job(
        'Google LLC,',
        'assets/images/google_logo.png',
        false,
        'Product manager',
        '131 zomba',
        'KEDWQ',
        [

        ],
        ),
        Job(
        'Google LLC,',
        'assets/images/google_logo.png',
        false,
        'Product manager',
        '131 zomba',
        'FMWNF',
        [

        ],
        ),
        Job(
        'Google LLC,',
        'assets/images/google_logo.png',
        false,
        'Product manager',
        '131 zomba',
        'JDHEJ',
        [

        ],
        ),
    ];
  } 
}
