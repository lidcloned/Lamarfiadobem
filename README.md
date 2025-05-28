# Projeto LAMAFIA (apklucasv4)

Desenvolvido por Manus sob a orientação de IDCLONED.

## Objetivo

Aplicativo de comunicação e organização exclusivo para o clã LAMAFIA, baseado nas funcionalidades e visão definidas por IDCLONED, utilizando Flutter e preparado para compilação via CodeMagic.

## Estrutura Principal de Pastas

```
/lamafia_project/voip_projectv2adm/
├── android/         # Configurações específicas do Android (AndroidManifest.xml, build.gradle)
├── assets/
│   ├── audio/       # Arquivos de áudio (sons de UI, efeitos)
│   ├── fonts/       # Fontes customizadas (Gothic, Digital)
│   └── images_png/  # Imagens PNG (ícones, backgrounds, elementos de UI)
├── ios/             # Configurações específicas do iOS
├── lib/
│   ├── main.dart    # Ponto de entrada principal da aplicação
│   ├── models/      # Modelos de dados (ainda a ser populado)
│   ├── providers/   # Gerenciadores de estado (ex: UserProvider - placeholder)
│   ├── screens/     # Telas da aplicação (splash, login, home - básicas implementadas)
│   ├── services/    # Serviços (ex: VOIP, Firebase - estrutura básica/placeholders)
│   └── utils/       # Utilitários (logger, theme_constants)
├── linux/           # Configurações específicas do Linux (se aplicável)
├── macos/           # Configurações específicas do macOS
├── test/            # Testes unitários e de widget
├── web/             # Configurações específicas para Web
├── windows/         # Configurações específicas do Windows
├── .gitignore
├── pubspec.yaml     # Definição de dependências e assets
├── pubspec.lock     # Versões exatas das dependências
├── README.md        # Este arquivo
└── todo.md          # Checklist detalhado do desenvolvimento
```

## Configuração e Build (CodeMagic)

1.  **Repositório:** Faça o upload deste projeto para um repositório Git (ex: GitHub).
2.  **CodeMagic:** Conecte seu repositório ao CodeMagic.
3.  **Configuração do Workflow:**
    *   Selecione o tipo de aplicação Flutter.
    *   Configure as etapas de build (ex: `flutter build apk --release`).
    *   **Assinatura:** Configure a assinatura do APK usando sua keystore e credenciais na seção "Publishing" -> "Android code signing" do CodeMagic.
    *   **Firebase (Futuro):** Quando for integrar o Firebase, adicione os arquivos `google-services.json` (Android) e `GoogleService-Info.plist` (iOS) nos locais corretos e descomente as dependências no `pubspec.yaml` e a inicialização no `main.dart`. Configure as credenciais do Firebase no CodeMagic se necessário.
4.  **Execução:** Inicie o build no CodeMagic.

## Próximos Passos (Desenvolvimento)

*   Implementar funcionalidades completas (VOIP, Canais, Instacla, Reuniões, Playlist).
*   Integrar backend (Firebase ou outro).
*   Finalizar UI/UX com assets oficiais (logo, ícones).
*   Adicionar textos finais (Termos de Uso, Política de Privacidade).
*   Implementar lógica de cargos, permissões e moderação.
*   Refinar tratamento de erros e logs (incluindo escrita em arquivo).
*   Adicionar testes abrangentes.

## Notas

*   O Firebase está comentado no código (`main.dart`, `pubspec.yaml`) para evitar erros de build sem os arquivos de configuração. Descomente e adicione os arquivos quando for integrar.
*   A lógica de login e VOIP são placeholders e precisam ser implementadas com os serviços reais.
*   Os logs atualmente são impressos no console em modo debug. A escrita em arquivo precisa ser implementada (veja `logger.dart`).

