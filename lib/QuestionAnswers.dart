class QuestAnswers {
  var questions = ['programming language', 'web framework', 'animals'];
  var answersForOne = [
    {'NodeJS', 'Python', 'JAVA', 'PHP'},
    {'ExpressJS', 'Django', 'Spring', 'NEXTJS'},
    {'dog', 'horse', 'cat', 'another'}
  ];

  getAnswer(int a, int b) {
    return this.answersForOne.elementAt(a).elementAt(b);
  }

  String getQuestion(int a) {
    return this.questions[a];
  }
}
