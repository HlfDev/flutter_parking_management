class ParkingLotStrings {
  ParkingLotStrings._();

  static String warningDialogMessage(String code) => 'Deseja mesmo excluir a vaga: $code';
  static const infoDialogMessage = 'Esse código de vaga já está sendo utilizado!';

  static const registerSpace = 'Cadastrar vaga';

  static const spaceCode = 'Código da vaga';
  static const fillInSpaceCode = 'Preencha o código da Vaga';

  static const noSpaceFound = 'Nenhuma vaga encontrada';
  static const noSpaceFoundSubtitle =
      'Adicione uma nova clicando no Botão "Cadastrar Vaga" após inserir o código da vaga.';
}
