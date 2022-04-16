import 'students.dart';

void main(List<String> args) {
  final u = Undergrad(name: 'Yoseph', year: 2);
  final g = Grad(name: 'Mesay');
  final i = Intern(name: 'Meron', year: 3, wage: 25, hours: 40);
  final r = ResearchAssistant(name: 'Feven', salary: 20000);

  final students = <Student>[u, g, i, r];
  for (Student student in students) {
    print(student.description());
  }

  final payees = <Employee>[i, r];
  for (Employee payee in payees) {
    print('${(payee as Student).name} is paid ${payee.getPay()} dollars');
  }
}
