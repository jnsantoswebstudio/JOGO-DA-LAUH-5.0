# O Reino das Marés da Lauana — V5.0 (fã game independente)

## Execute
Abra `index.html` no computador para experimentar. Para uso no celular / PWA, publique a pasta em HTTPS (ex.: GitHub Pages) e abra a URL na horizontal. Toque **ENTRAR** para tentar tela cheia: navegadores móveis, especialmente Safari no iPhone, podem limitar a API de fullscreen; usar **Adicionar à Tela de Início** oferece experiência mais imersiva.

## Conteúdo implementado
- Abertura separada com **um único botão Entrar** e menu secundário.
- 5 portais com 6 fases cada (30), incluindo modo corrida, sobreviver, resgate, furtividade, plataforma, natação, exploração e chefes com padrões de projéteis específicos.
- Última fase exige Jonathas e encerra com uma dedicatória para Lauana.
- 10 personagens com retratos, seleção, poderes e 12 roupas/paletas por personagem. Prévia é ilustrativa, não um modelo 3D.
- Lauana invoca Jonathas por **5 segundos**.
- 4 minigames separados: memória, sequência, quiz e caça-conchas.
- Pérolas mais difíceis, melhoras de personagem, dificuldade ajustável.
- Controles: virtual analógico ou direcional, tamanho e mão; PC WASD/setas, espaço, J, K, Shift, E, Esc.
- Salvamento local migrado quando possível da versão 4.0, backup JSON e PWA cache offline.

## Contas reais (não ativas por padrão)
A versão inicial tem **perfil visitante local**. Não salve senhas em localStorage nem fabrique telas de login offline com senhas: conta entre celulares requer servidor seguro.

Para ativar o login em nuvem **opcional**, crie um projeto no Supabase, habilite Email Auth, execute `supabase-setup.sql` no editor SQL, e configure `cloud-config.js` com URL HTTPS e *chave pública/publishable/anon*, **nunca a service_role**. Publique no HTTPS e teste cadastro, confirmação, login, logout, sincronização e RLS com contas reais diferentes. Os arquivos `cloud.js` e `cloud-config.js` dão uma implementação inicial de autenticação e salvamento remoto, ainda sujeita a testes de produção, expiração de sessão e resolução de conflitos. A conta não funcionará enquanto a configuração estiver vazia.

## Atualizações sem reinstalação
O `sw.js` salva os arquivos para uso offline e atualiza o cache por versão. Ao publicar uma nova versão, aumente a constante `CACHE` no service worker; as atualizações chegam quando o aparelho voltar a ter internet e acessar o app. Conteúdo novo não pode ser recebido inteiramente offline. Teste atualização e migração de saves antes de distribuir uma nova versão.

## Segurança, limitações, direitos
Esta edição V5 ainda é um jogo web 2D em evolução: não apresenta modelos 3D nem 30 cenários ilustrados individualmente. O motor usa cinco famílias de ambiente com variações, novos tipos de missão e cinco chefes diferentes. Gráficos avançados, animações quadro a quadro, experiência de loja e login de produção são próximos passos. Monster High é uma marca da Mattel: jogo de fã não oficial, sem vínculo ou licenciamento; cuidado antes de publicar comercialmente.
