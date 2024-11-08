# Glossário

Este glossário foi desenvolvido para facilitar a compreensão dos principais termos e conceitos usados em TI e no ambiente corporativo, oferecendo definições objetivas e acessíveis. Cada entrada foi cuidadosamente elaborada para proporcionar uma visão clara e rápida sobre temas que, muitas vezes, podem parecer complexos ou técnicos.

A proposta é que este material sirva como uma referência prática para iniciantes e profissionais, permitindo uma consulta rápida e confiável. Para quem deseja se aprofundar, incluímos referências e sugestões de leitura adicional, ampliando o entendimento e a aplicação de cada termo no dia a dia profissional.

Vale ressaltar que os conceitos aqui abordados, foram pesquisados pelos autores, e podem ter utilizado IAs generativas e/ou buscas, em geral as referências são buscas manuais.

<!-- ![Forks](https://img.shields.io/github/forks/leonardopangaio/glossario.svg) - 
![Stats](https://img.shields.io/github/stars/leonardopangaio/glossario.svg) - 
![Watchers](https://img.shields.io/github/watchers/leonardopangaio/glossario.svg) - 
![Followers](https://img.shields.io/github/followers/leonardopangaio.svg?style=social&label=Follow&maxAge=2592000) -->

<!-- início glossário -->

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
## Database Migration (Migração de Banco de Dados)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

*Database Migration* é um tipo específico de migração que envolve a transição de um banco de dados de um sistema para outro. Esse processo pode ser necessário ao mudar o sistema de gerenciamento de banco de dados (SGBD) ou ao atualizar a infraestrutura. Migrações de banco de dados precisam de planejamento rigoroso, já que alterações na estrutura e dependências de dados podem impactar o funcionamento das aplicações.

A migração pode incluir mudanças no schema de dados, mapeamento entre tipos de dados diferentes e testes de performance. Ferramentas como AWS DMS, Azure *Database Migration* Service, e ferramentas nativas de SGBDs ajudam a facilitar a migração, minimizando o risco de problemas.

### Referências

- [Google Cloud about Database Migration](https://cloud.google.com/architecture/database-migration-concepts-principles-part-1?hl=pt-br);
- [Amazon AWS Database Migration Service (DMS)](https://aws.amazon.com/pt/dms/);


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
## Hypertext Transfer Protocol (HTTP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *Hypertext Transfer Protocol (HTTP)* é o protocolo de comunicação padrão para a transferência de documentos na web, utilizado para carregar páginas HTML, imagens e outros recursos. Ele opera na Camada de Aplicação (Camada 7) do modelo OSI, a camada mais próxima do usuário. O HTTP é baseado em uma arquitetura cliente-servidor, onde o navegador solicita recursos ao servidor web e o servidor responde com os dados solicitados. Ele é simples, sem criptografia ou autenticação, o que significa que os dados trocados podem ser interceptados.

No contexto do modelo OSI, a Camada de Aplicação lida com as interações diretas dos usuários com os serviços da rede, incluindo a transferência de arquivos, emails e, no caso do HTTP, o acesso à web. Embora seja amplamente utilizado, o HTTP por si só não oferece segurança e, por isso, é comum usá-lo em situações onde a proteção dos dados não é uma preocupação central, como o carregamento de conteúdo estático.

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

### Referências

- [MDN Glossary about HTTPS](https://developer.mozilla.org/en-US/docs/Glossary/HTTPS);
- [Amazon AWS about the difference between HTTP and HTTPS](https://aws.amazon.com/pt/compare/the-difference-between-https-and-http/);
- [Wikipedia about HTTPS](https://pt.wikipedia.org/wiki/Hyper_Text_Transfer_Protocol_Secure);
- [CloudFlare about HTTPS](https://www.cloudflare.com/pt-br/learning/ssl/what-is-https/);

---
## Internet Control Message Protocol (ICMP)

### Descrição

O *Internet Control Message Protocol (ICMP)*, por sua vez, é um protocolo de comunicação usado para enviar mensagens de controle e erro entre dispositivos de rede. Ele opera na Camada de Rede (Camada 3) do modelo OSI, a camada responsável pelo roteamento de pacotes de dados entre redes. O ICMP é fundamental para o diagnóstico e resolução de problemas de rede, sendo amplamente utilizado em ferramentas como o ping e traceroute, que ajudam a verificar a conectividade e rastrear o caminho dos pacotes na rede.

O ICMP não é utilizado para a transferência de dados de usuário, mas sim para a comunicação de controle entre dispositivos. Ele permite que roteadores e hosts informem sobre erros de entrega, como pacotes não encontrados ou falhas de rede, e forneçam informações sobre a rede, como latência e a rota que os pacotes estão seguindo. Um exemplo típico de mensagem ICMP é o "Destination Unreachable" (destino inalcançável), enviado quando um pacote não pode chegar ao destino. Embora o ICMP seja essencial para o diagnóstico da rede, ele também pode ser usado em ataques como o DoS (Denial of Service), se não for gerenciado corretamente.

### Referências

- [Amazon AWS about ICMP](https://aws.amazon.com/pt/what-is/icmp/);
- [CloudFlare about ICMP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/internet-control-message-protocol-icmp/);
- [Fortinet about ICMP](https://www.fortinet.com/br/resources/cyberglossary/internet-control-message-protocol-icmp);
- [Wikipedia about ICMP](https://pt.wikipedia.org/wiki/Internet_Control_Message_Protocol);

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
## Message Queuing Telemetry Transport (MQTT)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Message Queuing Telemetry Transport (MQTT)* é um protocolo de comunicação leve e eficiente para transferência de dados em redes com baixa largura de banda ou conectividade instável. Muito utilizado em IoT (Internet of Things), ele permite que dispositivos se comuniquem por meio de um modelo de publicação e assinatura, onde dados são publicados em tópicos e assinantes podem receber as atualizações desses tópicos.

Operando na camada de aplicação do modelo OSI (Camada 7), o MQTT é utilizado em cenários onde a largura de banda é limitada e o consumo de energia precisa ser mínimo, como em dispositivos IoT que monitoram condições ambientais ou enviam informações para sistemas centrais.

### Referências

- [Wikipedia about MQTT](https://en.wikipedia.org/wiki/MQTT);
- [MQTT official website](https://mqtt.org/);
- [GeeksForGooks about MQTT](https://www.geeksforgeeks.org/introduction-of-message-queue-telemetry-transport-protocol-mqtt/);
- [Amazon AWS about MQTT](https://aws.amazon.com/what-is/mqtt/);

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
## Prontuário Eletrônico do Paciente (PEP)

Autor: [Leonardo Pangaio][1] - Data:

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
## Streaming Text Oriented Messaging Protocol (STOMP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-08

### Descrição

O *Streaming Text Oriented Messaging Protocol (STOMP)* é um protocolo de mensagens simples e orientado a texto que permite que diferentes sistemas e aplicações se comuniquem via mensagens. Ele é frequentemente utilizado para comunicação assíncrona em sistemas de mensageria e é suportado por brokers como RabbitMQ e ActiveMQ. STOMP permite a comunicação entre sistemas heterogêneos usando uma interface baseada em texto, o que simplifica sua implementação.

STOMP opera na camada de aplicação do modelo OSI (Camada 7) e é utilizado em sistemas que exigem troca de mensagens em tempo real ou em comunicações baseadas em filas, como em chatbots, monitoramento de sistemas e notificações em tempo real.

### Referências

- [Wikipedia about STOMP](https://en.wikipedia.org/wiki/Streaming_Text_Oriented_Messaging_Protocol);
- [GeeksForGeeks about STOMP](https://www.geeksforgeeks.org/stomp-protocol/);

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
## User Datagram Protocol (UDP)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-06

### Descrição

O *User Datagram Protocol (UDP)*, por sua vez, também opera na Camada de Transporte (Camada 4) do modelo OSI, mas de uma maneira diferente do TCP. Ao contrário do TCP, o UDP é um protocolo não orientado à conexão, o que significa que ele envia dados sem verificar se o destinatário recebeu corretamente ou se houve falhas na transmissão. Ele é ideal para situações que exigem rapidez e onde a perda de alguns pacotes de dados não compromete a aplicação, como em transmissões de vídeo ao vivo, chamadas VoIP ou jogos online.

Apesar de sua falta de confiabilidade, o UDP é mais rápido do que o TCP, pois não realiza o processo de handshake nem o controle de fluxo. A Camada de Transporte, onde o UDP está posicionado, é responsável por gerenciar a comunicação entre sistemas de forma eficiente, e o UDP é uma escolha comum quando o desempenho em tempo real é mais importante que a precisão na entrega dos dados.

### Referências

- [CloudFlare about UDP](https://www.cloudflare.com/pt-br/learning/ddos/glossary/user-datagram-protocol-udp/);
- [Wikipedia about UDP](https://pt.wikipedia.org/wiki/Protocolo_de_datagrama_do_usu%C3%A1rio);
- [IBM about UDP](https://www.ibm.com/docs/pt-br/aix/7.3?topic=protocols-user-datagram-protocol);

<!-- término glossário -->

## Referências Gerais

- [MDN Web Docs Glossary](https://developer.mozilla.org/en-US/docs/Glossary)

<!-- Bloco de perfis -->
[1]: https://www.linkedin.com/in/leonardo-pangaio/