# Glossário

Este glossário foi desenvolvido para facilitar a compreensão dos principais termos e conceitos usados em TI e no ambiente corporativo, oferecendo definições objetivas e acessíveis. Cada entrada foi cuidadosamente elaborada para proporcionar uma visão clara e rápida sobre temas que, muitas vezes, podem parecer complexos ou técnicos.

A proposta é que este material sirva como uma referência prática para iniciantes e profissionais, permitindo uma consulta rápida e confiável. Para quem deseja se aprofundar, incluímos referências e sugestões de leitura adicional, ampliando o entendimento e a aplicação de cada termo no dia a dia profissional.

Vale ressaltar que os conceitos aqui abordados, foram pesquisados pelos autores, e podem ter utilizado IAs generativas e/ou pesquisas na internet.

<!-- ![Forks](https://img.shields.io/github/forks/leonardopangaio/glossario.svg) - 
![Stats](https://img.shields.io/github/stars/leonardopangaio/glossario.svg) - 
![Watchers](https://img.shields.io/github/watchers/leonardopangaio/glossario.svg) - 
![Followers](https://img.shields.io/github/followers/leonardopangaio.svg?style=social&label=Follow&maxAge=2592000) -->

<!-- início glossário -->

---
## Address Resolution Protocol (ARP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Address Resolution Protocol (ARP)* é um protocolo de rede utilizado para mapear endereços IP em endereços MAC dentro de uma rede local. Isso é essencial para que dispositivos na mesma rede se comuniquem de forma eficiente. O ARP consulta o endereço IP de um dispositivo e o converte em seu endereço MAC, permitindo a transmissão de dados no nível de enlace.

No modelo OSI, o ARP atua na Camada 2 (Enlace), pois envolve a comunicação direta entre dispositivos em uma rede local. É utilizado principalmente em redes Ethernet para garantir que os dados sejam entregues corretamente aos dispositivos de destino.

### Referências

- [Fortinet about ARP](https://www.fortinet.com/resources/cyberglossary/what-is-arp);
- [Wikipedia about ARP](https://en.wikipedia.org/wiki/Address_Resolution_Protocol);
- [GeeksForGeeks about ARP](https://www.geeksforgeeks.org/how-address-resolution-protocol-arp-works/);

---
## Apache Kafka

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

Apache Kafka é uma plataforma distribuída de streaming de dados projetada para lidar com grandes volumes de informações em tempo real. Diferente de sistemas de filas tradicionais, o Kafka armazena dados em logs distribuídos e permite que múltiplos consumidores leiam as mensagens, o que o torna ideal para aplicações de análise de dados em tempo real, processamento de eventos e integração de sistemas.

Kafka é frequentemente usado em arquiteturas de microservices e data lakes, e sua estrutura de log facilita a replicação e recuperação de dados em diferentes ambientes. Ele oferece um sistema escalável e de baixa latência, permitindo que empresas como LinkedIn e Uber processem milhões de eventos por segundo.

### Referências

- [Confluent about Apache Kafka](https://www.confluent.io/what-is-apache-kafka/?utm_medium=sem&utm_source=google&utm_campaign=ch.sem_br.nonbrand_tp.prs_tgt.kafka_mt.xct_rgn.latam_sbrgn.brazil_lng.eng_dv.all_con.kafka-general&utm_term=apache%20kafka&creative=&device=c&placement=&gad_source=1&gclid=Cj0KCQiAire5BhCNARIsAM53K1hdiXdaZRLf01wpTXqWn9Bc8mqGyu0UBLTIiGwdOA7X0mBC9jEmPO4aAiNPEALw_wcB);
- [Apache Kafka official website](https://kafka.apache.org/);
- [RedHat about Apache Kafka](https://www.redhat.com/pt-br/topics/integration/what-is-apache-kafka);
- [Google Cloud about Apache Kafka](https://cloud.google.com/learn/what-is-apache-kafka?hl=pt-BR);
- [IBM about Apache Kafka](https://www.ibm.com/br-pt/topics/apache-kafka);
- [Wikipedia about Apache Kafka](https://pt.wikipedia.org/wiki/Apache_Kafka);
- [Oracle about Apache Kafka](https://www.oracle.com/br/cloud/apache-kafka/);

---
## Atomicidade, Consistência, Isolamento e Durabilidade (ACID)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

Atomicidade, Consistência, Isolamento e Durabilidade (ACID) é um conjunto de propriedades que garante a confiabilidade das transações em bancos de dados relacionais. Cada letra representa uma propriedade importante para assegurar que as operações ocorram de maneira previsível e segura:
- **Atomicidade:** Assegura que todas as operações de uma transação são concluídas ou nenhuma delas será. Ou seja, a transação é uma unidade indivisível; se ocorrer um erro em qualquer parte, toda a transação é desfeita.
- **Consistência:** Garante que a transação leva o banco de dados de um estado válido a outro, respeitando todas as regras e restrições definidas. Se alguma regra for violada, a transação é revertida.
- **Isolamento:** Assegura que as transações não interfiram entre si quando executadas simultaneamente. Cada transação deve ocorrer independentemente, e os efeitos de uma transação não são visíveis para outras até que esteja concluída.
- **Durabilidade:** Garante que, uma vez que uma transação é concluída, as alterações são permanentes, mesmo que haja uma falha no sistema.

Essas propriedades são essenciais para aplicativos que requerem alta confiabilidade, como sistemas bancários, onde a precisão e a consistência dos dados são fundamentais.

### Referências

- [MongoDB about ACID](https://www.mongodb.com/resources/basics/databases/acid-transactions);
- [Wikipedia about ACID](https://en.wikipedia.org/wiki/ACID);
- [GeeksForGeeks about ACID](https://www.geeksforgeeks.org/acid-properties-in-dbms/);
- [Amazon AWS about the difference between ACID and BASE](https://aws.amazon.com/pt/compare/the-difference-between-acid-and-base-database/);
- [MongoDB about ACID Compliance](https://www.mongodb.com/resources/products/capabilities/acid-compliance);

---
## Basically Available, Soft State, Eventual Consistency (BASE)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

BASE é um modelo de consistência mais flexível, usado frequentemente em bancos de dados NoSQL, que prioriza a disponibilidade e a performance sobre a consistência imediata dos dados:
- **Basicamente Disponível (Basically Available):** O sistema deve estar sempre disponível para consulta, mesmo que os dados não estejam em seu estado mais atualizado ou consistente. Isso significa que o sistema permite leituras mesmo que algumas partes estejam temporariamente indisponíveis.
- **Estado Suave (Soft State):** O estado do sistema pode mudar ao longo do tempo, mesmo sem novas entradas, devido à replicação e sincronização de dados em sistemas distribuídos.
- **Consistência Eventual (Eventual Consistency):** Em vez de garantir a consistência imediata, o sistema garante que, em algum momento, os dados serão consistentes para todos os usuários. Isso é aceito em cenários onde a atualização em tempo real não é essencial.

O modelo BASE é comum em sistemas distribuídos que precisam ser escaláveis e tolerantes a falhas, como redes sociais e aplicativos de streaming, onde a disponibilidade e a velocidade são mais importantes que a consistência em tempo real dos dados.

### Referências

- [GeeksForGeeks about the difference between ACID and BASE](https://www.geeksforgeeks.org/acid-model-vs-base-model-for-database/);
- []();

---
## Border Gateway Protocol (BGP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Border Gateway Protocol (BGP)* é um protocolo de roteamento de camada de aplicação utilizado para troca de informações de roteamento entre sistemas autônomos (AS) na Internet. Ele permite que redes distintas determinem a melhor rota para transmitir dados, especialmente em larga escala, como acontece entre grandes ISPs (Provedores de Serviços de Internet). O BGP é o protocolo que sustenta a conectividade global da internet, viabilizando o tráfego de dados de uma rede para outra.

Como protocolo de roteamento entre domínios, o BGP é projetado para ser robusto e adaptável a mudanças na topologia da rede. Por ser de camada de aplicação, o BGP utiliza a porta 179 TCP para comunicação, conectando sistemas de roteadores de diferentes redes e permitindo que ajustem rotas de acordo com políticas definidas.

### Referências

- [Cloudflare about BGP](https://www.cloudflare.com/pt-br/learning/security/glossary/what-is-bgp/);
- [Amazon AWS about BGP](https://aws.amazon.com/pt/what-is/border-gateway-protocol/);
- [Wikipedia about BGP](https://pt.wikipedia.org/wiki/Border_Gateway_Protocol);
- [Fortinet about BGP](https://www.fortinet.com/br/resources/cyberglossary/bgp-border-gateway-protocol);
- [CISCO about BGP](https://www.cisco.com/c/pt_br/support/docs/ip/border-gateway-protocol-bgp/5441-aggregation.html);
- [Cloudflare about BGP kidnapping](https://www.cloudflare.com/pt-br/learning/security/glossary/bgp-hijacking/);

---
## Change Data Capture (CDC)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Change Data Capture (CDC)* é uma funcionalidade do *Microsoft SQL Server* que permite capturar e registrar alterações nos dados em tempo real.

> A captura de dados de alteração utiliza o SQL Server Agent para registrar inserções, atualizações e exclusões que ocorrem em uma tabela. Portanto, ele torna essas alterações de dados acessíveis para serem facilmente consumidas usando um formato relacional. Os dados da coluna e os metadados essenciais necessários para aplicar esses dados de alteração a um ambiente de destino são capturados para as linhas modificadas e armazenados em tabelas de alteração que espelham a estrutura da coluna das tabelas de origem rastreadas. Além disso, funções com valor de tabela estão disponíveis para acesso sistemático a esses dados de alteração pelos consumidores.
>
> Um bom exemplo de um consumidor de dados que essa tecnologia tem como alvo é um aplicativo de extração, transformação e carregamento (ETL). Um aplicativo ETL carrega incrementalmente dados de alteração de tabelas de origem do SQL Server para um data warehouse ou data mart. Embora a representação das tabelas de origem dentro do data warehouse deva refletir as alterações nas tabelas de origem, uma tecnologia de ponta a ponta que atualiza uma réplica da origem não é apropriada. Em vez disso, você precisa de um fluxo confiável de dados de alteração que seja estruturado para que os consumidores possam aplicá-lo a representações de destino diferentes dos dados. A captura de dados de alteração do SQL Server fornece essa tecnologia.

### Referências

- [Wikipedia about CDC](https://en.wikipedia.org/wiki/Change_data_capture);
- [Microsoft about CDC](https://learn.microsoft.com/en-us/sql/relational-databases/track-changes/about-change-data-capture-sql-server?view=sql-server-ver16);

---
## Comma-Separated Values (CSV)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Comma-Separated Values (CSV)* é um formato de arquivo que armazena dados em texto, separados por vírgulas. Cada linha do arquivo representa um registro, e cada coluna é separada por uma vírgula, permitindo a fácil importação e exportação de dados para softwares como planilhas e bancos de dados.

O CSV é amplamente utilizado para transferência de dados entre diferentes sistemas, especialmente quando a simplicidade e compatibilidade são prioridades. Este formato é particularmente útil para armazenamento temporário de dados ou para integração entre sistemas distintos.

### Referências

- [Wikipedia about CSV](https://en.wikipedia.org/wiki/Comma-separated_values);
- [Wikipedia about CSV (pt-br)](https://pt.wikipedia.org/wiki/Comma-separated_values);

---
## Common Internet File System (CIFS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Common Internet File System (CIFS)* é um protocolo de compartilhamento de arquivos utilizado para permitir que dispositivos em uma rede acessem arquivos remotos de forma transparente. O CIFS é uma versão aprimorada do SMB (Server Message Block), utilizado principalmente em redes Windows, permitindo o acesso a arquivos, impressoras e outras fontes de dados em servidores remotos.

Embora o CIFS tenha sido amplamente utilizado em redes locais, o SMB mais moderno (SMB2 e SMB3) é agora preferido devido a melhorias de desempenho e segurança. Também utiliza a porta 445 na maioria das implementações modernas, sendo uma versão anterior do SMB.

### Referências

- [Wikipedia about SMB](https://pt.wikipedia.org/wiki/Server_Message_Block);
- [F5 Glossary about CIFS](https://www.f5.com/pt_br/glossary/cifs-smb);
- [GeeksForGeeks about CIFS](https://www.geeksforgeeks.org/what-is-cifs-common-internet-file-system/);
- [Amazon AWS about the difference between CIFS and NFS](https://aws.amazon.com/pt/compare/the-difference-between-nfs-and-cifs/);
- [Lenovo about CIFS](https://www.lenovo.com/us/en/glossary/what-is-common-internet-file-system-cifs/?orgRef=https%253A%252F%252Fwww.google.com%252F&srsltid=AfmBOoquJ-4XD39N68vDzYqropme-52PQ_JzVRuVU1Yk1bpu1jhcpi_A);

---
## Computer-Aided Design (CAD)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Computer-Aided Design (CAD)* é um conjunto de ferramentas de software utilizado para criar projetos técnicos e desenhos em diversas áreas, como arquitetura, engenharia e design de produto. Com o CAD, os profissionais podem desenvolver modelos 2D e 3D, simulando a construção ou fabricação de um produto antes da execução.

Esses sistemas oferecem funcionalidades como edição precisa de geometria, visualização em três dimensões, análise de desempenho e integração com outras ferramentas de engenharia e manufatura. Exemplos populares de software CAD incluem AutoCAD, SolidWorks e CATIA.

### Referências

- [Wiki about CAD (pt-br)](https://pt.wikipedia.org/wiki/Desenho_assistido_por_computador);
- [Wiki about CAD](https://en.wikipedia.org/wiki/Computer-aided_design);

---
## Container as a Service (CaaS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Container as a Service (CaaS)* é um serviço em nuvem que permite aos usuários gerenciar e orquestrar contêineres de software. Com CaaS, as empresas podem executar aplicações em contêineres sem precisar se preocupar com a infraestrutura subjacente, como redes, armazenamento e escalabilidade. Esse modelo é especialmente vantajoso para desenvolvimento ágil e para equipes que desejam automação em implantação.

Ao usar CaaS, os desenvolvedores conseguem configurar, escalar e gerenciar contêineres de forma simplificada, aproveitando plataformas como Kubernetes e Docker Swarm. Esse serviço geralmente é oferecido por provedores de nuvem, que lidam com toda a infraestrutura de contêineres, permitindo que os usuários se concentrem no desenvolvimento e entrega de suas aplicações.

### Referências

- [IBM about CaaS](https://www.ibm.com/br-pt/topics/containers-as-a-service);
- [RedHat about CaaS](https://www.redhat.com/pt-br/topics/cloud-computing/what-is-caas);
- [Atlassian about CaaS](https://www.atlassian.com/br/microservices/cloud-computing/containers-as-a-service);
- [Checkpoint about CaaS](https://www.checkpoint.com/pt/cyber-hub/cloud-security/what-is-container-security/what-is-container-as-a-service-caas/);
- [HP about CaaS](https://www.hpe.com/us/en/what-is/caas.html);
- [DIO about difference between types of cloud computing](https://www.dio.me/articles/iaas-paas-saas-e-caas-entendendo-os-diferentes-modelos-de-computacao-em-nuvem-em-um-mundo-multi-cloud);
- [DIO about different types of cloud computing](https://www.dio.me/articles/iaas-paas-saas-e-caas-conceitos-exemplos-e-diferencas);

---
## Data Control Language (DCL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Data Control Language (DCL)* é uma subcategoria da linguagem SQL dedicada ao controle de acesso aos dados em bancos de dados. Ela é composta principalmente por comandos como `GRANT` e `REVOKE`, que controlam permissões de acesso aos dados e recursos do banco.

Esses comandos são essenciais para a segurança do banco de dados, pois permitem definir quem pode realizar operações específicas, como ler, escrever ou modificar dados. A DCL ajuda os DBAs a gerenciar e proteger o acesso aos dados de maneira estruturada e segura.

### Referências

- [Wikipedia about DCL](https://en.wikipedia.org/wiki/Data_control_language);
- [GeekForGeeks about DCL](https://www.geeksforgeeks.org/dcl-full-form/);

---
## Data Definition Language (DDL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Data Definition Language (DDL)* é uma linguagem utilizada para definir a estrutura e os objetos de um banco de dados, incluindo tabelas, índices e esquemas. Os comandos DDL, como `CREATE`, `ALTER` e `DROP`, permitem criar, modificar e excluir estruturas de dados.

A DDL é fundamental para configurar e organizar o banco de dados, sendo usada para estabelecer a base de armazenamento de dados. Além disso, esses comandos são executados em transações que são imediatamente aplicadas, garantindo que as definições de dados estejam sempre atualizadas.

### Referências

- [Wikipedia about DDL](https://en.wikipedia.org/wiki/Data_definition_language);
- [DIO about DDL](https://www.dio.me/articles/data-definition-language-ddl);

---
## Data Manipulation Language (DML)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Data Manipulation Language (DML)* é uma subcategoria da linguagem SQL usada para manipular dados em bancos de dados. Com comandos como INSERT, UPDATE, DELETE, e SELECT, a DML permite a inserção, atualização, exclusão e consulta de dados.

A DML é o núcleo da interação com os dados armazenados e é essencial para operações transacionais. Ela permite que os usuários consultem e modifiquem dados em tempo real, de acordo com as necessidades do negócio.

### Referências

- [Wikipedia about DML](https://en.wikipedia.org/wiki/Data_manipulation_language);
- [GeeksForGeeks about DML](https://www.geeksforgeeks.org/dml-full-form/);

---
## Data Migration (Migração de Dados)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

*Data Migration* é o processo de mover dados de um sistema ou ambiente para outro, seja para atualização de hardware, troca de software ou migração para a nuvem. Esse processo envolve etapas como extração, transformação e carregamento de dados, e exige uma cuidadosa avaliação de compatibilidade e integridade.

Durante a migração de dados, é comum realizar mapeamento de dados e testes extensivos para garantir que não haja perda ou corrupção de dados. Esse processo é fundamental para garantir que os dados permaneçam precisos e úteis após a transição para o novo sistema.

### Referências

- [Microsoft Azure about Data Migration](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-data-migration);
- [IBM about Data Migration](https://www.ibm.com/topics/data-migration);
- [Netapp about Data Migration](https://www.netapp.com/data-management/what-is-data-migration/);
- [Wikipedia about Data Migration](https://en.wikipedia.org/wiki/Data_migration);

---
## Data Query Language (DQL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Data Query Language (DQL)* é uma subcategoria da SQL usada exclusivamente para consultas de dados. O comando `SELECT` é o principal comando DQL, permitindo que os usuários recuperem dados específicos de tabelas no banco de dados.

A DQL é fundamental para recuperar informações do banco de dados sem alterar sua estrutura. Com ela, é possível realizar consultas simples e complexas, filtrando e organizando os dados conforme necessário.

### Referências

- [DIO about DQL](https://www.dio.me/articles/dql-data-query-language);
- [Wikipedia about DQL](https://en.wikipedia.org/wiki/Data_query_language);
- [GeekForGeeks about DQL](https://www.geeksforgeeks.org/dql-full-form/);

---
## Data Transformation Language (DTL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Data Transformation Language (DTL)* é um termo usado para definir operações que transformam dados de um formato para outro, geralmente dentro de processos de ETL (Extração, Transformação e Carga). Essas transformações são aplicadas para adaptar os dados às necessidades de um sistema ou aplicativo específico.

A DTL é essencial para manter a consistência e integridade dos dados em ambientes onde a integração de diferentes fontes é necessária. Ela pode incluir operações de formatação, limpeza, agregação e enriquecimento de dados, sendo amplamente utilizada em processos de migração e integração.

### Referências

- [Wikipedia about DTL](https://en.wikipedia.org/wiki/Model_transformation_language);

---
## Database Administrator (DBA)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Database Administrator (DBA)* é o profissional responsável pela administração de bancos de dados, cuidando da configuração, manutenção, segurança e otimização do desempenho. Este profissional é fundamental para garantir a disponibilidade e integridade dos dados em uma organização.

Além de gerenciar as operações diárias do banco de dados, o DBA também participa do planejamento e implementação de atualizações e migrações. Ele colabora com desenvolvedores para otimizar consultas e garantir a eficiência do sistema de gerenciamento de banco de dados (SGBD).

### Referências

- [Oracle about DBA](https://www.oracle.com/br/database/what-is-a-dba/);
- [Wikipedia about DBA](https://pt.wikipedia.org/wiki/Administrador_de_banco_de_dados);
- [DIO about DBA](https://www.dio.me/articles/tudo-o-que-voce-precisa-saber-sobre-dba-data-base-administrator);

---
## Database Migration (Migração de Banco de Dados)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

*Database Migration* é um tipo específico de migração que envolve a transição de um banco de dados de um sistema para outro. Esse processo pode ser necessário ao mudar o sistema de gerenciamento de banco de dados (SGBD) ou ao atualizar a infraestrutura. Migrações de banco de dados precisam de planejamento rigoroso, já que alterações na estrutura e dependências de dados podem impactar o funcionamento das aplicações.

A migração pode incluir mudanças no schema de dados, mapeamento entre tipos de dados diferentes e testes de performance. Ferramentas como AWS DMS, Azure *Database Migration* Service, e ferramentas nativas de SGBDs ajudam a facilitar a migração, minimizando o risco de problemas.

### Referências

- [Google Cloud about Database Migration](https://cloud.google.com/architecture/database-migration-concepts-principles-part-1?hl=pt-br);
- [Amazon AWS Database Migration Service (DMS)](https://aws.amazon.com/pt/dms/);


---
## Dead Letter Queue (DLQ)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Dead Letter Queue (DLQ)* é uma fila de mensagens em sistemas de mensageria que armazena mensagens que não puderam ser entregues ou processadas com sucesso. As DLQs são usadas para rastrear e resolver falhas, garantindo que mensagens problemáticas não prejudiquem o fluxo geral de dados no sistema.

A DLQ é uma ferramenta importante para sistemas que exigem alta confiabilidade e monitoramento constante. Ela permite que as equipes identifiquem e corrijam problemas, garantindo a integridade e continuidade das operações de mensagens.

### Referências

- [Amazon AWS about DLQ](https://aws.amazon.com/what-is/dead-letter-queue/);
- [Wikipedia about DLQ](https://en.wikipedia.org/wiki/Dead_letter_queue);

---
## Demilitarized Zone (DMZ)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

A *Demilitarized Zone (DMZ)* é uma área de rede que adiciona uma camada extra de segurança, isolando servidores externos da rede interna. Em uma DMZ, servidores de acesso público, como web servers e servidores de e-mail, estão expostos à Internet, mas são separados por firewalls para evitar acessos não autorizados à rede interna.

Essa configuração é comum em redes corporativas para proteger dados confidenciais, mantendo serviços de acesso público separados dos recursos internos. A DMZ é uma parte essencial da arquitetura de segurança de rede, garantindo que serviços críticos sejam acessíveis sem comprometer a segurança.

### Referências

- [Fortinet about DMZ (pt-br)](https://www.fortinet.com/br/resources/cyberglossary/what-is-dmz);
- [Wikipedia about DMZ](https://pt.wikipedia.org/wiki/DMZ_(computa%C3%A7%C3%A3o));
- [Checkpoint about DMZ](https://www.checkpoint.com/pt/cyber-hub/network-security/what-is-a-dmz-network/);
- [Fortinet about DMZ](https://www.fortinet.com/resources/cyberglossary/what-is-dmz);
- [F5 about DMZ](https://www.f5.com/glossary/demilitarized-zone-dmz);
- [Barracuda about DMZ](https://www.barracuda.com/support/glossary/dmz-network);

---
## Domain Name System (DNS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Domain Name System (DNS)* é um sistema de resolução de nomes que traduz nomes de domínio legíveis para endereços IP. Quando um usuário acessa um site pelo nome, o DNS converte esse nome no IP correspondente, permitindo que o navegador localize o servidor correto. O DNS opera na camada de aplicação e utiliza a porta 53, funcionando sobre os protocolos TCP e UDP.

Esse protocolo é essencial para a navegação na web, e sua estrutura hierárquica garante que nomes de domínio sejam resolvidos de forma rápida e eficiente. O DNS também inclui registros que definem o roteamento e a segurança dos domínios.

### Referências

- [Cloudflare about DNS](https://www.cloudflare.com/pt-br/learning/dns/what-is-dns/);
- [Amazon AWS about DNS](https://aws.amazon.com/pt/route53/what-is-dns/);
- [Wikipedia about DNS](https://pt.wikipedia.org/wiki/Sistema_de_Nomes_de_Dom%C3%ADnio);
- [IBM about DNS](https://www.ibm.com/br-pt/topics/dns);
- [IBM about DNS](https://www.ibm.com/br-pt/topics/dns-protocol);
- [Kaspersky about DNS](https://www.kaspersky.com.br/resource-center/definitions/dns);
- [Fortinet about DNS](https://www.fortinet.com/br/resources/cyberglossary/what-is-dns);

---
## Dynamic Application Security Testing (DAST)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Dynamic Application Security Testing (DAST)* é um tipo de teste de segurança que avalia o comportamento de uma aplicação enquanto ela está em execução. Diferente do SAST, que verifica o código-fonte, o DAST simula ataques externos para identificar vulnerabilidades em tempo de execução, como falhas de autenticação, injeções de SQL e falhas de configuração.

Ferramentas DAST populares incluem OWASP ZAP, Burp Suite e Acunetix, que oferecem scanners de vulnerabilidades automatizados para testes de segurança em tempo real.

### Referências

- [Opentext about DAST](https://www.opentext.com/pt-br/o-que-e/dast);
- [Wikipedia about DAST](https://en.wikipedia.org/wiki/Dynamic_application_security_testing);
- [IBM about DAST](https://www.ibm.com/topics/dynamic-application-security-testing);
- [Circleci about DAST](https://circleci.com/blog/sast-vs-dast-when-to-use-them/);
- [Sonar about DAST](https://www.sonatype.com/resources/articles/what-is-dast);
- [Check Point about DAST](https://www.checkpoint.com/cyber-hub/cloud-security/what-is-dynamic-application-security-testing-dast/);

---
## Dynamic Host Configuration Protocol (DHCP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Dynamic Host Configuration Protocol (DHCP)* é um protocolo de rede que permite a configuração automática de endereços IP para dispositivos em uma rede. Ele opera na camada de aplicação e atribui automaticamente endereços IP, gateways e outros parâmetros de rede para dispositivos conectados, facilitando a administração da rede.

O DHCP utiliza as portas UDP 67 (servidor) e 68 (cliente) e é essencial para redes dinâmicas, especialmente em ambientes empresariais e residenciais. Esse protocolo simplifica a configuração de rede, evitando a necessidade de configurar IPs manualmente em cada dispositivo.

### Referências

- [Microsoft about DHCP](https://learn.microsoft.com/pt-br/windows-server/networking/technologies/dhcp/dhcp-top);
- [Wikipedia about DHCP (pt-br)](https://pt.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol);
- [NordVPN about DHCP](https://nordvpn.com/pt-br/blog/o-que-e-dhcp/);
- [Wikipedia about DHCP](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol);
- [Fortinet about DHCP](https://www.fortinet.com/br/resources/cyberglossary/dynamic-host-configuration-protocol-dhcp);
- [GeeksForGeeks about DHCP](https://www.geeksforgeeks.org/dynamic-host-configuration-protocol-dhcp/);

---
## Dynamic Link Library (DLL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Dynamic Link Library (DLL)* é um tipo de biblioteca de código compartilhável no sistema operacional Windows que permite que múltiplos programas acessem o mesmo código. As DLLs contêm funções e recursos que podem ser reutilizados por diferentes aplicações, economizando espaço de armazenamento e melhorando a eficiência de desenvolvimento.

A DLL permite que os desenvolvedores compartilhem código entre programas, facilitando a manutenção e atualização de software. No entanto, o uso de DLLs também pode gerar problemas de compatibilidade, especialmente quando versões diferentes são usadas em sistemas.

### Referências

- [Wikipedia about DLL (pt-br)](https://pt.wikipedia.org/wiki/DLL);
- [Wikipedia about DLL](https://en.wikipedia.org/wiki/Dynamic-link_library);
- [Lenovo about DLL](https://www.lenovo.com/in/en/glossary/dynamic-link-library/?orgRef=https%253A%252F%252Fwww.google.com%252F&srsltid=AfmBOopkYkxhNTImE3Je5cXh1nx9lZ9CONmEy20SR2Mhxvpnd4q1xAAF);
- [Indeed about DLL](https://www.indeed.com/career-advice/career-development/what-is-dll-file);
- [Microsoft about DLL](https://learn.microsoft.com/en-us/troubleshoot/windows-client/setup-upgrade-and-drivers/dynamic-link-library);

---
## Enterprise Resource Planning (ERP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Enterprise Resource Planning (ERP)* é um sistema de gestão empresarial que integra diferentes áreas de uma empresa, como finanças, recursos humanos, logística e vendas. Ele unifica os dados e processos da organização, permitindo que informações fluam entre departamentos e que processos possam ser gerenciados de maneira centralizada. Um ERP é essencial para empresas que desejam melhorar a eficiência operacional e obter uma visão unificada de suas operações.

As soluções ERP, como SAP, Oracle e Microsoft Dynamics, são amplamente utilizadas em empresas de médio e grande porte para otimizar processos e apoiar decisões estratégicas. Em ambientes hospitalares, um ERP pode se integrar com sistemas de saúde, como HIS, RIS e LIS, fornecendo uma visão holística da organização.

### Referências

- [SAP about ERP](https://www.sap.com/brazil/products/erp/what-is-erp.html#:~:text=O%20planejamento%20de%20recursos%20empresariais,servi%C3%A7os%2C%20procurement%20e%20muito%20mais.);
- [TOTVS about ERP](https://www.totvs.com/blog/erp/o-que-e-erp/);
- [Oracle about ERP](https://www.oracle.com/br/erp/what-is-erp/);
- [Wikipedia about ERP](https://pt.wikipedia.org/wiki/Sistema_integrado_de_gest%C3%A3o_empresarial);
- [Sankhia about ERP](https://www.sankhya.com.br/erp/);

---
## Enterprise Service Bus (ESB)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Enterprise Service Bus (ESB)*, barramento de serviços, ou ESB, é uma arquitetura de software que facilita a integração e comunicação entre diferentes sistemas e aplicações dentro de uma empresa. Ele age como um intermediário entre sistemas, permitindo a troca de dados e a orquestração de processos, mesmo entre sistemas que não foram projetados para se comunicarem diretamente.

Um ESB pode oferecer funcionalidades como roteamento, transformação de dados, e suporte a diversos protocolos de comunicação. Ele é particularmente útil em ambientes corporativos complexos onde muitos sistemas precisam trabalhar de maneira integrada e pode utilizar tecnologias como MuleSoft e IBM Integration Bus para gerenciar a comunicação entre sistemas.

### Referências

- [Amazon AWS about ESB](https://aws.amazon.com/pt/what-is/enterprise-service-bus/);
- [Wikipedia about ESB](https://en.wikipedia.org/wiki/Enterprise_service_bus);
- [Wikipedia about ESB (pt-br)](https://pt.wikipedia.org/wiki/Enterprise_Service_Bus);
- [MuleSoft about ESB](https://www.mulesoft.com/pt/resources/esb/what-esb);
- [IBM about ESB](https://www.ibm.com/br-pt/topics/esb);
- [SAP about ESB](https://learning.sap.com/learning-journeys/developing-business-processes-with-sap-process-orchestration/explaining-the-enterprise-service-bus_b3d8c932-83e8-4e7d-a982-6599f75a9032);

---
## Ethernet

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

Ethernet (Ethernet) é uma tecnologia de rede com fio amplamente utilizada para redes locais (LANs). Ela define os padrões para comunicação em redes cabeadas, incluindo tipos de cabos, velocidades e formatos de frame. A Ethernet permite que dispositivos compartilhem dados em uma rede local, conectando-se a switches ou roteadores.

No modelo OSI, a Ethernet opera na Camada 2 (Enlace) e parcialmente na Camada 1 (Física), pois abrange desde o meio físico até a forma de transmissão de dados entre dispositivos.

### Referências

- [Wikipedia about Ethernet](https://en.wikipedia.org/wiki/Ethernet);
- [CISCO about Ethernet](https://www.cisco.com/c/en/us/solutions/enterprise-networks/what-is-ethernet.html);
- [GeeksForGeeks about Ethernet](https://www.geeksforgeeks.org/what-is-ethernet/);

---
## Extract, Transform and Load (ETL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Extract, Transform and Load (ETL)* é um processo utilizado em sistemas de dados que envolve a extração de dados de uma ou mais fontes, a transformação desses dados para um formato adequado à análise ou ao armazenamento, e, finalmente, o carregamento dos dados em um sistema de destino, como um data warehouse. Esse processo é essencial para centralizar dados de diferentes fontes e consolidá-los, permitindo que sejam usados para geração de relatórios, análises ou apoio à tomada de decisão.

Durante a etapa de extração, os dados são coletados de diversas fontes, que podem incluir bancos de dados, APIs, arquivos CSV ou até mesmo planilhas. A etapa de transformação envolve limpar, padronizar e, em alguns casos, enriquecer esses dados. O carregamento final normalmente armazena os dados em um banco de dados centralizado, onde podem ser acessados por ferramentas de BI e análise. Ferramentas de ETL como Apache NiFi, Talend e Informatica são comuns em ambientes corporativos.

### Referências

- [Wikipedia about ETL](https://pt.wikipedia.org/wiki/Extract,_transform,_load);
- [Amazon AWS about ETL](https://aws.amazon.com/pt/what-is/etl/);
- [IBM about ETL](https://www.ibm.com/br-pt/topics/etl);
- [Oracle about ETL](https://www.oracle.com/br/integration/what-is-etl/);
- [Google Cloud about ETL](https://cloud.google.com/learn/what-is-etl?hl=pt-BR);

---
## Fast Healthcare Interoperability Resources (FHIR)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Fast Healthcare Interoperability Resources (FHIR)* é um padrão para a troca de informações em saúde desenvolvido pela *HL7 International*. Ele é amplamente adotado para criar sistemas de saúde interoperáveis e oferece um modelo baseado em recursos (ou "recursos de saúde") que pode ser facilmente adaptado e interpretado por diferentes sistemas. Um recurso no FHIR pode ser qualquer entidade relevante na saúde, como pacientes, diagnósticos ou procedimentos.

O FHIR facilita a integração com APIs RESTful e utiliza formatos de dados como JSON e XML, permitindo que informações sejam trocadas de maneira mais ágil e compreensível entre diferentes sistemas. Por suas características modernas, FHIR é cada vez mais utilizado em projetos de saúde digitais e é suportado por grandes players da indústria, como Google e Microsoft.

### Referências

- [Google Cloud about FHIR](https://cloud.google.com/healthcare-api/docs/concepts/fhir?hl=pt-br);
- [HL7 Fundation about FHIR](https://hl7.org/fhir/);
- [FHIR Fundation](https://fhir.org/);
- [Wikipedia about FHIR](https://en.wikipedia.org/wiki/Fast_Healthcare_Interoperability_Resources);

---
## File Transfer Protocol (FTP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *File Transfer Protocol (FTP)* é um protocolo de rede amplamente utilizado para a transferência de arquivos entre sistemas cliente e servidor, e opera na Camada 7 do modelo OSI. Sem criptografia nativa, o FTP transmite dados como texto simples, tornando-o menos seguro que versões aprimoradas, como SFTP e FTPS. É uma escolha comum para hospedar e transferir arquivos em redes locais, embora seu uso tenha diminuído com o aumento de opções mais seguras.

A porta padrão para o FTP é a porta 21 para o canal de controle. No modo ativo, o FTP também utiliza portas adicionais dinâmicas para a transferência de dados, mas o canal de controle é sempre estabelecido inicialmente na porta 21.

### Referências

- [Wikipedia about FTP](https://en.wikipedia.org/wiki/File_Transfer_Protocol);
- [Fortinet about FTP](https://www.fortinet.com/resources/cyberglossary/file-transfer-protocol-ftp-meaning);
- [GeeksForGeeks about FTP](https://www.geeksforgeeks.org/file-transfer-protocol-ftp-in-application-layer/);
- [Hostinger about FTP](https://www.hostinger.com/tutorials/what-is-ftp);
- [Solarwinds about FTP](https://www.solarwinds.com/resources/it-glossary/ftp-server);

---
## Gateway Load Balancing Protocol (GLBP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Gateway Load Balancing Protocol (GLBP)* é um protocolo da Cisco que permite balanceamento de carga entre vários gateways, proporcionando alta disponibilidade e redundância. Diferente do HSRP ou VRRP, que têm apenas um gateway ativo por vez, o GLBP permite que múltiplos gateways atuem simultaneamente, melhorando o desempenho e a distribuição de tráfego.

No modelo OSI, o GLBP atua na Camada 3 (Rede), gerenciando o encaminhamento e o balanceamento de tráfego entre diferentes roteadores dentro da rede.

### Referências

- [CISCO about GLBP](https://www.cisco.com/en/US/docs/ios/12_2t/12_2t15/feature/guide/ft_glbp.html);
- [Wikipedia about GLBP](https://en.wikipedia.org/wiki/Gateway_Load_Balancing_Protocol);
- [GeeksForGeeks about GLBP](https://www.geeksforgeeks.org/gateway-load-balancing-protocol-glbp/);

---
## Geographic Information System (GIS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Geographic Information System (GIS)* é uma ferramenta tecnológica que permite a coleta, análise, interpretação e visualização de dados geográficos. Usado amplamente em áreas como urbanismo, meio ambiente e logística, o GIS permite que informações espaciais sejam combinadas com dados não espaciais para criar mapas, gráficos e relatórios que ajudem na tomada de decisão.

Os GIS podem ser usados para diversas finalidades, desde o mapeamento de rotas e a análise de recursos naturais até o planejamento urbano e o monitoramento de áreas agrícolas. Eles operam com dados de diversas fontes, como satélites, drones e sensores geoespaciais.

### Referências

- [ESRI about GIS](https://www.esri.com/pt-br/what-is-gis/overview);
- [Imagem about GIS](https://www.img.com.br/pt-br/o-que-e-gis/visao-geral);
- [Wikipedia about GIS (pt-br)](https://pt.wikipedia.org/wiki/Sistema_de_informa%C3%A7%C3%A3o_geogr%C3%A1fica);
- [IBM about GIS](https://www.ibm.com/br-pt/topics/geographic-information-system);
- [USGS about GIS](https://www.usgs.gov/faqs/what-geographic-information-system-gis);
- [Wikipedia about GIS](https://en.wikipedia.org/wiki/Geographic_information_system);

---
## Gerenciamento Eletrônico de Documentos (GED)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O Gerenciamento Eletrônico de Documentos (GED) refere-se ao conjunto de tecnologias e práticas utilizadas para digitalizar, armazenar, organizar, e controlar documentos eletrônicos. O sistema GED permite que as organizações gerenciem o ciclo de vida de documentos de maneira eficiente, desde a criação até o arquivamento ou eliminação.

Esses sistemas são essenciais para empresas que precisam gerenciar grandes volumes de documentos e informações, oferecendo funções como buscas rápidas, controle de versões e segurança no armazenamento. O GED é comumente integrado com sistemas de gestão empresarial, como ERPs, e soluções de workflow.

### Referências

- [TOTVS about GED](https://www.totvs.com/blog/negocios/ged/);
- [GED Portal](https://ged.net.br/definicoes-ged.html);
- [Wikipedia about GED](https://pt.wikipedia.org/wiki/Gerenciamento_eletr%C3%B4nico_de_documentos);
- [Neomind about GED](https://www.neomind.com.br/blog/o-que-e-ged/);
- [Selbetti about GED](https://selbetti.com.br/blog/ged-o-que-e-como-funciona-e-quando-usar/);
- [Sydle about GED](https://www.sydle.com/br/blog/ged-o-que-e-e-como-funciona-5f58df091e43744c69b51502);

---
## Health Level Seven (HL7)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Health Level Seven (HL7)* é um conjunto de padrões internacionais de interoperabilidade para troca de informações clínicas e administrativas em sistemas de saúde. Ele define a estrutura e a organização das mensagens de saúde, garantindo que os dados sejam consistentes e compreensíveis em sistemas de diferentes fornecedores. Seu foco está em permitir que hospitais, laboratórios, clínicas e outras instituições de saúde troquem dados de forma segura e padronizada.

O HL7 é composto por várias versões e tipos de mensagens, e cada uma é destinada a um tipo de informação, como resultados de exames, informações de pacientes e eventos clínicos. O HL7 opera na camada de aplicação do modelo OSI (Camada 7), permitindo que sistemas de saúde comuniquem dados padronizados em alto nível.

### Referências

- [Wikipedia about HL7 (pt-br)](https://pt.wikipedia.org/wiki/Health_Level_7);
- [Wikipedia about HL7](https://en.wikipedia.org/wiki/Health_Level_7);
- [Official HL7 website](https://www.hl7.org/);

---
## Hospital Information System (HIS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Hospital Information System (HIS)* é um sistema de informações hospitalares desenvolvido para gerenciar todos os aspectos operacionais de uma instituição de saúde. Ele inclui funcionalidades como o agendamento de consultas, registro de pacientes, controle de estoques, e emissão de relatórios. Um HIS é essencial para otimizar processos hospitalares e melhorar a qualidade do atendimento.

Integrado a outros sistemas, como sistemas de faturamento e prontuário eletrônico, o HIS possibilita uma visão integrada do funcionamento hospitalar. Ele é frequentemente integrado com ferramentas como Mirth e padrões como HL7, possibilitando a interoperabilidade de dados e o compartilhamento de informações entre diferentes sistemas.

### Referências

- [Talking HealthTech about HIS](https://www.talkinghealthtech.com/glossary/hospital-information-systems-his);
- [Wikipedia about HIS](https://en.wikipedia.org/wiki/Hospital_information_system);

---
## Hyper-Converged Infrastructure (HCI)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Hyper-Converged Infrastructure (HCI)* (Infraestrutura Hiperconvergente) é uma abordagem de infraestrutura de TI que combina computação, armazenamento e rede em uma única solução integrada. Em vez de cada um desses elementos ser gerido separadamente, o HCI usa software para consolidar e gerenciar todos os recursos em um cluster único e escalável. Essa configuração facilita o gerenciamento, aumenta a eficiência e melhora a escalabilidade, já que novos nós podem ser adicionados conforme necessário. A infraestrutura hiperconvergente é amplamente utilizada em ambientes de data centers e nuvem privada por sua capacidade de simplificar operações e reduzir o custo de hardware.

### Referências

- [Wikipedia about HCI](https://en.wikipedia.org/wiki/Hyper-converged_infrastructure);
- [VMWare about HCI](https://www.vmware.com/info/hyper-converged-infrastructure);
- [IBM about HCI](https://www.ibm.com/topics/hyperconverged-infrastructure);
- [HP about HCI](https://www.hpe.com/br/en/what-is/hyperconverged-infrastructure.html);
- [Nutanix about HCI](https://www.nutanix.com/hyperconverged-infrastructure);
- [Cisco about HCI](https://www.cisco.com/c/en/us/solutions/data-center-virtualization/what-is-hyperconverged-infrastructure.html);

---
## Hypertext Transfer Protocol (HTTP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Hypertext Transfer Protocol (HTTP)* é o protocolo de comunicação padrão para a transferência de documentos na web, utilizado para carregar páginas HTML, imagens e outros recursos. Ele opera na Camada de Aplicação (Camada 7) do modelo OSI, a camada mais próxima do usuário. O HTTP é baseado em uma arquitetura cliente-servidor, onde o navegador solicita recursos ao servidor web e o servidor responde com os dados solicitados. Ele é simples, sem criptografia ou autenticação, o que significa que os dados trocados podem ser interceptados.

No contexto do modelo OSI, a Camada de Aplicação lida com as interações diretas dos usuários com os serviços da rede, incluindo a transferência de arquivos, emails e, no caso do HTTP, o acesso à web. Embora seja amplamente utilizado, o HTTP por si só não oferece segurança e, por isso, é comum usá-lo em situações onde a proteção dos dados não é uma preocupação central, como o carregamento de conteúdo estático.

A porta padrão do protocolo HTTP é a porta 80.

### Referências

- [MDN Web Docs about HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP);
- [MDN Web Docs overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview);
- [Wikipedia about HTTP](https://pt.wikipedia.org/wiki/Hypertext_Transfer_Protocol);
- [CloudFlare about HTTP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/hypertext-transfer-protocol-http/);

---
## Hypertext Transfer Protocol Secure (HTTPS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Hypertext Transfer Protocol Secure (HTTPS)* é a versão segura do HTTP, que adiciona uma camada de criptografia utilizando SSL/TLS para proteger a comunicação. Embora também opere na Camada de Aplicação (Camada 7), o HTTPS se diferencia do HTTP por fornecer segurança adicional, garantindo a confidencialidade e a integridade dos dados transmitidos. A criptografia ocorre na Camada de Sessão (Camada 5) e na Camada de Transporte (Camada 4), onde os protocolos SSL/TLS operam para assegurar que os dados trocados entre o cliente e o servidor não possam ser lidos ou alterados por terceiros.

O HTTPS é essencial para proteger informações sensíveis, como senhas, dados bancários e transações financeiras, e tornou-se o padrão para qualquer site que deseje garantir a segurança de seus usuários. Ele utiliza a porta 443 por padrão e é fortemente recomendado para qualquer aplicação que lide com dados privados. Além de criptografar os dados, o HTTPS também garante a autenticidade do servidor, o que aumenta a confiança dos usuários ao interagir com a web.

A porta padrão do protocolo HTTPS é a porta 443.

### Referências

- [MDN Glossary about HTTPS](https://developer.mozilla.org/en-US/docs/Glossary/HTTPS);
- [Amazon AWS about the difference between HTTP and HTTPS](https://aws.amazon.com/pt/compare/the-difference-between-https-and-http/);
- [Wikipedia about HTTPS](https://pt.wikipedia.org/wiki/Hyper_Text_Transfer_Protocol_Secure);
- [CloudFlare about HTTPS](https://www.cloudflare.com/pt-br/learning/ssl/what-is-https/);

---
## Infrastructure as a Service (IaaS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Infrastructure as a Service (IaaS)* fornece infraestrutura de TI (servidores, armazenamento e redes) por meio da nuvem, permitindo que empresas usem recursos virtualizados em vez de comprar e manter hardware físico. Com IaaS, organizações podem escalar seus recursos conforme a demanda, gerenciar sistemas operacionais, aplicativos e dados, enquanto o provedor cuida da infraestrutura subjacente. Exemplos de IaaS incluem Amazon Web Services (AWS), Microsoft Azure e Google Cloud Platform (GCP).

### Referências

- [Google Cloud about IaaS](https://cloud.google.com/learn/what-is-iaas?hl=pt_br);
- [Microsoft Azure about IaaS](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-iaas);
- [Microsoft Azure about IaaS (pt-br)](https://azure.microsoft.com/pt-br/resources/cloud-computing-dictionary/what-is-iaas);
- [Amazon AWS about IaaS](https://aws.amazon.com/what-is/iaas/);
- [IBM about IaaS](https://www.ibm.com/topics/iaas);
- [Google Cloud difference between PaaS, IaaS, SaaS, CaaS](https://cloud.google.com/learn/paas-vs-iaas-vs-saas?hl=pt_br);
- [Fortinet about IaaS](https://www.fortinet.com/br/resources/cyberglossary/infrastructure-as-a-service);
- [Cloudflare about IaaS](https://www.cloudflare.com/pt-br/learning/cloud/what-is-iaas/);
- [Wikipedia about IaaS](https://pt.wikipedia.org/wiki/Infraestrutura_como_servi%C3%A7o);

---
## Internet Control Message Protocol (ICMP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Internet Control Message Protocol (ICMP)*, por sua vez, é um protocolo de comunicação usado para enviar mensagens de controle e erro entre dispositivos de rede. Ele opera na Camada de Rede (Camada 3) do modelo OSI, a camada responsável pelo roteamento de pacotes de dados entre redes. O ICMP é fundamental para o diagnóstico e resolução de problemas de rede, sendo amplamente utilizado em ferramentas como o ping e traceroute, que ajudam a verificar a conectividade e rastrear o caminho dos pacotes na rede.

O ICMP não é utilizado para a transferência de dados de usuário, mas sim para a comunicação de controle entre dispositivos. Ele permite que roteadores e hosts informem sobre erros de entrega, como pacotes não encontrados ou falhas de rede, e forneçam informações sobre a rede, como latência e a rota que os pacotes estão seguindo. Um exemplo típico de mensagem ICMP é o "Destination Unreachable" (destino inalcançável), enviado quando um pacote não pode chegar ao destino. Embora o ICMP seja essencial para o diagnóstico da rede, ele também pode ser usado em ataques como o DoS (Denial of Service), se não for gerenciado corretamente.

### Referências

- [Amazon AWS about ICMP](https://aws.amazon.com/pt/what-is/icmp/);
- [CloudFlare about ICMP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/internet-control-message-protocol-icmp/);
- [Fortinet about ICMP](https://www.fortinet.com/br/resources/cyberglossary/internet-control-message-protocol-icmp);
- [Wikipedia about ICMP](https://pt.wikipedia.org/wiki/Internet_Control_Message_Protocol);

---
## Internet Information Services (IIS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Internet Information Services (IIS)* é um servidor web desenvolvido pela Microsoft para hospedar sites e aplicações na web, especialmente em ambientes Windows. Ele oferece suporte a diversos protocolos, como HTTP, HTTPS, FTP, e SMTP, e é amplamente utilizado para hospedar aplicações ASP.NET e páginas estáticas.

Como servidor web, o IIS opera na Camada 7 (Aplicação) do modelo OSI, lidando com o gerenciamento e entrega de conteúdo web aos clientes.

### Referências

- [Solarwinds about IIS](https://www.solarwinds.com/resources/it-glossary/iis-server);
- [Microsoft about IIS](https://learn.microsoft.com/en-us/iis/get-started/introduction-to-iis/iis-web-server-overview);
- [Wikipedia about IIS](https://en.wikipedia.org/wiki/Internet_Information_Services);
- [IIS official website](https://www.iis.net/);

---
## Internet Message Access Protocol (IMAP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O (Internet Message Access Protocol (IMAP)) é um protocolo de e-mail que permite o acesso e gerenciamento de mensagens de e-mail armazenadas em um servidor. Diferente do POP, o IMAP permite que os e-mails sejam acessados de vários dispositivos, mantendo uma cópia centralizada no servidor.

IMAP opera na Camada 7 (Aplicação) do modelo OSI e utiliza a porta padrão 143 (ou 993 para IMAP sobre SSL/TLS).

### Referências

- [Hostinger about IMAP](https://www.hostinger.com/tutorials/pop3-vs-imap);
- [Microsoft about IMAP](https://support.microsoft.com/en-us/office/what-are-imap-and-pop-ca2c5799-49f9-4079-aefe-ddca85d5b1c9);
- [Wikipedia about IMAP](https://en.wikipedia.org/wiki/Internet_Message_Access_Protocol);
- [Cloudflare about IMAP](https://www.cloudflare.com/pt-br/learning/email-security/what-is-imap/);
- [MailChimp about IMAP](https://mailchimp.com/resources/imap-vs-pop3/);

---
## Internet Protocol (IP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Internet Protocol (IP)* é um protocolo fundamental para a comunicação entre dispositivos em redes, sendo responsável pelo endereçamento e roteamento de pacotes de dados entre sistemas. Ele opera na Camada de Rede (Camada 3) do modelo OSI, que é responsável pela determinação do melhor caminho para os pacotes de dados de um dispositivo a outro em uma rede ou entre redes distintas, como a internet. O IP permite que dispositivos se identifiquem de forma única em uma rede, através de um endereço IP, que pode ser tanto IPv4 quanto IPv6.

O IPv4 utiliza um sistema de endereçamento de 32 bits, o que resulta em cerca de 4 bilhões de endereços únicos, enquanto o IPv6, com seu endereçamento de 128 bits, oferece um número praticamente ilimitado de endereços. O protocolo IP é crucial para a transmissão de dados em redes locais e globais, realizando o encaminhamento dos pacotes, garantindo que cada pacote seja enviado de forma eficiente e chegue ao destino correto. Embora o IP não seja responsável por garantir a entrega dos pacotes, ele trabalha em conjunto com protocolos de transporte, como TCP e UDP, que asseguram a confiabilidade e o controle dos dados durante a transmissão.

### Referências

- [Wikipedia about IP](https://pt.wikipedia.org/wiki/Endere%C3%A7o_IP);
- [CloudFlare about IP](https://www.cloudflare.com/pt-br/learning/network-layer/internet-protocol/);

---
## Interoperabilidade

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

Interoperabilidade é a capacidade de sistemas e tecnologias diferentes se comunicarem e trocarem informações de maneira eficaz. Em tecnologia da informação, especialmente no setor de saúde, a interoperabilidade permite que softwares, como sistemas de informações hospitalares, laboratoriais e de prontuário eletrônico, compartilhem dados de forma padronizada e compreensível entre diferentes plataformas. Isso garante que as informações estejam disponíveis em tempo real para médicos, enfermeiros e outros profissionais da área.

A interoperabilidade é vital para integrar dados de várias fontes e possibilitar uma visão unificada do histórico do paciente, aumentando a qualidade do atendimento. Padrões como HL7 e FHIR são usados para garantir interoperabilidade na saúde, enquanto protocolos como REST e SOAP são comuns para integrar aplicações de diferentes setores.

### Referências

- [Wikipedia about Interoperability](https://pt.wikipedia.org/wiki/Interoperabilidade);
- [Amazon AWS about Interoperability](https://aws.amazon.com/pt/what-is/interoperability/);
- [Sankhya about Interoperability](https://www.sankhya.com.br/blog/interoperabilidade/);
- [TOTVS about Interoperability](https://www.totvs.com/blog/instituicoes-de-saude/interoperabilidade-na-saude/);
- [GOV.BR about Interoperability](https://www.gov.br/governodigital/pt-br/infraestrutura-nacional-de-dados/interoperabilidade/copy_of_interoperabilidade);

---
## Jumbo Frames

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

Um jumbo frame é um pacote de dados maior que o tamanho padrão do MTU, que é de 1500 bytes em redes Ethernet convencionais. Jumbo frames geralmente têm MTUs de 9000 bytes ou mais. Eles são usados em ambientes de rede de alta performance, como data centers ou redes de armazenamento, onde há necessidade de movimentação de grandes volumes de dados com menos sobrecarga.

Os benefícios de jumbo frames incluem:
- Redução da sobrecarga: Como há menos cabeçalhos a cada pacote, há menor uso da CPU e mais eficiência de rede;
- Desempenho melhorado: Com pacotes maiores, há menos fragmentação e mais dados transmitidos por pacote, o que melhora a taxa de transferência em redes que suportam jumbo frames;

Entretanto, todos os dispositivos na rota de uma transmissão de dados precisam suportar o mesmo MTU para que os jumbo frames sejam transmitidos corretamente.

### Referências

- [Wikipedia about Jumbo Frames](https://en.wikipedia.org/wiki/Jumbo_frame);
- [CBT Nuggets about Jumbo Frames](https://www.cbtnuggets.com/blog/technology/networking/what-is-a-jumbo-frame);
- [FS about Jumbo Frame](https://community.fs.com/article/what-is-jumbo-frame.html);

---
## Kernel-based Virtual Machine (KVM)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Kernel-based Virtual Machine (KVM)* é uma tecnologia de virtualização para sistemas Linux que permite que o hardware físico de um computador seja particionado em múltiplas máquinas virtuais. Com o KVM, é possível executar várias instâncias de sistemas operacionais, cada uma com seus próprios recursos e configurações, utilizando um único servidor físico.

Com a adoção crescente de contêineres e ambientes virtualizados, o KVM é uma ferramenta importante para provedores de serviços de cloud computing e empresas que buscam otimizar a utilização de seus recursos de hardware.

### Referências

- [RedHat about KVM](https://www.redhat.com/pt-br/topics/virtualization/what-is-KVM);
- [KVM official website](https://linux-kvm.org/page/Main_Page);
- [Hostinger about KVM](https://support.hostinger.com/pt/articles/6988144-o-que-e-virtualizacao-kvm);
- [Amazon AWS about KVM](https://aws.amazon.com/pt/what-is/kvm/);
- [Wikipedia about KVM](https://pt.wikipedia.org/wiki/Kernel-based_Virtual_Machine);

---
## Laboratory Information System (LIS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Laboratory Information System (LIS)* é um sistema utilizado em laboratórios para gerenciar dados e processos laboratoriais, como amostras, exames e resultados de análises clínicas. Esse sistema melhora a organização e a precisão dos processos de um laboratório, desde o cadastro de amostras até o resultado dos exames. Ele também permite a rastreabilidade das amostras e facilita o controle de qualidade dos testes realizados.

Além disso, o LIS permite a integração com outros sistemas de saúde, como HIS e PEP, para que os resultados de laboratório estejam disponíveis para médicos e pacientes em tempo real. A interoperabilidade do LIS com outros sistemas é essencial para o funcionamento eficiente de instituições de saúde.

### Referências

- [Wikipedia about LIS](https://en.wikipedia.org/wiki/Laboratory_information_management_system);
- [Orchard about LIS](https://www.orchardsoft.com/resources/learn-about-lis/);

---
## Lei Geral de Proteção de Dados (LGPD)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

A Lei Geral de Proteção de Dados (LGPD) é a lei brasileira que regula a coleta, armazenamento, tratamento e compartilhamento de dados pessoais de cidadãos no Brasil. Inspirada na GDPR (General Data Protection Regulation) da União Europeia, a LGPD tem como objetivo proteger a privacidade e a segurança dos dados pessoais, estabelecendo regras claras sobre o consentimento e o tratamento dessas informações.

Em ambientes corporativos e de saúde, a LGPD impõe requisitos rigorosos para o manuseio de dados de pacientes, como o consentimento explícito, minimização de coleta de dados e mecanismos de segurança. Organizações que não cumprem a LGPD estão sujeitas a sanções que incluem multas e outras penalidades.

### Referências

- [Official LGPD article](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm);
- [GOV.BR about LGPD](https://www.gov.br/esporte/pt-br/acesso-a-informacao/lgpd);
- [SEBRAE about LGPD](https://sebrae.com.br/sites/PortalSebrae/LGPD);
- [Wikipedia about LGPD](https://pt.wikipedia.org/wiki/Lei_Geral_de_Prote%C3%A7%C3%A3o_de_Dados_Pessoais#:~:text=A%20Lei%20Geral%20de%20Prote%C3%A7%C3%A3o,do%20Marco%20Civil%20da%20Internet.);

---
## Lightweight Directory Access Protocol (LDAP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Lightweight Directory Access Protocol (LDAP)* é um protocolo de diretórios que permite acessar e gerenciar serviços de diretórios em uma rede. Ele é amplamente usado em ambientes corporativos para autenticação e autorização, fornecendo uma estrutura para armazenar informações sobre usuários, grupos e dispositivos.

LDAP opera na Camada 7 (Aplicação) do modelo OSI e utiliza a porta padrão 389 (ou 636 para LDAP sobre SSL/TLS).

### Referências

- [Okta about LDAP](https://www.okta.com/identity-101/what-is-ldap/);
- [Wikipedia about LDAP](https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol);
- [RedHat about LDAP](https://www.redhat.com/en/topics/security/what-is-ldap-authentication);
- [IBM about LDAP](https://www.ibm.com/docs/en/zos/3.1.0?topic=server-what-is-ldap);
- [Microsoft about LDAP](https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ldap/lightweight-directory-access-protocol-ldap-api);
- [Fortinet about LDAP](https://www.fortinet.com/resources/cyberglossary/ldap-authentication);

---
## Local Area Network (LAN)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Local Area Network (LAN)* é uma rede que conecta dispositivos dentro de uma área geográfica limitada, como um escritório, escola ou casa. Ela permite a comunicação rápida e a troca de dados entre dispositivos, sendo normalmente restrita a um único local físico.

A LAN opera principalmente nas Camadas 1 (Física) e 2 (Enlace) do modelo OSI, fornecendo conectividade de rede e determinando o meio físico e os métodos de acesso ao canal de comunicação.

### Referências

- [CISCO about LAN](https://www.cisco.com/c/en/us/products/switches/what-is-a-lan-local-area-network.html);
- [Wikipedia about LAN](https://en.wikipedia.org/wiki/Local_area_network);
- [Cloudflare about LAN](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-a-lan/);
- [CompTIA about LAN](https://www.comptia.org/content/guides/what-is-a-local-area-network);
- [GeeksForGeeks about LAN](https://www.geeksforgeeks.org/lan-full-form/);

---
## Logical Volume Manager (LVM)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Logical Volume Manager (LVM*) é uma tecnologia de gerenciamento de armazenamento que permite a criação de volumes lógicos em vez de partições fixas, proporcionando flexibilidade para expandir ou reduzir volumes conforme necessário. O LVM facilita o gerenciamento de armazenamento em sistemas Linux, permitindo que volumes sejam redimensionados sem interromper o sistema.

### Referências

- [Wikipedia about LVM](https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux));
- [Ubuntu about LVM](https://ubuntu.com/server/docs/about-logical-volume-management-lvm);
- [RedHat about LVM](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/5/html/deployment_guide/ch-lvm);
- [Wikipedia about LVM (2)](https://en.wikipedia.org/wiki/Logical_volume_management);
- [RedHat about the difference between LVM and Standard Partitioning](https://www.redhat.com/en/blog/lvm-vs-partitioning);

---
## Master Data Management (MDM)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Master Data Management (MDM)* é a prática de consolidar, organizar e manter dados principais, como informações de clientes, fornecedores e produtos, para garantir que a empresa possua uma visão única e precisa desses dados. Através de práticas e ferramentas de MDM, as organizações podem criar uma "única versão da verdade", o que melhora a tomada de decisões e a eficiência operacional.

Um sistema de MDM centraliza o gerenciamento de dados principais, permitindo que sejam acessados e atualizados de maneira consistente em todos os departamentos. Ferramentas como Informatica MDM e IBM InfoSphere ajudam a implementar essas práticas, melhorando a qualidade e a confiabilidade dos dados essenciais para os negócios.

### Referências

- [IBM about MDM](https://www.ibm.com/think/topics/master-data-management);
- [Oracle about MDM](https://www.oracle.com/br/scm/product-lifecycle-management/master-data-management/);
- [Wikipedia about MDM](https://pt.wikipedia.org/wiki/Master_Data_Management);

---
## Maximum Transmission Unit (MTU)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Maximum Transmission Unit (MTU)* define o tamanho máximo de um pacote que pode ser transmitido em uma rede. Ajustar a MTU de forma adequada pode melhorar o desempenho da rede, reduzindo a fragmentação de pacotes.

A MTU está relacionada à Camada 2 (Enlace) do modelo OSI, onde o controle de tamanho de quadro é gerenciado para otimizar o envio de dados. Ele tem relação com vários protocolos, especialmente aqueles que transportam grandes volumes de dados. Protocolos como o *TCP (Transmission Control Protocol)* e o *UDP (User Datagram Protocol)*, ambos da Camada 4 (Transporte), utilizam o MTU para determinar o tamanho máximo de cada pacote antes de transmiti-lo. O *IP (Internet Protocol)*, da Camada 3 (Rede), também é influenciado pelo MTU, pois os pacotes IP precisam ser fragmentados em tamanhos que respeitem o MTU da rede para evitar perda de dados.

### Referências

- [Cloudflare about MTU](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-mtu/);
- [Wikipedia about MTU](https://en.wikipedia.org/wiki/Maximum_transmission_unit);
- [Okta about MTU](https://www.okta.com/identity-101/mtu/);
- [GeeksForGeeks about MTU](https://www.geeksforgeeks.org/what-is-mtumaximum-transmission-unit/);
- [Huawei about MTU](https://info.support.huawei.com/info-finder/encyclopedia/en/MTU.html);

---
## Mergers and Acquisitions (M&A)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

*Mergers and Acquisitions (M&A)* refere-se a fusões e aquisições, processos em que empresas se unem ou uma adquire a outra. Esses processos são comuns em mercados corporativos e têm o objetivo de aumentar a participação de mercado, expandir a linha de produtos ou acessar novas tecnologias.

As fusões geralmente envolvem empresas que se combinam em uma nova organização, enquanto as aquisições ocorrem quando uma empresa compra outra. Ambos os processos podem envolver complexos aspectos financeiros e regulatórios.

### Referências

- [Wikipedia about M&A (pt-br)](https://pt.wikipedia.org/wiki/Fus%C3%B5es_e_aquisi%C3%A7%C3%B5es);
- [FIA about M&A](https://fia.com.br/blog/ma-o-que-e-tipos-exemplos-e-etapas-do-processo/);
- [Wikipedia about M&A](https://en.wikipedia.org/wiki/Mergers_and_acquisitions);

---
## Message Queuing Telemetry Transport (MQTT)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Message Queuing Telemetry Transport (MQTT)* é um protocolo de comunicação leve e eficiente para transferência de dados em redes com baixa largura de banda ou conectividade instável. Muito utilizado em IoT (Internet of Things), ele permite que dispositivos se comuniquem por meio de um modelo de publicação e assinatura, onde dados são publicados em tópicos e assinantes podem receber as atualizações desses tópicos.

Operando na camada de aplicação do modelo OSI (Camada 7) e geralmente utiliza a porta padrão 1883 (ou 8883 para MQTT sobre SSL/TLS). O MQTT é utilizado em cenários onde a largura de banda é limitada e o consumo de energia precisa ser mínimo, como em dispositivos IoT que monitoram condições ambientais ou enviam informações para sistemas centrais.

### Referências

- [Wikipedia about MQTT](https://en.wikipedia.org/wiki/MQTT);
- [MQTT official website](https://mqtt.org/);
- [GeeksForGooks about MQTT](https://www.geeksforgeeks.org/introduction-of-message-queue-telemetry-transport-protocol-mqtt/);
- [Amazon AWS about MQTT](https://aws.amazon.com/what-is/mqtt/);

---
## Minimum Viable Product (MVP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Minimum Viable Product (MVP)* é uma versão inicial de um produto ou serviço que contém apenas os recursos essenciais para atender às necessidades de seus primeiros usuários. A ideia por trás do MVP é testar a viabilidade do produto com um número reduzido de funcionalidades antes de realizar investimentos maiores em desenvolvimento.

Ao lançar um MVP, as empresas podem validar hipóteses, ajustar funcionalidades e obter feedback de clientes reais, evitando gastar recursos excessivos em algo que pode não ter demanda.

### Referências

- [Wikipedia about MVP (pt-br)](https://pt.wikipedia.org/wiki/Produto_vi%C3%A1vel_m%C3%ADnimo);
- [InfoMoney about MVP](https://www.infomoney.com.br/guias/o-que-e-como-fazer-mvp-produto-viavel-minimo/);
- [Zendesk about MVP](https://www.zendesk.com.br/blog/o-que-e-mvp/#);
- [Wikipedia about MVP](https://en.wikipedia.org/wiki/Minimum_viable_product);
- [Atlassian about MVP](https://www.atlassian.com/agile/product-management/minimum-viable-product);
- [Gartner Glossary about MVP](https://www.gartner.com/en/marketing/glossary/minimum-viable-product-mvp-);
- [Mailchimp about MVP](https://mailchimp.com/pt-br/resources/minimum-viable-product/);

---
## Mirth Connect

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

*Mirth Connect* é uma ferramenta de integração de dados de saúde, especialmente utilizada para troca de mensagens no padrão HL7 (*Health Level 7*). Criada com foco em interoperabilidade, ela permite que diferentes sistemas de saúde troquem dados de maneira padronizada e segura. O Mirth pode atuar como uma ponte entre diferentes sistemas de informações de saúde (HIS) e prontuários eletrônicos de pacientes (EMR/EHR), simplificando a integração de sistemas heterogêneos.

Através de sua interface gráfica, o Mirth facilita o mapeamento de dados e a criação de rotinas de transformação e roteamento, possibilitando a personalização de fluxos de dados. Além de HL7, ele suporta outros formatos de dados como XML, JSON, e formatos específicos de bancos de dados, o que o torna uma ferramenta flexível em ambientes de saúde.

### Referências

- [Wikipedia about Mirth](https://en.wikipedia.org/wiki/Mirth_Connect);
- [Mirth e-book](https://www.nextgen.com/-/media/DAM/Collateral/E-Books/CH_FundamentalBuildingBlocksofInterop_Ebook.pdf);

---
## Multi-Factor Authentication (MFA)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Multi-Factor Authentication (MFA)* é uma técnica de autenticação que utiliza múltiplos fatores para verificar a identidade de um usuário. Além da senha, MFA pode exigir um segundo fator, como um código enviado ao telefone, uma impressão digital, ou outra forma de autenticação, aumentando a segurança do acesso.

### Referências

- [Wikipedia about MFA](https://en.wikipedia.org/wiki/Multi-factor_authentication);
- [Amazon AWS about MFA](https://aws.amazon.com/what-is/mfa/);
- [Microsoft about MFA](https://support.microsoft.com/en-us/topic/what-is-multifactor-authentication-e5e39437-121c-be60-d123-eda06bddf661);
- [IBM about MFA](https://www.ibm.com/topics/multi-factor-authentication);
- [CISCO about MFA](https://www.cisco.com/c/en/us/products/security/what-is-multi-factor-authentication.html);

---
## Multiprotocol Label Switching (MPLS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Multiprotocol Label Switching (MPLS)* é um método para acelerar e controlar o fluxo de tráfego em redes, especialmente em redes de longa distância (WANs). Ele utiliza rótulos para direcionar o tráfego, permitindo roteamento mais rápido e eficiente sem depender exclusivamente dos endereços IP.

O MPLS opera entre a Camada 2 (Enlace) e Camada 3 (Rede) do modelo OSI, sendo considerado uma tecnologia de camada intermediária que combina elementos de ambas as camadas para otimização de tráfego.

### Referências

- [Wikipedia about MPLS](https://en.wikipedia.org/wiki/Multiprotocol_Label_Switching);
- [Cloudflare about MPLS](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-mpls/);
- [CISCO about MPLS](https://www.cisco.com/c/en/us/products/ios-nx-os-software/multiprotocol-label-switching-mpls/index.html);

---
## My Traceroute (MTR)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*My Traceroute (MTR)* é uma ferramenta de diagnóstico de rede que combina as funcionalidades dos comandos traceroute e ping, permitindo monitorar a rota e o tempo de resposta de pacotes para um destino específico. É útil para identificar gargalos ou problemas de conexão.

O MTR não se enquadra diretamente no modelo OSI, mas sua função está associada à Camada 3 (Rede), onde o roteamento de pacotes é monitorado.

### Referências

- [Cloudflare about MTR](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-mtr/);
- [Wikipedia about MTR](https://en.wikipedia.org/wiki/MTR_(software));
- [Oracle man of MTR](https://docs.oracle.com/cd/E88353_01/html/E72487/mtr-8.html);
- [RedHat how to use MTR](https://www.redhat.com/en/blog/linux-mtr-command);
- [Die man of MTR](https://linux.die.net/man/8/mtr);

---
## Network File System (NFS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Network File System (NFS)* é um protocolo de rede desenvolvido para permitir que sistemas Unix e Linux compartilhem diretórios e arquivos de forma transparente entre computadores. Com o NFS, um sistema pode montar diretórios de outro sistema remoto, permitindo o acesso aos arquivos como se estivessem localmente disponíveis.

O NFS é amplamente utilizado em ambientes de rede Linux, permitindo o compartilhamento eficiente de arquivos em grandes ambientes corporativos e datacenters. A porta padrão varia conforme a versão, mas a porta padrão mais comum é a 2049 (para versões recentes do NFS).

### Referências

- [RedHat about NFS](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/storage_administration_guide/ch-nfs);
- [NordVPN about NFS](https://nordvpn.com/pt-br/blog/network-file-system/);
- [Wikipedia about NFS (pt-br)](https://pt.wikipedia.org/wiki/Network_File_System);
- [Wikipedia about NFS](https://en.wikipedia.org/wiki/Network_File_System);

---
## Network Mapper (Nmap)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Network Mapper (Nmap)* é uma ferramenta de código aberto para varredura de redes que permite mapear dispositivos conectados, descobrir serviços e verificar a segurança dos sistemas. Com o Nmap, é possível identificar portas abertas e detectar vulnerabilidades de rede.

O Nmap opera principalmente na Camada 3 (Rede) e Camada 4 (Transporte) do modelo OSI, pois ele verifica portas TCP/UDP para encontrar serviços em execução.

### Referências

- [NMAP official website](https://nmap.org/);
- [Wikipedia about NMAP](https://en.wikipedia.org/wiki/Nmap);
- [Die NMAP man](https://linux.die.net/man/1/nmap);
- [NMAP official man](https://nmap.org/man/pt_PT/index.html);

---
## Non-Disclosure Agreement (NDA)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

Um *Non-Disclosure Agreement (NDA)* é um acordo legal entre duas ou mais partes para manter informações confidenciais e proteger dados sensíveis. Ele é comumente utilizado em situações de negócios, como negociações, parcerias e contratos de trabalho, onde uma parte compartilha informações sigilosas com a outra, mas deseja garantir que esses dados não sejam divulgados a terceiros.

Os NDAs ajudam a proteger o know-how, segredos comerciais e outros dados críticos que podem ser prejudiciais se revelados sem autorização.

### Referências

- [TOTVS about NDA](https://www.totvs.com/blog/gestao-para-assinatura-de-documentos/o-que-e-nda/);
- [Jusbrasil about NDA](https://www.jusbrasil.com.br/artigos/o-que-e-um-nda-quando-e-como-usar/729672857);
- [Wikipedia about NDA](https://pt.wikipedia.org/wiki/Acordo_de_n%C3%A3o-divulga%C3%A7%C3%A3o);

---
## Not Only SQL (NOSQL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Not Only SQL (NOSQL)* refere-se a uma categoria de bancos de dados projetados para lidar com grandes volumes de dados não estruturados ou semi-estruturados e escaláveis horizontalmente. Diferentemente do SQL, os bancos de dados NoSQL não utilizam um esquema de tabelas fixo; eles são flexíveis e permitem que os dados sejam armazenados em estruturas como documentos (MongoDB), grafos (Neo4j), colunas (Cassandra), ou pares chave-valor (Redis). Isso permite que eles lidem com grandes volumes de dados de maneira rápida e eficiente, sem as limitações de uma estrutura rígida.

NoSQL é comumente utilizado em aplicações modernas e sistemas distribuídos, onde a velocidade e a escalabilidade são essenciais. Ele oferece modelos de consistência eventualmente diferentes do ACID, como o modelo BASE (Basically Available, Soft State, Eventually Consistent), que prioriza a disponibilidade e a performance em detrimento da consistência em tempo real.

### Referências

- [MongoDB about NoSQL](https://www.mongodb.com/resources/basics/databases/nosql-explained);
- [Wikipedia about NoSQL](https://en.wikipedia.org/wiki/NoSQL);
- [IBM about NoSQL](https://www.ibm.com/topics/nosql-databases);
- [Google Cloud about NoSQL](https://cloud.google.com/discover/what-is-nosql?hl=pt_br);
- [Amazon AWS about NoSQL](https://aws.amazon.com/pt/nosql/);
- [GeeksForGeeks about NoSQL](https://www.geeksforgeeks.org/introduction-to-nosql/);
- [Oracle about NoSQL](https://www.oracle.com/database/nosql/what-is-nosql/);
- [Microsoft Azure about NoSQL](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-nosql-database);

---
## Object-Relational Mapping (ORM)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Object-Relational Mapping (ORM)* é uma técnica que permite a interação entre sistemas orientados a objetos e bancos de dados relacionais. Em vez de escrever consultas SQL manualmente, o ORM permite que os desenvolvedores interajam com o banco de dados por meio de objetos e classes no código, tornando a manipulação de dados mais intuitiva e eficiente.

Ferramentas ORM populares incluem Hibernate (para Java), Entity Framework (para .NET) e SQLAlchemy (para Python).

### Referências

- [Baeldung about ORM](https://www.baeldung.com/cs/object-relational-mapping);
- [Wikipedia about ORM](https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping);
- [GeekForGeeks about ORM](https://www.geeksforgeeks.org/what-is-object-relational-mapping-orm-in-dbms/);

---
## Open Systems Interconnection (OSI Model)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

Modelo OSI (*Open Systems Interconnection*) é um modelo de referência para redes de computadores que define um conjunto de regras e protocolos para permitir a comunicação entre sistemas diferentes. Desenvolvido pela ISO (International Organization for Standardization), o modelo OSI divide o processo de comunicação em sete camadas, cada uma com funções específicas. A ideia do modelo é tornar mais fácil o entendimento de como os dados são transmitidos e como os protocolos interagem entre si.

#### Camada 1 - Física (*Physical Layer*)

A camada física é responsável pela transmissão dos bits brutos de dados através de um meio físico, como cabos ou ondas de rádio. Ela trata da conversão dos dados em sinais elétricos, ópticos ou de rádio e define os aspectos físicos do hardware de rede, como conectores, voltagem e a taxa de transmissão. Exemplos de tecnologias dessa camada incluem Ethernet, USB, e Wi-Fi.

#### Camada 2 - Enlace de Dados (*Data Link Layer*)

A camada de enlace de dados é responsável pela transferência de dados entre dois dispositivos diretamente conectados e garante a integridade dos dados ao verificar e corrigir erros. Ela lida com o controle de fluxo e a formação de quadros (frames) para enviar pacotes de dados. Exemplos de protocolos dessa camada incluem Ethernet, PPP (Point-to-Point Protocol) e HDLC (High-Level Data Link Control).

#### Camada 3 - Rede (*Network Layer*)

A camada de rede gerencia o endereçamento e o roteamento dos dados através de redes diferentes. Ela decide qual caminho os dados devem seguir até o destino, considerando fatores como congestionamento e distância. O principal protocolo dessa camada é o IP (Internet Protocol), mas outros protocolos incluem ICMP (Internet Control Message Protocol) e ARP (Address Resolution Protocol).

#### Camada 4 - Transporte (*Transport Layer*)

A camada de transporte garante que os dados sejam entregues de forma confiável entre os dispositivos de origem e destino. Ela segmenta os dados, controla o fluxo e assegura que os pacotes sejam entregues sem erros e na ordem correta. Protocolos dessa camada incluem o TCP (Transmission Control Protocol), que oferece uma comunicação confiável, e o UDP (User Datagram Protocol), que é mais rápido, mas sem garantias de entrega.

#### Camada 5 - Sessão (*Session Layer*)

A camada de sessão gerencia a abertura, controle e fechamento das sessões de comunicação entre aplicativos. Ela permite que os dados sejam sincronizados entre dispositivos e controla o fluxo de dados durante a comunicação, garantindo que a troca de dados ocorra sem interferências. Exemplos de protocolos dessa camada incluem NetBIOS e RPC (Remote Procedure Call).

#### Camada 6 - Apresentação (*Presentation Layer*)

A camada de apresentação é responsável pela formatação e tradução dos dados que serão enviados entre os sistemas. Ela garante que os dados sejam apresentados de forma compreensível para o aplicativo, realizando funções como criptografia, compressão e conversão de formato de dados. Exemplos de protocolos dessa camada incluem SSL/TLS (para criptografia) e JPEG, MPEG (para formatação de mídia).

#### Camada 7 - Aplicação (*Application Layer*)

A camada de aplicação é onde os usuários interagem diretamente com a rede. Ela define os protocolos que os aplicativos utilizam para se comunicar pela rede, como navegadores, e-mails e outros serviços. Exemplos de protocolos dessa camada incluem HTTP (para navegação na web), FTP (para transferência de arquivos), SMTP (para envio de e-mails), e DNS (para resolução de nomes de domínio).

### Referências

- [Wikipedia about OSI Model](https://pt.wikipedia.org/wiki/Modelo_OSI);
- [Alura about OSI Model](https://www.alura.com.br/artigos/conhecendo-o-modelo-osi?srsltid=AfmBOoqJISb98rbDxr1dq9q1P989R40QlGegUB05RdtDsgXakhIYZvk8);
- [CloudFlare about OSI Model](https://www.cloudflare.com/pt-br/learning/ddos/glossary/open-systems-interconnection-model-osi/);
- [Amazon AWS about OSI Model](https://aws.amazon.com/pt/what-is/osi-model/);
- [CISCO about OSI Model](https://community.cisco.com/t5/artigos-gerais/modelo-osi-e-suas-camadas/ta-p/5052369);

---
## Platform as a Service (PaaS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Platform as a Service (PaaS)* oferece uma plataforma completa para desenvolvimento, execução e gerenciamento de aplicações na nuvem. Esse modelo permite que desenvolvedores se concentrem no desenvolvimento de código, sem se preocupar com a infraestrutura subjacente, já que o provedor cuida da segurança, armazenamento e rede. PaaS é popular para desenvolver e implantar aplicativos de forma rápida e escalável. Exemplos de PaaS incluem Heroku, Google App Engine e Red Hat OpenShift.

### Referências

- [Microsoft Azure about PaaS (pt-br)](https://azure.microsoft.com/pt-br/resources/cloud-computing-dictionary/what-is-paas);
- [Google Cloud about PaaS](https://cloud.google.com/learn/what-is-paas?hl=pt-BR);
- [Microsoft Azure about PaaS](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-paas);
- [Wikipedia about PaaS](https://en.wikipedia.org/wiki/Platform_as_a_service);
- [RedHat about PaaS](https://www.redhat.com/pt-br/topics/cloud-computing/what-is-paas);
- [IBM about PaaS](https://www.ibm.com/topics/paas);
- [Zendesk about PaaS](https://www.zendesk.com.br/blog/what-is-paas/);
- [Fortinet about PaaS](https://www.fortinet.com/br/resources/cyberglossary/platform-as-a-service);
- [HP about PaaS](https://www.hpe.com/us/en/what-is/paas.html);

---
## Post Office Protocol (POP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Post Office Protocol (POP)* é um protocolo de e-mail usado para baixar mensagens de um servidor para o cliente de e-mail. Uma vez baixadas, as mensagens são removidas do servidor, ao contrário do IMAP, que mantém cópias centralizadas.

O POP opera na Camada 7 (Aplicação) do modelo OSI e utiliza a porta padrão 110 (ou 995 para POP sobre SSL/TLS).

### Referências

- [Wikipedia about POP](https://en.wikipedia.org/wiki/Post_Office_Protocol);
- [Wikipedia about POP (pt-br)](https://pt.wikipedia.org/wiki/Post_Office_Protocol);
- [Javatpoint about POP](https://www.javatpoint.com/pop-protocol);
- [GeeksForGeeks about POP](https://www.geeksforgeeks.org/what-is-pop3-post-office-protocol-version-3/);

---
## Prontuário Eletrônico do Paciente (PEP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O Prontuário Eletrônico do Paciente (PEP) é uma versão digital do prontuário médico tradicional, onde são registradas todas as informações de saúde do paciente, incluindo histórico médico, exames, diagnósticos e tratamentos. O uso do PEP facilita o acesso e compartilhamento das informações médicas entre profissionais de saúde, melhorando a qualidade do atendimento e a continuidade dos cuidados.

O PEP é uma das principais ferramentas para garantir a interoperabilidade entre sistemas de saúde, pois permite que informações sobre o paciente estejam disponíveis em qualquer ponto de atendimento. Ele também pode ser integrado com sistemas como HIS, RIS e LIS, fornecendo um registro abrangente de cada paciente.

### Referências

- [Wikipedia about PEP](https://pt.wikipedia.org/wiki/Prontu%C3%A1rio_Eletr%C3%B4nico);
- [Hilab about PEP](https://hilab.com.br/blog/prontuario-eletronico-do-paciente/);
- [Pixeon about PEP](https://www.pixeon.com/blog/prontuario-eletronico-do-paciente/);
- [GOV.BR about PEP](https://www.gov.br/saude/pt-br/composicao/saps/informatiza-aps/prontuario-eletronico);

---
## RabbitMQ

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

RabbitMQ é um sistema de mensageria que permite a comunicação assíncrona entre diferentes componentes de software através de mensagens. Ele utiliza o padrão de fila de mensagens (*message queue*) e pode atuar como um "broker", intermediando a troca de mensagens entre sistemas, facilitando o desacoplamento das aplicações. RabbitMQ é amplamente utilizado em sistemas que precisam lidar com processamento em tempo real e alta escalabilidade.

RabbitMQ implementa o protocolo *Advanced Message Queuing Protocol (AMQP)* e oferece recursos como confirmação de entrega, ordenação de mensagens e criação de filas. Ele é particularmente útil em cenários de microservices e comunicação entre sistemas, permitindo um fluxo confiável de dados.

### Referências

- [RabbitMQ official website](https://www.rabbitmq.com/);
- [Wikipedia about RabbitMQ](https://en.wikipedia.org/wiki/RabbitMQ);
- [Wikipedia about RabbitMQ (pt-br)](https://pt.wikipedia.org/wiki/RabbitMQ);
- [FullCycle about RabbitMQ](https://fullcycle.com.br/como-funciona-o-rabbitmq/);

---
## Radiology Information System (RIS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Radiology Information System (RIS)* é um sistema de informações de radiologia utilizado para gerenciar dados e processos de departamentos de radiologia em hospitais e clínicas. Ele organiza o fluxo de trabalho, agendamento de exames, armazenamento de imagens e resultados, facilitando o trabalho de radiologistas e técnicos. O RIS também se integra com sistemas de *Picture Archiving and Communication System (PACS)* para o armazenamento e recuperação de imagens digitais.

Esses sistemas são essenciais para documentar procedimentos, arquivar imagens médicas e fornecer diagnósticos precisos, especialmente em clínicas e hospitais com alta demanda de exames de imagem. A integração do RIS com outros sistemas de saúde, como HIS e PEP, permite uma visão mais completa do paciente.

### Referências

- [Animati about RIS](https://www.animati.com.br/ris-na-radiologia/);
- [Pixeon about RIS](https://www.pixeon.com/blog/o-que-e-ris/);
- [Wikipedia about RIS](https://pt.wikipedia.org/wiki/Sistema_de_informa%C3%A7%C3%A3o_radiol%C3%B3gica);
- [Star about RIS](https://star.med.br/o-que-e-ris/);

---
## Remote Desktop Protocol (RDP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Remote Desktop Protocol (RDP)* é um protocolo desenvolvido pela Microsoft que permite que usuários acessem e controlem computadores remotamente, oferecendo interface gráfica e suporte a múltiplos dispositivos. Ele é amplamente utilizado para suporte técnico e acesso remoto em ambientes corporativos.

O RDP opera na Camada 7 (Aplicação) do modelo OSI e utiliza a porta padrão 3389.

### Referências

- [Cloudflare about RDP](https://www.cloudflare.com/pt-br/learning/access-management/what-is-the-remote-desktop-protocol/);
- [Wikipedia about RDP](https://en.wikipedia.org/wiki/Remote_Desktop_Protocol);
- [Microsoft about RDP](https://learn.microsoft.com/en-us/troubleshoot/windows-server/remote/understanding-remote-desktop-protocol);
- [Solarwinds about RDP](https://www.solarwinds.com/resources/it-glossary/remote-desktop-protocol);
- [Fortinet about RDP](https://www.fortinet.com/resources/cyberglossary/remote-desktop-protocol);

---
## Samba

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

SAMBA é uma implementação livre e de código aberto do protocolo SMB/CIFS, permitindo que sistemas Linux e Unix se comuniquem e compartilhem arquivos com máquinas Windows. Usando o SAMBA, servidores Linux podem atuar como um servidor de arquivos ou controlador de domínio, oferecendo recursos como compartilhamento de arquivos, impressoras e autenticação de usuários em redes mistas.

SAMBA é amplamente utilizado em ambientes empresariais para integrar redes baseadas em Linux e Windows, permitindo uma comunicação fluida entre os dois sistemas operacionais.

### Referências

- [Samba official website](https://www.samba.org/samba/what_is_samba.html);
- [University of Pennsilvania about Samba](https://cets.seas.upenn.edu/answers/samba.html);
- [RedHat about Samba](https://www.redhat.com/en/blog/getting-started-samba);
- [Ubuntu about Samba](https://ubuntu.com/server/docs/introduction-to-samba);
- [Wikipedia about Samba](https://en.wikipedia.org/wiki/Samba_(software));

---
## Secure Copy Protocol (SCP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Secure Copy Protocol (SCP)* é um protocolo de transferência de arquivos seguro baseado no SSH. Ele permite copiar arquivos entre máquinas de forma criptografada, garantindo segurança e autenticidade dos dados transmitidos.

O SCP opera na Camada 7 (Aplicação) do modelo OSI e utiliza a porta padrão 22 (compartilhada com o SSH).

### Referências

- [Wikipedia about SCP](https://en.wikipedia.org/wiki/Secure_copy_protocol);
- [Wikipedia about SCP (pt-br)](https://pt.wikipedia.org/wiki/Secure_copy);
- [NordVPN about SCP](https://nordvpn.com/pt-br/cybersecurity/glossary/secure-copy-protocol/);
- [Die SCP man](https://linux.die.net/man/1/scp);
- [Man page of SCP](https://man7.org/linux/man-pages/man1/scp.1.html);
- [Oracle SCP man](https://docs.oracle.com/cd/E36784_01/html/E36870/scp-1.html);



---
## Secure File Transfer Protocol (SFTP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Secure File Transfer Protocol (SFTP)* é uma versão segura do FTP que utiliza o protocolo SSH para fornecer uma transferência de arquivos criptografada entre cliente e servidor. O SFTP é amplamente utilizado para envio seguro de arquivos, especialmente em ambientes corporativos que exigem conformidade com normas de segurança. Por ser baseado em SSH, o SFTP utiliza a porta 22, oferecendo um nível de segurança superior ao FTP padrão.

### Referências

- [Wikipedia about SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol);

---
## Secure Shell (SSH)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Secure Shell (SSH)* é um protocolo de rede amplamente utilizado em ambientes Linux e macOS para acesso remoto seguro a servidores e dispositivos. Ele permite a execução de comandos e a transferência de arquivos com segurança, protegendo os dados por meio de criptografia. O SSH opera, por padrão, na porta 22 e oferece diferentes métodos de autenticação, incluindo o uso de credenciais (usuário e senha) e chaves criptográficas, que fornecem uma camada adicional de segurança. Em ambientes corporativos e de desenvolvimento, o SSH substitui protocolos mais vulneráveis, como Telnet, garantindo a privacidade e a integridade das operações remotas.

### Referências

- [CloudFlare about SSH](https://www.cloudflare.com/pt-br/learning/access-management/what-is-ssh/);
- [Wikipedia about SSH](https://pt.wikipedia.org/wiki/Secure_Shell);

---
## Secure Sockets Layer (SSL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Secure Sockets Layer (SSL)* é um protocolo de segurança criado para proteger a comunicação entre servidores e clientes na internet, garantindo que os dados transmitidos permaneçam privados e protegidos contra interceptações. Ele utiliza criptografia para codificar os dados durante a transmissão, assegurando que apenas o servidor e o cliente possam entender o conteúdo. O SSL passou por diversas atualizações para melhorar a segurança, até que foi gradualmente substituído pelo TLS, devido a vulnerabilidades encontradas nas versões anteriores. Mesmo assim, o termo “SSL” ainda é amplamente usado para se referir às camadas de segurança na web.

### Referências

- [Amazon AWS About SSL Certificate](https://aws.amazon.com/pt/what-is/ssl-certificate/);
- [CloudFlare About SSL Certificate](https://www.cloudflare.com/pt-br/learning/ssl/what-is-ssl/);
- [Wikipedia About SSL/TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security);

---
## Server Message Block (SMB)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Server Message Block (SMB)* é um protocolo de rede utilizado para compartilhar arquivos, impressoras e outros recursos em uma rede. Originalmente desenvolvido para sistemas Windows, o SMB permite que computadores acessem arquivos de forma remota e façam solicitações a servidores e dispositivos em uma rede.

O protocolo SMB funciona na camada de aplicação do modelo OSI e é utilizado por sistemas operacionais como Windows, Linux (via SAMBA) e macOS. A porta padrão 445 (SMB2 e SMB3, utilizado em Windows para compartilhamento de arquivos e impressão).

### Referências

- [Wikipedia about SMB](https://en.wikipedia.org/wiki/Server_Message_Block);
- [NordVPN about SMB](https://nordvpn.com/pt-br/blog/what-is-smb/);
- [Wikiedia about SMB (pt-br)](https://pt.wikipedia.org/wiki/Server_Message_Block);

---
## Simple Mail Transfer Protocol (SMTP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Simple Mail Transfer Protocol (SMTP)* é o protocolo padrão de envio de e-mails, utilizado para a transmissão de mensagens entre servidores de e-mail e entre clientes e servidores. Operando geralmente nas portas 25, 587 e 465 (para conexões criptografadas), o SMTP é um dos protocolos essenciais para o funcionamento da internet e é complementado por POP3 e IMAP para o recebimento de mensagens.

### Referências

- [Cloudflare about SMTP](https://www.cloudflare.com/pt-br/learning/email-security/what-is-smtp/);
- [Wikipedia about SMTP](https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol);
- [Amazon AWS about SMTP](https://aws.amazon.com/what-is/smtp/);
- [GeeksForGeeks about SMTP](https://www.geeksforgeeks.org/simple-mail-transfer-protocol-smtp/);

---
## Simple Network Management Protocol (SNMP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Simple Network Management Protocol (SNMP)* é um protocolo utilizado para gerenciar e monitorar dispositivos de rede, como roteadores, switches, servidores e impressoras. Ele opera na Camada de Aplicação (Camada 7) do modelo OSI, que é responsável pela interação com as aplicações de rede. O SNMP permite que administradores de rede coletem informações detalhadas sobre o status dos dispositivos, como a utilização de CPU, memória, temperatura, tráfego de rede, entre outros, e ainda possibilita o controle remoto desses dispositivos.

O SNMP utiliza uma arquitetura cliente-servidor, onde os dispositivos de rede, chamados de "agentes", enviam informações para um "gerente" central que coleta e armazena esses dados. Ele pode ser configurado para enviar alertas ou traps quando há falhas ou problemas na rede, permitindo que os administradores tomem ações corretivas. SNMP é amplamente usado para monitoramento de redes, configuração de dispositivos e solução de problemas em ambientes corporativos, e é essencial para manter a integridade e a performance da infraestrutura de TI.

### Referências

- [Wikipedia about SNMP](https://pt.wikipedia.org/wiki/Simple_Network_Management_Protocol);
- [4Linux about SNMP](https://4linux.com.br/o-que-e-snmp/);

---
## Sistema de Gerenciamento de Banco de Dados (SGDB)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O Sistema de Gerenciamento de Banco de Dados (SGDB) é um software que facilita o gerenciamento, armazenamento, e manipulação de dados em bancos de dados. Ele permite a criação, consulta, atualização e exclusão de dados de maneira eficiente e segura. SGBDs populares incluem MySQL, PostgreSQL, Oracle Database e SQL Server, cada um com características próprias e adequado para diferentes aplicações.

Os SGBDs são fundamentais em praticamente todos os sistemas modernos que dependem de dados, desde aplicações web até sistemas empresariais e de saúde. Eles oferecem funcionalidades como backup, controle de acesso, e otimização de consultas, garantindo a integridade e a segurança dos dados armazenados.

### Referências

- [Wikipedia about SGDB](https://pt.wikipedia.org/wiki/Sistema_de_gerenciamento_de_banco_de_dados);
- [Alura about SGDB](https://www.alura.com.br/artigos/sgbds-relacionais?utm_term=&utm_campaign=%5BSearch%5D+%5BPerformance%5D+-+Dynamic+Search+Ads+-+Artigos+e+Conte%C3%BAdos&utm_source=adwords&utm_medium=ppc&hsa_acc=7964138385&hsa_cam=11384329873&hsa_grp=164212380672&hsa_ad=703829166693&hsa_src=g&hsa_tgt=dsa-425656816943&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gclid=Cj0KCQiAire5BhCNARIsAM53K1hQc_xLuiB4fiLBFhl993s324PiO_jXpvqrOzOH7b6jXxltWiUsRw4aAug-EALw_wcB);

---
## Site Reliability Engineering (SRE)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Site Reliability Engineering (SRE)* é uma abordagem de engenharia de software dedicada à criação de sistemas resilientes, escaláveis e com alta disponibilidade. Os engenheiros de SRE aplicam princípios de automação e monitoramento para reduzir falhas e manter serviços com tempos de resposta e disponibilidade elevados. O conceito foi inicialmente desenvolvido pelo Google e abrange técnicas de automação, criação de alertas proativos e redução de tarefas manuais para maximizar a eficiência e a confiabilidade de sistemas complexos.

### Referências

- [RedHat about SRE](https://www.redhat.com/en/topics/devops/what-is-sre);
- [Amazon AWS about SRE](https://aws.amazon.com/what-is/sre/);
- [SRE official website](https://sre.google/);
- [Wikipedia about SRE](https://en.wikipedia.org/wiki/Site_reliability_engineering);
- [IBM about SRE](https://www.ibm.com/topics/site-reliability-engineering);
- [Dynatrace about SRE](https://www.dynatrace.com/news/blog/what-is-site-reliability-engineering/);
- [Atlassian about SRE](https://www.atlassian.com/incident-management/devops/sre);

---
## Software as a Service (Saas)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Software as a Service (Saas)* é um modelo de computação em nuvem onde o software é hospedado e mantido por um provedor e acessado pelos usuários pela internet, normalmente via navegador ou API. Nesse modelo, os usuários pagam uma assinatura para utilizar a aplicação sem precisar gerenciar infraestrutura ou atualizações. SaaS é popular devido à conveniência de acesso remoto e à capacidade de escalar serviços de acordo com a demanda. Exemplos de SaaS incluem Microsoft 365, Salesforce e Zoom.

### Referências

- [Microsoft Azure about SaaS](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-saas);
- [Salesforce about SaaS](https://www.salesforce.com/saas/);
- [Wikipedia about SaaS](https://en.wikipedia.org/wiki/Software_as_a_service);
- [Amazon AWS about SaaS](https://aws.amazon.com/what-is/saas/);
- [IBM about SaaS](https://www.ibm.com/topics/saas);
- [Cloudflare about SaaS](https://www.cloudflare.com/pt-br/learning/cloud/what-is-saas/);
- [Oracla about SaaS](https://www.oracle.com/ng/applications/what-is-saas/);

---
## Static Application Security Testing (SAST)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-09

### Descrição

O *Static Application Security Testing (SAST)* é uma abordagem de segurança que envolve a análise do código-fonte de uma aplicação para identificar vulnerabilidades antes que o software seja executado. O SAST pode ser realizado durante a fase de desenvolvimento e é essencial para detectar falhas de segurança precoces, evitando riscos em produção.

Ferramentas SAST populares incluem SonarQube, Checkmarx e Veracode, que ajudam a automatizar a detecção de vulnerabilidades em aplicativos.

### Referências

- [Wikipedia about SAST](https://en.wikipedia.org/wiki/Static_application_security_testing);
- [Sonar about SAST](https://www.sonarsource.com/learn/sast/);
- [Gartner Glossary about SAST](https://www.gartner.com/en/information-technology/glossary/static-application-security-testing-sast);
- [Opentext about SAST](https://www.opentext.com/pt-br/o-que-e/sast);

---
## Streaming Text Oriented Messaging Protocol (STOMP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Streaming Text Oriented Messaging Protocol (STOMP)* é um protocolo de mensagens simples e orientado a texto que permite que diferentes sistemas e aplicações se comuniquem via mensagens. Ele é frequentemente utilizado para comunicação assíncrona em sistemas de mensageria e é suportado por brokers como RabbitMQ e ActiveMQ. STOMP permite a comunicação entre sistemas heterogêneos usando uma interface baseada em texto, o que simplifica sua implementação.

STOMP opera na camada de aplicação do modelo OSI (Camada 7) e é utilizado em sistemas que exigem troca de mensagens em tempo real ou em comunicações baseadas em filas, como em chatbots, monitoramento de sistemas e notificações em tempo real.

### Referências

- [Wikipedia about STOMP](https://en.wikipedia.org/wiki/Streaming_Text_Oriented_Messaging_Protocol);
- [GeeksForGeeks about STOMP](https://www.geeksforgeeks.org/stomp-protocol/);

---
## Structured Query Language (SQL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Structured Query Language (SQL)* é uma linguagem de programação padrão para gerenciar e manipular dados em bancos de dados relacionais, onde os dados são organizados em tabelas com linhas e colunas. Criada para permitir a execução de consultas e comandos como `SELECT`, `INSERT`, `UPDATE` e `DELETE`, o SQL é amplamente utilizado em sistemas de bancos de dados como MySQL, PostgreSQL, Oracle, e SQL Server. Além de manipulação de dados, o SQL também inclui comandos para definir e controlar o acesso e estrutura dos dados.

Em termos de arquitetura, o SQL é estruturado para transações ACID (Atomicidade, Consistência, Isolamento, Durabilidade), garantindo confiabilidade em operações complexas, especialmente em sistemas financeiros e empresariais. A estrutura do SQL e a conformidade com o modelo relacional ajudam a garantir integridade referencial e a organizar dados em um modelo consistente.

### Referências

- [w3schools about SQL](https://www.w3schools.com/sql/sql_intro.asp);
- [Amazon AWS about SQL](https://aws.amazon.com/what-is/sql/);
- [Wikipedia about SQL](https://en.wikipedia.org/wiki/SQL);
- [IBM about SQL](https://www.ibm.com/think/topics/structured-query-language);
- [GeeksForGeeks about SQL](https://www.geeksforgeeks.org/what-is-sql/);

---
## Switch Top of Rack (ToR)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

O *Switch Top of Rack (ToR)* é um tipo de switch utilizado na parte superior de um rack (estrutura que agrupa servidores e equipamentos de rede em datacenters), oferecendo conexões diretas para os servidores abaixo dele. Ele ajuda a reduzir a quantidade de cabos, já que os servidores de um rack inteiro se conectam diretamente ao ToR, que então se comunica com os switches centrais. Esse modelo melhora a organização e facilita a manutenção e a escalabilidade da infraestrutura de rede em datacenters.

Switches ToR geralmente operam na Camada 2 (Enlace) e/ou Camada 3 (Rede) do modelo OSI, pois muitos suportam roteamento para gerenciar o tráfego de dados. Sua posição estratégica dentro do rack também permite melhor controle de latência e alta velocidade de conexão.

### Referências

- [CBT Nuggets about Switch ToR](https://www.cbtnuggets.com/blog/technology/networking/top-of-rack-switching);
- [FS about Switch ToR](https://community.fs.com/article/popular-tor-and-tor-switch-in-data-center-architectures.html);

---
## Time to Live (TTL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Time to Live (TTL)* é um valor em redes de computadores que indica o tempo máximo de "vida" de um pacote de dados. A cada roteador que um pacote atravessa, o TTL é decrementado em uma unidade, e quando atinge zero, o pacote é descartado, evitando loops infinitos na rede. Esse valor é muito importante para a eficiência da rede, garantindo que pacotes não fiquem circulando indefinidamente e ocupando largura de banda.

O TTL é uma característica presente na Camada 3 (Rede) do modelo OSI, onde é aplicado em protocolos como o IP (Internet Protocol). No caso de protocolos de rede como o DNS, o TTL também é usado para definir o tempo que um registro pode ser mantido em cache, otimizando o acesso a informações.

### Referências

- [Cloudflare about TTL](https://www.cloudflare.com/pt-br/learning/cdn/glossary/time-to-live-ttl/);
- [Wikipedia about TTL](https://en.wikipedia.org/wiki/Time_to_live);
- [Fortinet about TTL](https://www.fortinet.com/resources/cyberglossary/what-is-ttl);
- [IBM about TTL](https://www.ibm.com/topics/time-to-live);

---
## Transmission Control Protocol (TCP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Transmission Control Protocol (TCP)* é um protocolo orientado à conexão utilizado para garantir a entrega confiável de dados entre os sistemas. Ele pertence à Camada de Transporte (Camada 4) do modelo OSI. O TCP estabelece uma conexão entre o cliente e o servidor antes de iniciar a transmissão de dados, utilizando um processo de "handshake" de três vias para garantir que a comunicação seja estável e segura. Essa camada é responsável por segmentar os dados, garantir a entrega correta e ordenar as mensagens, caso cheguem fora de sequência.

O protocolo TCP é amplamente utilizado em aplicações que exigem alta confiabilidade, como navegação na web (HTTP/HTTPS), transferência de arquivos (FTP) e e-mails. Além disso, ele oferece controle de fluxo e de congestionamento, o que ajuda a regular a taxa de transmissão, evitando sobrecargas na rede. A camada de transporte, onde o TCP opera, é essencial para garantir a integridade e a confiabilidade na comunicação de dados entre sistemas.

### Referências

- [Wikipedia about TCP](https://pt.wikipedia.org/wiki/Protocolo_de_Controle_de_Transmiss%C3%A3o);
- [CloudFlare about TCP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/tcp-ip/);

---
## Transport Layer Security (TLS)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Transport Layer Security (TLS)* é a evolução do SSL e o protocolo atualmente recomendado para proteger a transmissão de dados pela internet. Ele oferece melhorias em termos de velocidade e segurança em comparação com o SSL, usando criptografia avançada para garantir a privacidade e a integridade dos dados trocados. TLS é amplamente utilizado em sites, emails e outros serviços online que exigem confidencialidade. Uma das características fundamentais do TLS é a autenticação mútua, que permite confirmar a identidade tanto do cliente quanto do servidor, sendo essencial para uma comunicação segura.

### Referências

- [Wikipedia about TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security);
- [Wikipedia about TLS (pt-br)](https://pt.wikipedia.org/wiki/Transport_Layer_Security);
- [CloudFlare about TLS](https://www.cloudflare.com/pt-br/learning/ssl/transport-layer-security-tls/);
- [Amazon AWS about the difference between SSL and TLS](https://aws.amazon.com/pt/compare/the-difference-between-ssl-and-tls/);

---
## Unified Modeling Language (UML)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-11

### Descrição

*Unified Modeling Language (UML)* é uma linguagem de modelagem que oferece uma maneira padronizada de visualizar o design de um sistema. Ela é amplamente utilizada na engenharia de software para representar sistemas complexos por meio de diagramas. A UML ajuda desenvolvedores a entender, documentar e comunicar a estrutura, o comportamento e a arquitetura de um sistema antes de sua implementação.

Com diversos tipos de diagramas, como de classes, sequência, caso de uso e atividades, a UML facilita a criação de modelos visuais que ajudam no planejamento e na gestão de projetos, promovendo uma linguagem comum entre profissionais de TI.

### Referências

- [Wikipedia about UML](https://en.wikipedia.org/wiki/Unified_Modeling_Language);
- [Lucidchart about UML](https://www.lucidchart.com/pages/what-is-UML-unified-modeling-language);
- [GeeksForGeeks about UML](https://www.geeksforgeeks.org/unified-modeling-language-uml-introduction/);
- [UML official website](https://www.uml.org/what-is-uml.htm);
- [Miro about UML](https://miro.com/diagramming/what-is-a-uml-diagram/);
- [IBM about UML](https://developer.ibm.com/articles/an-introduction-to-uml/);
- [Indeed about UML](https://www.indeed.com/career-advice/career-development/what-is-uml);

---
## Uniform Resource Identifier (URI)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Uniform Resource Identifier (URI)* é um identificador padrão utilizado para nomear recursos de forma única e acessível em redes de computadores, especialmente na web. Uma URI pode indicar a localização de um recurso (como um site), uma abstração ou uma entidade física. A URI possui dois tipos principais: URLs e URNs. A URL (Uniform Resource Locator) é um tipo de URI que especifica como acessar um recurso, enquanto a URN (Uniform Resource Name) identifica o recurso de forma única.

Por exemplo, a URI `http://example.com/page` indica tanto o protocolo quanto a localização de um recurso específico na web. A URI é essencial para a padronização e acesso aos recursos distribuídos em redes.

### Referências

- [Hostinger about the difference between URI and URL (pt-br)](https://www.hostinger.com.br/tutoriais/uri-e-url);
- [Wikipedia about URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier);
- [MDN about URI](https://developer.mozilla.org/en-US/docs/Web/URI);
- [Wikipedia about URI (pt-br)](https://pt.wikipedia.org/wiki/URI);
- [Hostinger about the difference between URI and URL](https://www.hostinger.com/tutorials/uri-vs-url);

---
## Uniform Resource Locator (URL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Uniform Resource Locator (URL)* é um tipo de URI que especifica o local exato de um recurso em uma rede e como acessá-lo, geralmente na internet. A URL inclui o esquema de acesso (como `http` ou `https`), o nome do host e, opcionalmente, o caminho para o recurso e parâmetros de consulta.

Por exemplo, na URL `https://example.com/path?query=123`, `https` indica o protocolo, `example.com` o domínio, e `/path?query=123` o caminho para o recurso específico. As URLs são componentes fundamentais para navegação e recursos web, permitindo acesso a páginas e arquivos em servidores.

### Referências

- [MDN about URL](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Web_mechanics/What_is_a_URL);
- [Wikipedia about URL](https://en.wikipedia.org/wiki/URL);
- [Hostinger about URL](https://www.hostinger.com/tutorials/what-is-a-url);
- [Lenovo about URL](https://www.lenovo.com/us/en/glossary/what-is-url/);
- [GeeksForGeeks about URL](https://www.geeksforgeeks.org/what-is-url-uniform-resource-locator/);

---
## User Datagram Protocol (UDP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *User Datagram Protocol (UDP)*, por sua vez, também opera na Camada de Transporte (Camada 4) do modelo OSI, mas de uma maneira diferente do TCP. Ao contrário do TCP, o UDP é um protocolo não orientado à conexão, o que significa que ele envia dados sem verificar se o destinatário recebeu corretamente ou se houve falhas na transmissão. Ele é ideal para situações que exigem rapidez e onde a perda de alguns pacotes de dados não compromete a aplicação, como em transmissões de vídeo ao vivo, chamadas VoIP ou jogos online.

Apesar de sua falta de confiabilidade, o UDP é mais rápido do que o TCP, pois não realiza o processo de handshake nem o controle de fluxo. A Camada de Transporte, onde o UDP está posicionado, é responsável por gerenciar a comunicação entre sistemas de forma eficiente, e o UDP é uma escolha comum quando o desempenho em tempo real é mais importante que a precisão na entrega dos dados.

### Referências

- [CloudFlare about UDP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/user-datagram-protocol-udp/);
- [Wikipedia about UDP](https://pt.wikipedia.org/wiki/Protocolo_de_datagrama_do_usu%C3%A1rio);
- [IBM about UDP](https://www.ibm.com/docs/pt-br/aix/7.3?topic=protocols-user-datagram-protocol);

---
## Vendor Neutral Archive (VNA)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Vendor Neutral Archive (VNA)* é um sistema de armazenamento de imagens médicas que permite a captura, armazenamento, gerenciamento e acesso a imagens, independentemente do fornecedor da tecnologia de imagem utilizada. A principal vantagem do VNA é a neutralidade, ou seja, ele não depende de um fabricante específico e pode ser integrado com diferentes sistemas, como *PACS (Picture Archiving and Communication System)*, garantindo a interoperabilidade.

Em ambientes de saúde, o VNA facilita o armazenamento centralizado de imagens médicas, como radiografias, tomografias e ressonâncias magnéticas, além de permitir a visualização de imagens em qualquer estação de trabalho sem depender de um software proprietário.

### Referências

- [Wikipedia about VNA](https://en.wikipedia.org/wiki/Vendor_Neutral_Archive);
- [Intelerad about VNA](https://www.intelerad.com/en/2023/04/20/what-is-vendor-neutral-archive/);

---
## Virtual Local Area Network (VLAN)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Virtual Local Area Network (VLAN)* é uma técnica de segmentação de rede que permite dividir uma rede física em várias redes lógicas. Com VLANs, é possível segmentar a rede de acordo com necessidades de segurança, eficiência e organização, isolando grupos de dispositivos ou departamentos sem precisar de redes físicas separadas.

VLANs operam na Camada 2 (Enlace) do modelo OSI e são configuradas em switches de rede. Essa segmentação também melhora a performance da rede e facilita o gerenciamento e a aplicação de políticas de segurança.

### Referências

- [Solarwinds about VLAN](https://www.solarwinds.com/resources/it-glossary/vlan);
- [Wikipedia about VLAN](https://en.wikipedia.org/wiki/VLAN);
- [Huawei about VLAN](https://info.support.huawei.com/info-finder/encyclopedia/en/VLAN.html);
- [GeeksForGeeks about VLAN](https://www.geeksforgeeks.org/virtual-lan-vlan/);
- [CBTNuggets about VLAN](https://www.cbtnuggets.com/blog/technology/networking/what-is-a-vlan-and-how-they-work);

---
## Virtual Network Computing (VNC)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Virtual Network Computing (VNC)* é um protocolo de compartilhamento de área de trabalho que permite a usuários visualizar e interagir com um desktop remoto através da rede. Ele funciona transmitindo eventos de teclado e mouse para o sistema remoto e mostrando a tela do dispositivo remoto na máquina do usuário.

O VNC opera principalmente na Camada 7 (Aplicação) do modelo OSI, utilizando a porta padrão 5900 para comunicação. É amplamente usado para suporte técnico e acesso remoto a computadores, especialmente em ambientes corporativos e educacionais.

### Referências

- [Wikipedia about VNC](https://en.wikipedia.org/wiki/VNC);
- [MIT about VNC](http://web.mit.edu/cdsdev/src/howitworks.html);

---
## Virtual Private Network (VPN)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Virtual Private Network (VPN)* é uma tecnologia que permite criar uma conexão segura e privada entre um dispositivo e a internet através de um túnel encriptado. Com VPN, usuários podem acessar redes remotas com segurança, ideal para colaboradores que precisam acessar recursos corporativos de fora do ambiente físico da empresa.

A VPN atua principalmente na Camada 3 (Rede) do modelo OSI e utiliza protocolos de tunelamento, como L2TP, PPTP ou IPsec. Além de segurança, ela oferece privacidade ao mascarar o endereço IP do usuário, tornando-se útil também para acessar conteúdos restritos geograficamente.

### Referências

- [Kaspersky about VPN](https://www.kaspersky.com/resource-center/definitions/what-is-a-vpn);
- [Wikipedia about VPN](https://en.wikipedia.org/wiki/Virtual_private_network);
- [Microsoft Azure about VPN](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-vpn);
- [CISCO about VPN](https://www.cisco.com/c/en/us/products/security/vpn-endpoint-security-clients/what-is-vpn.html);
- [NordVPN about VPN](https://nordvpn.com/pt-br/what-is-a-vpn/);
- [Amazon AWS about VPN](https://aws.amazon.com/what-is/vpn/);
- [Fortinet about VPN](https://www.fortinet.com/br/resources/cyberglossary/what-is-a-vpn);
- [CNET about VPN](https://www.cnet.com/tech/services-and-software/what-is-a-vpn/);
- [GeeksForGeeks about VPN](https://www.geeksforgeeks.org/what-is-vpn-and-how-it-works/);

---
## Visual Basic Script (VBScript)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Visual Basic Script (VBScript)* é uma linguagem de script baseada no Visual Basic, projetada para automação em sistemas Windows e em navegadores que suportam scripts. É amplamente utilizada em scripts administrativos e, anteriormente, em páginas da web para criar funcionalidades interativas, embora hoje tenha sido em grande parte substituída pelo JavaScript.

No contexto de automação, o VBScript permite que administradores de sistemas Windows realizem tarefas repetitivas, como gerenciamento de arquivos e configurações de rede, diretamente a partir do prompt de comando ou de scripts executáveis.

### Referências

- [Wikipedia about VBScript](https://en.wikipedia.org/wiki/VBScript);
- [GeeksForGeeks about VBScript](https://www.geeksforgeeks.org/vbscript-introduction/);

---
## Visual Basic for Applications (VBA)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Visual Basic for Applications (VBA)* é uma linguagem de programação desenvolvida pela Microsoft para automatizar tarefas e estender as funcionalidades de aplicativos do Microsoft Office, como Excel, Word e Access. Com o VBA, os usuários podem criar macros que automatizam processos repetitivos, além de desenvolver funcionalidades personalizadas.

Muito utilizado por profissionais de negócios e analistas de dados, o VBA permite manipulação de dados, criação de relatórios automatizados e construção de soluções personalizadas, aumentando a produtividade em ambientes corporativos.

### Referências

- [Microsoft about VBA](https://learn.microsoft.com/en-us/office/vba/library-reference/concepts/getting-started-with-vba-in-office);
- [Wikipedia about VBA](https://en.wikipedia.org/wiki/Visual_Basic_for_Applications);
- [CFI about VBA](https://corporatefinanceinstitute.com/resources/excel/excel-vba/);
- [Microsoft VBA reference](https://learn.microsoft.com/en-us/office/vba/api/overview/language-reference);
- [Indeed about VBA](https://uk.indeed.com/career-advice/career-development/what-is-vba-macro);

---
## Wide Area Network (WAN)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*Wide Area Network (WAN)* é uma rede que cobre grandes áreas geográficas, conectando redes locais (LANs) através de longas distâncias. A internet é o exemplo mais conhecido de uma WAN. Essas redes permitem a comunicação entre dispositivos e usuários localizados em diferentes regiões, permitindo a integração de empresas globais.

Com a utilização de várias tecnologias, incluindo roteamento e links de dados dedicados, a WAN opera em várias camadas do modelo OSI, mas sua função principal está na Camada 3 (Rede), pois envolve roteamento e conexão de redes distantes.

### Referências

- [Amazon AWS about WAN](https://aws.amazon.com/what-is/wan/);
- [CISCO about WAN](https://www.cisco.com/c/en/us/products/switches/what-is-a-wan-wide-area-network.html);
- [Wikipedia about WAN](https://en.wikipedia.org/wiki/Wide_area_network);
- [Cloudflare about WAN](https://www.cloudflare.com/pt-br/learning/network-layer/what-is-a-wan/);
- [CompTIA about WAN](https://www.comptia.org/content/guides/what-is-a-wide-area-network);
- [Fortinet about WAN](https://www.fortinet.com/resources/cyberglossary/wan);
- [HP about WAN](https://www.hpe.com/br/en/what-is/wide-area-network.html);

---
## YAML Ain't Markup Language (YAML)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*YAML Ain't Markup Language (YAML)* é uma linguagem de serialização de dados legível por humanos, usada para configurações e troca de informações entre sistemas. Com uma sintaxe simples e intuitiva, YAML é popular em arquivos de configuração para automação e infraestrutura como código (IAC), como no Kubernetes e Ansible.

Por sua simplicidade e suporte a listas e mapeamentos, YAML facilita o gerenciamento de configurações complexas, sendo uma alternativa a XML e JSON em aplicações onde a clareza e a facilidade de edição são prioridades.

### Referências

- [Wikipedia about YAML](https://en.wikipedia.org/wiki/YAML);
- [RedHat about YAML](https://www.redhat.com/en/topics/automation/what-is-yaml);
- [IBM about YAML](https://www.ibm.com/topics/yaml);
- [YAML official website](https://yaml.org/);

---
## eXtensible Markup Language (XML)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

### Descrição

*eXtensible Markup Language (XML)* é uma linguagem de marcação que organiza dados de maneira hierárquica e legível por humanos e máquinas. É amplamente utilizada para armazenamento, troca e serialização de dados, especialmente em aplicações web e bancos de dados. XML permite definir elementos personalizados e criar estruturas de dados flexíveis.

XML é frequentemente usado em sistemas de configuração, protocolos de mensagens (como SOAP) e arquivos de dados, promovendo interoperabilidade entre sistemas e permitindo uma estrutura padronizada para dados.

### Referências

- [W3Schools about XML](https://www.w3schools.com/xml/xml_whatis.asp);
- [Wikipedia about XML](https://en.wikipedia.org/wiki/XML);
- [Amazon AWS about XML](https://aws.amazon.com/what-is/xml/);
- [MDN about XML](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction);
- [MailChimp about XML](https://mailchimp.com/pt-br/marketing-glossary/xml/);
- [Postman about XML](https://blog.postman.com/what-is-xml/);
- [Javapoint about XML](https://www.javatpoint.com/what-is-xml);

<!-- término glossário -->

## Referências Gerais

- [MDN Web Docs Glossary](https://developer.mozilla.org/en-US/docs/Glossary)
- [F5 Glossary](https://www.f5.com/pt_br/glossary);
- [Gartner Glossary](https://www.gartner.com/en/glossary);
- [Cloudflare Learning Center](https://www.cloudflare.com/pt-br/learning/);
- [Lenovo Glossary](https://www.lenovo.com/in/en/glossary/);

<!-- Bloco de perfis -->
[1]: https://www.linkedin.com/in/leonardo-pangaio/