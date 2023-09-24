<h1 align="center">Gerenciador de Estacionamento</h1>

<div align="center">

Aplicativo desenvolvido como um teste e tendo o objetivo de recriar e refazer parte de outro teste técnico feito em Junho de 2021, basicamente um [Controle de Estacionamento](https://github.com/HlfDev/flutter-rarolabs-parking) para a empresa [Raro Labs](https://rarolabs.com.br/).

![GitHub release (latest by date)](https://img.shields.io/github/v/release/schuberty/Todo-Movies)
![GitHub last commit](https://img.shields.io/github/last-commit/schuberty/Todo-Movies?color=yellow)

</div>

# Descritivo do Teste
<p align="left">
  Seu João tem um estacionamento e hoje tem um caderno onde anota todas as entradas e saídas, assim como preenche qual vaga o caminhão ocupa cada vez que acontece uma entrada ou saída.

Agora o Sr. João quer poder fazer isso na palma de sua mão com seu Smartphone. Com seu app, ele quer ver quais vagas estão ou não ocupadas, assim como registrar entradas e saídas dos veículos e qual vaga estes veículos estão ocupando! Ele também queria ter um histórico dessas entradas e saídas para poder fazer o fechamento no final do dia.

João é um administrador mais velho, então uma interface fácil de utilizar é mais vantajosa que uma interface muito complexa.
</p>

# Arquitetura e Packages do Projeto

Aplicativo desenvolvido na versão 3.3.10 do [Flutter](https://flutter.dev) utilizando [BLoC](https://pub.dev/packages/flutter_bloc) para gerência de estados, [flutter_modular](https://pub.dev/packages/flutter_modular) para injeção de dependências e gerencia de rotas, pacote [Hive](https://pub.dev/packages/hive) para persistência de dados e seguindo os principos do [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) como padrão da arquitetura do software, e não menos importante a metodologia de [Atomic Design](https://atomicdesign.bradfrost.com/chapter-2/) para componentização de widgets.

# Como Usar o Repositório

Após clona-lo, certifique-se de:

1. Rodar o comando `flutter pub get` para obter os pacotes mencionados no [pubspec.yaml](./pubspec.yaml).
2. Rodar o aplicativo a partir da sua IDE preferida ou com o comando `flutter run`.
3. Vale resaltar que o projeto foi desenvolvido na versão 3.3.10 do Flutter, apenas para as plataformas Android e IOS

# Desenvolvimento

Funcionalidades da aplicação MVP e futuras implementações.

| Tarefas                                          | Situação   |
| ----------------------------------------------- | :---------: |
| Modulos: Splash, Core e App                     | Concluído  |
| Abstração/Implementação de navegação e persistencia de dados  |   Concluído   |
| Módulo principal e submódulo de cadastro de vagas  |  Concluído   |
| Testes unítarios                                 | Parcialmente |
| Teste de integração  |  Pendente   |
| Submódulos de entrada e saída de veiculos      |  Pendente   |
| Tratativas de erros (Firebase Crashlytics)             |  Pendente   |
| Bloqueio de versão e de fluxos (Firebase Remote Config)           |  Futuro   |
| Internacionalização                          |  Futuro   |

# Demonstração

Aplicativo foi testado nas plataformas Android e IOS, release disponível para Android:  [Release v1.0.0](https://github.com/HlfDev/flutter_parking_management/releases/tag/v1.0.0).

<div align="center">

https://user-images.githubusercontent.com/54847652/214026894-2678db95-11bd-40a0-99c6-fd20157ab74e.mp4

</div>

# Licença

Este projeto está sob a licença (MIT).