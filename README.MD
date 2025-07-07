# IZP Token (IngressoZapp Token) 🎟️

**IZP** é o token oficial da plataforma [IngressoZapp](https://ingressozapp.com), criado para conectar pessoas a experiências únicas por meio da tecnologia blockchain. Este repositório contém o contrato inteligente do token na rede Polygon, seguindo o padrão BEP20/ERC20.

---

## 📌 Sobre o Projeto

O IngressoZapp nasceu em 2020 em Campo Grande/MS e se tornou a maior plataforma de venda de ingressos do estado, com presença nacional. O token IZP foi criado com os seguintes objetivos:

- Financiar o crescimento da plataforma
- Oferecer vantagens exclusivas para holders
- Integrar blockchain e eventos reais
- Tornar a experiência de compra mais segura, transparente e gamificada

---

## 🔐 Especificações Técnicas

| Item              | Valor                        |
|-------------------|------------------------------|
| Nome              | IngressoZapp Token           |
| Símbolo           | IZP                          |
| Padrão            | BEP20 / ERC20                |
| Rede              | Polygon (Mainnet ou Testnet) |
| Decimais          | 18                           |
| Supply Total      | 5.000.000 IZP                |
| Linguagem         | Solidity ^0.8.20             |
| Framework         | OpenZeppelin + Hardhat       |

---

## 📊 Tokenomics Atualizado (sem staking)

| Categoria              | Quantidade     | Porcentagem |
|------------------------|----------------|-------------|
| Venda Pública          | 1,000,000 IZP  | 20%         |
| Equipe e Fundadores    | 1,250,000 IZP  | 25%         |
| Liquidez de Mercado    | 750,000 IZP    | 15%         |
| Fundo de Ecossistema   | 1,250,000 IZP  | 25%         |
| **Total**              | 5,000,000 IZP  | 100%        |

---

## 🔥 Funcionalidades do Contrato

- ✅ Mint total no deploy
- 🔐 `Ownable`: apenas o proprietário pode executar funções administrativas
- 🔥 Queima manual de tokens (`burn()`)
- 🔁 Simulação de recompra e queima (`simulateBuyback()`)

---

## 🚀 Deploy

Este token pode ser implantado na Polygon (Mumbai ou Mainnet) com Hardhat ou Remix.

### Exemplo de deploy com Hardhat:

```bash
npx hardhat run scripts/deploy.js --network polygon
