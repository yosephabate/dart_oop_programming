import 'students.dart';

void main(List<String> args) {
  final u = Undergrad(name: 'Yoseph', year: 2);
  final g = Grad(name: 'Mesay');
  final i = Intern(name: 'Meron', year: 3, wage: 25, hours: 40);
  final r = ResearchAssistant(name: 'Feven', salary: 20000);

  print(u.description());
  print(g.description());
  print(i.description());
  print(r.description());
}
