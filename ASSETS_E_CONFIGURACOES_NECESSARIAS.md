# Documentação: Assets e Configurações Necessárias para o Projeto VoIP do Clã Providências

Este documento detalha todos os assets (recursos visuais, sonoros, fontes) e informações de configuração críticas que você precisa fornecer para que o projeto do aplicativo VoIP do clã Providências possa ser finalizado, compilado corretamente e personalizado de acordo com a identidade e os requisitos funcionais definidos.

## 1. Assets Visuais (Imagens e Ícones)

Os assets visuais são fundamentais para a identidade do aplicativo. Eles devem ser fornecidos nos formatos corretos e colocados nas pastas designadas dentro da estrutura do projeto (`/home/ubuntu/voip_project/assets/images/`). Recomenda-se usar nomes descritivos para facilitar a manutenção (ex: `logo_clã.png`, `icone_canal_texto.png`) em vez dos nomes numéricos atuais.

**Localização:** `/home/ubuntu/voip_project/assets/images/` (Substitua a pasta `images_png` por `images` ou mantenha `images_png` e atualize o `pubspec.yaml` se preferir, mas use nomes descritivos).

**Itens Necessários:**

*   **Ícone do Aplicativo (App Icon):**
    *   **Descrição:** O ícone principal que representará o aplicativo na tela inicial do dispositivo e na Play Store.
    *   **Formato:** PNG, com alta resolução (pelo menos 1024x1024 pixels) para permitir a geração automática dos diferentes tamanhos necessários pelo Flutter (usando `flutter_launcher_icons`).
    *   **Arquivo Atual (Referência):** O `pubspec.yaml` aponta para `assets/images_png/1000216621.png`. Você deve fornecer a versão final deste ícone com um nome descritivo (ex: `app_icon_source.png`) e colocá-lo em um local acessível para a ferramenta `flutter_launcher_icons` (geralmente na raiz ou em `assets/`). A configuração atual no `pubspec.yaml` para `flutter_icons` precisará ser atualizada com o caminho correto do novo arquivo.
    *   **Ícone Adaptativo (Android):** Forneça também os arquivos separados para o *foreground* (primeiro plano) e *background* (fundo) do ícone adaptativo, se desejar um visual mais moderno no Android. A configuração atual usa o mesmo ícone para ambos, com um fundo preto (`#000000`).
*   **Logo do Clã Providências:**
    *   **Descrição:** A logo oficial do clã para ser usada em telas de carregamento (splash screen), cabeçalhos, perfis, etc.
    *   **Formato:** PNG (com transparência, se aplicável) ou SVG (vetorial, preferível para escalabilidade).
    *   **Nome Sugerido:** `logo_providencias.png` ou `logo_providencias.svg`.
*   **Imagens de Fundo (Backgrounds):**
    *   **Descrição:** Imagens para serem usadas como fundo em diferentes telas ou seções do aplicativo, alinhadas ao tema "maquiavélico e macabro" mencionado.
    *   **Formato:** PNG ou JPG.
    *   **Nomes Sugeridos:** `background_login.jpg`, `background_chat.png`, etc.
*   **Ícones de Interface (UI Icons):**
    *   **Descrição:** Ícones para botões, menus, indicadores de status (online, offline, ocupado), tipos de canal (texto, voz), ações (ligar, desligar, mutar, compartilhar tela, configurações, etc.).
    *   **Formato:** PNG ou SVG (SVG é preferível).
    *   **Nomes Sugeridos:** `icon_mic_on.svg`, `icon_mic_off.svg`, `icon_call.png`, `icon_settings.svg`, `icon_channel_text.png`, `icon_channel_voice.png`, `icon_share_screen.svg`, etc.
*   **Avatares Padrão/Placeholders:**
    *   **Descrição:** Imagens a serem usadas como avatares padrão para usuários que não definiram uma foto de perfil.
    *   **Formato:** PNG ou JPG.
    *   **Nome Sugerido:** `avatar_default.png`.
*   **Outras Imagens:** Quaisquer outras imagens específicas mencionadas ou necessárias para a interface (ilustrações, banners, etc.).

**Observação:** Os arquivos PNG atuais na pasta `assets/images_png/` possuem nomes numéricos. É crucial substituí-los por arquivos com nomes descritivos e atualizar as referências no código Dart onde eles são utilizados.

## 2. Assets de Áudio

Os sons podem melhorar a experiência do usuário, fornecendo feedback para ações ou criando ambientação.

**Localização:** `/home/ubuntu/voip_project/assets/audio/`

**Itens Necessários:**

*   **Som de Notificação:**
    *   **Descrição:** Som a ser tocado ao receber novas mensagens, menções ou alertas.
    *   **Formato:** MP3, OGG ou WAV.
    *   **Nome Sugerido:** `notification.mp3`.
*   **Som de Chamada Recebida:**
    *   **Descrição:** Toque para chamadas de voz recebidas.
    *   **Formato:** MP3, OGG ou WAV.
    *   **Nome Sugerido:** `incoming_call.mp3`.
*   **Som de Chamada Efetuada:**
    *   **Descrição:** Som ao iniciar uma chamada.
    *   **Formato:** MP3, OGG ou WAV.
    *   **Nome Sugerido:** `outgoing_call.mp3`.
*   **Som de Entrada/Saída de Canal de Voz:**
    *   **Descrição:** Sons curtos para indicar quando um usuário entra ou sai de um canal de voz.
    *   **Formato:** MP3, OGG ou WAV.
    *   **Nomes Sugeridos:** `user_join.wav`, `user_leave.wav`.
*   **Música da Playlist (Opcional):**
    *   **Descrição:** Conforme mencionado no TXT, se a funcionalidade de playlist for implementada, serão necessários os arquivos de música. **Atenção:** É crucial garantir que você possui os direitos de uso dessas músicas para evitar problemas legais com direitos autorais.
    *   **Formato:** MP3.
    *   **Localização:** Poderia ser uma subpasta, ex: `/home/ubuntu/voip_project/assets/audio/playlist/`.
*   **Outros Sons:** Quaisquer outros sons de feedback (envio de mensagem, erro, etc.).

**Observação:** Os arquivos atuais (`feixedaloodscren.mp3`, `gun9mm.mp3`) precisam ser avaliados quanto à sua finalidade e, se mantidos, ter seus usos verificados no código. Considere renomeá-los para maior clareza.

## 3. Assets de Fontes

Fontes personalizadas ajudam a reforçar a identidade visual do clã.

**Localização:** `/home/ubuntu/voip_project/assets/fonts/`

**Itens Necessários:**

*   **Fontes Personalizadas:**
    *   **Descrição:** Arquivos de fontes (se houver outras além das já presentes) que serão usadas na interface do aplicativo para títulos, corpo de texto, etc., alinhadas à identidade visual desejada.
    *   **Formato:** TTF ou OTF.
    *   **Observação:** As fontes `digital.ttf` e `gothic.ttf` já estão na pasta e declaradas no `pubspec.yaml`. Verifique se são essas as fontes desejadas ou se precisa fornecer outras.

## 4. Configurações e Informações Críticas

Além dos assets, várias informações de configuração são essenciais para a funcionalidade e publicação do aplicativo.

*   **Configuração do Firebase (se utilizado):**
    *   **Descrição:** O TXT menciona o Firebase como backend. Se for utilizá-lo, você precisará criar um projeto no [Firebase Console](https://console.firebase.google.com/) e fornecer os arquivos de configuração.
    *   **Android:** Arquivo `google-services.json`. Deve ser colocado em `/home/ubuntu/voip_project/android/app/`.
    *   **iOS:** Arquivo `GoogleService-Info.plist`. Deve ser colocado em `/home/ubuntu/voip_project/ios/Runner/`.
    *   **Credenciais Adicionais:** Chaves de API ou configurações específicas para serviços como Authentication, Firestore, Cloud Functions, Storage, se utilizados.
*   **Configuração WebRTC (Chamadas de Voz):**
    *   **Descrição:** A implementação de chamadas de voz com WebRTC geralmente requer um servidor de sinalização (Signaling Server) e, possivelmente, servidores STUN/TURN para atravessar NATs e firewalls.
    *   **Informações Necessárias:** Endereços e credenciais (se aplicável) desses servidores.
*   **Chave de Assinatura Android (Release):**
    *   **Descrição:** Essencial para publicar o aplicativo na Google Play Store e para atualizações futuras. Sem ela, você não pode gerar um APK/AAB de release assinado.
    *   **Arquivos/Informações Necessárias:**
        *   Arquivo Keystore (`.jks` ou `.keystore`).
        *   Senha do Keystore.
        *   Alias da Chave.
        *   Senha da Chave.
    *   **Uso:** Essas informações são geralmente armazenadas de forma segura (não diretamente no repositório) e configuradas no processo de build (ex: via `key.properties` referenciado no `android/app/build.gradle` ou através de variáveis de ambiente no CodeMagic).
*   **Textos Legais e Informativos:**
    *   **Descrição:** Textos para Termos de Uso, Política de Privacidade, mensagens de boas-vindas, regras do clã, etc.
    *   **Formato:** Arquivos de texto simples (.txt) ou Markdown (.md).
    *   **Conteúdo:** Você precisa fornecer o conteúdo exato desses textos, adaptados à realidade e regras do clã Providências.
*   **Configurações Específicas do Clã:**
    *   **Descrição:** Nomes exatos dos canais iniciais, cargos padrão (Líder, Membro, etc.), permissões associadas a cada cargo, estrutura hierárquica desejada.
    *   **Formato:** Documento de texto ou planilha descrevendo a estrutura.
*   **Credenciais CodeMagic (se aplicável):**
    *   **Descrição:** Se houver configurações específicas ou variáveis de ambiente necessárias no CodeMagic (além da chave de assinatura), como tokens de API, elas precisam ser documentadas e configuradas na plataforma CodeMagic.

## 5. Instruções de Uso

1.  **Substitua/Adicione os Assets:** Coloque todos os arquivos de imagem, áudio e fontes nas pastas corretas (`assets/images/`, `assets/audio/`, `assets/fonts/`). Lembre-se de usar nomes descritivos.
2.  **Atualize `pubspec.yaml`:** Certifique-se de que todas as pastas de assets e arquivos de fontes estejam corretamente declarados na seção `flutter:` do arquivo `pubspec.yaml`.
3.  **Atualize o Código:** Revise o código Dart (`lib/`) para garantir que todas as referências aos assets (imagens, sons, fontes) usem os novos nomes descritivos e caminhos corretos.
4.  **Configure o Firebase:** Adicione os arquivos `google-services.json` e `GoogleService-Info.plist` aos locais corretos se estiver usando Firebase.
5.  **Configure a Assinatura Android:** Prepare o arquivo keystore e as senhas. Configure o `android/app/build.gradle` e/ou o ambiente de build (CodeMagic) para usar essas credenciais ao gerar builds de release.
6.  **Integre Textos:** Insira os textos legais e informativos nos locais apropriados dentro do aplicativo.
7.  **Configure WebRTC/Outros Serviços:** Adicione as configurações necessárias para chamadas de voz e outros serviços de backend.

Ao fornecer todos esses itens e informações, o desenvolvimento poderá prosseguir para a fase de integração final, testes e compilação das versões de release para distribuição.



## 6. Configuração Adicional: Painel Administrativo (`admin_panel.dart`)

Recentemente, foi adicionado o arquivo `lib/screens/admin_panel.dart`, que implementa uma tela de painel administrativo com funcionalidades de backup e restauração de dados.

**Para que este painel funcione corretamente, são necessárias as seguintes configurações adicionais:**

*   **Implementação do `AuthProvider`:**
    *   **Descrição:** O arquivo `admin_panel.dart` atualmente contém uma classe `AuthProvider` **placeholder** (apenas para evitar erros de compilação imediatos). Você precisa fornecer a implementação **real** do `AuthProvider`, que deve conter a lógica de autenticação (login, logout) e os métodos `backupData(Map<String, dynamic> data)` e `restoreData()` com a lógica real de backup (incluindo criptografia, se desejado) e restauração, provavelmente interagindo com o Firebase ou outro backend.
    *   **Localização Sugerida:** `/home/ubuntu/voip_project/lib/providers/auth_provider.dart` (crie este arquivo se não existir).
*   **Fornecer o `AuthProvider` na Árvore de Widgets:**
    *   **Descrição:** Assim como o `UserProvider` é fornecido no `main.dart`, o `AuthProvider` também precisa ser disponibilizado para que a tela `AdminPanelScreen` possa acessá-lo via `Provider.of<AuthProvider>(context)`.
    *   **Ação:** Modifique o `main.dart` para usar `MultiProvider` e inclua o `AuthProvider` na lista de providers. Exemplo:
        ```dart
        // Em main.dart
        import 'package:provider/provider.dart';
        import 'providers/user_provider.dart';
        import 'providers/auth_provider.dart'; // Importe o AuthProvider real
        // ... outros imports

        runApp(const LAMAFIAApp());

        class LAMAFIAApp extends StatelessWidget {
          const LAMAFIAApp({super.key});

          @override
          Widget build(BuildContext context) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (context) => UserProvider()),
                ChangeNotifierProvider(create: (context) => AuthProvider()), // Adicione o AuthProvider
              ],
              child: MaterialApp(
                // ... restante da configuração do MaterialApp
                home: const SplashScreen(),
                // Considere adicionar rotas nomeadas para facilitar a navegação
                // routes: {
                //   '/admin': (context) => AdminPanelScreen(),
                //   // ... outras rotas
                // },
              ),
            );
          }
        }
        ```
*   **Navegação para o Painel Administrativo:**
    *   **Descrição:** Você precisa decidir como os usuários (presumivelmente apenas administradores) acessarão esta tela. Isso pode ser através de um item de menu, um botão em uma tela de configurações, etc.
    *   **Ação:** Implemente a lógica de navegação no local apropriado do código para levar o usuário à `AdminPanelScreen`. Se usar rotas nomeadas (como sugerido acima), a navegação seria algo como `Navigator.pushNamed(context, '/admin');`.

**Observação Importante:** A lógica de backup e restauração no `admin_panel.dart` atual é apenas um exemplo. A implementação real no `AuthProvider` deve cuidar da segurança (criptografia), armazenamento e recuperação dos dados de forma robusta.
