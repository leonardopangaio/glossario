# Time to Live (TTL)

Autor: [Leonardo Pangaio][1] - Data: 2024-11-10

## Descrição

*Time to Live (TTL)* é um valor em redes de computadores que indica o tempo máximo de "vida" de um pacote de dados. A cada roteador que um pacote atravessa, o TTL é decrementado em uma unidade, e quando atinge zero, o pacote é descartado, evitando loops infinitos na rede. Esse valor é muito importante para a eficiência da rede, garantindo que pacotes não fiquem circulando indefinidamente e ocupando largura de banda.

O TTL é uma característica presente na Camada 3 (Rede) do modelo OSI, onde é aplicado em protocolos como o IP (Internet Protocol). No caso de protocolos de rede como o DNS, o TTL também é usado para definir o tempo que um registro pode ser mantido em cache, otimizando o acesso a informações.

## Referências

- [Cloudflare about TTL](https://www.cloudflare.com/pt-br/learning/cdn/glossary/time-to-live-ttl/);
- [Wikipedia about TTL](https://en.wikipedia.org/wiki/Time_to_live);
- [Fortinet about TTL](https://www.fortinet.com/resources/cyberglossary/what-is-ttl);
- [IBM about TTL](https://www.ibm.com/topics/time-to-live);