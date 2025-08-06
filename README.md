# 🚀 Portfólio Profissional | Junior Fernandes

[![AWS](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![CloudFront](https://img.shields.io/badge/CloudFront-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/cloudfront/)
[![S3](https://img.shields.io/badge/Amazon_S3-569A31?style=for-the-badge&logo=amazon-s3&logoColor=white)](https://aws.amazon.com/s3/)
[![Route53](https://img.shields.io/badge/Route_53-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/route53/)
[![SSL](https://img.shields.io/badge/SSL_Certificate-00C853?style=for-the-badge&logo=letsencrypt&logoColor=white)](https://aws.amazon.com/certificate-manager/)

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.linux.org/)
[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)

---

## 👨‍💼 Carlos Reynaldo Fernandes JUNIOR

**DevOps Engineer (AWS) | SRE | Cloud Solution Architect Specialist | Infraestrutura como Código**

Profissional com **25+ anos** de experiência sólida em infraestrutura e cybersecurity, em transição para **Cloud Computing/DevOps/SRE** com especialização em AWS, Terraform, Kubernetes, Inteligência Artificial e pipelines CI/CD.

Nos últimos 3 anos completei **mais de 30 cursos e certificações** em tecnologias DevOps e Cloud, incluindo formação completa em AWS, Terraform, Kubernetes e pipelines CI/CD.

### 🌐 **Sites Online:**
- **🎯 Portfólio Principal:** [https://app.junior.tec.br](https://app.junior.tec.br)
- **🌟 Site Institucional:** [https://www.junior.tec.br](https://www.junior.tec.br)

### 📞 **Contatos:**
- **💼 LinkedIn:** [junior-fernandes65](https://www.linkedin.com/in/junior-fernandes65/)
- **📂 GitHub:** [crfjunior65](https://github.com/crfjunior65)
- **📄 Currículo:** [Download PDF](CV-JuniorFernandes.pdf)

---

## 🏗️ **Arquitetura AWS Enterprise**

### **📊 Infraestrutura Atual:**

```
👤 Usuário
    ↓
🌐 Route 53 (DNS Management)
    ├── app.junior.tec.br → ☁️ CloudFront Distribution 1 → 📦 S3 Bucket (app.junior.tec.br)
    └── www.junior.tec.br → ☁️ CloudFront Distribution 2 → 📦 S3 Bucket (www.junior.tec.br)
                                        ↑
                            🔒 ACM Certificate (*.junior.tec.br)
```

### **🔧 Componentes Técnicos:**

| Serviço | Recurso | Função | Status |
|---------|---------|---------|---------|
| **Amazon S3** | `app.junior.tec.br` | Hospedagem site principal | ✅ Ativo |
| **Amazon S3** | `www.junior.tec.br` | Hospedagem site institucional | ✅ Ativo |
| **CloudFront** | `E1NP0JAIGM458R` | CDN global + SSL (app) | ✅ Deployed |
| **CloudFront** | `E2LT3WIFY4X4IS` | CDN global + SSL (www) | ✅ Deployed |
| **Route 53** | `junior.tec.br` | Gerenciamento DNS | ✅ Ativo |
| **ACM** | `*.junior.tec.br` | Certificado SSL wildcard | ✅ Válido até 2026 |

### **💰 Otimização de Custos:**

- **Custo Mensal:** ~$1.37/mês (ou $0.51 com Free Tier)
- **Custo Anual:** ~$16.44/ano
- **ROI:** 93% mais barato que soluções equivalentes
- **Escalabilidade:** Ilimitada sem custos fixos adicionais

---

## 🎯 **Sobre o Projeto**

Este portfólio demonstra **expertise prática em AWS** através de uma arquitetura real de produção, destacando:

### **🔥 Competências Técnicas Demonstradas:**

- **☁️ Cloud Architecture:** Arquitetura serverless escalável
- **🔒 Security:** SSL/TLS enterprise com certificados ACM
- **🌐 Networking:** DNS management e CDN global
- **💰 Cost Optimization:** Infraestrutura otimizada para custo mínimo
- **📊 Monitoring:** Troubleshooting e resolução de problemas complexos
- **🔄 Automation:** Deploy automatizado com GitHub Actions
- **📚 Documentation:** Documentação técnica detalhada

### **🛠️ Stack Tecnológico:**

#### **Frontend:**
- HTML5 semântico e acessível
- CSS3 com Flexbox e Grid Layout
- Design responsivo mobile-first
- Font Awesome para iconografia
- Otimização de performance (Lighthouse 95+)

#### **Infrastructure as Code:**
- AWS CLI para automação
- JSON configurations para CloudFront
- S3 bucket policies para segurança
- Route 53 DNS management

#### **CI/CD Pipeline:**
```yaml
# GitHub Actions Workflow
name: Deploy to AWS S3
on:
  push:
    branches: [main]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: aws-actions/configure-aws-credentials@v4
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: us-east-1
      - name: Deploy to S3
        run: |
          aws s3 sync . s3://app.junior.tec.br --delete \
            --exclude ".git/*" --exclude ".github/*" \
            --cache-control "max-age=31536000" \
            --exclude "*.html"
          aws s3 sync . s3://app.junior.tec.br --delete \
            --include "*.html" \
            --cache-control "max-age=3600"
      - name: Invalidate CloudFront
        run: |
          aws cloudfront create-invalidation \
            --distribution-id E1NP0JAIGM458R \
            --paths "/*"
```

---

## 📈 **Casos de Uso Demonstrados**

### **1. 🔧 Troubleshooting Avançado**
- **Problema:** Erro 403 no CloudFront após configuração SSL
- **Diagnóstico:** Loop de redirecionamento (origem apontando para si mesma)
- **Solução:** Correção da origem para endpoint S3 correto
- **Resultado:** Site funcionando com HTTPS em produção

### **2. 💰 Otimização de Custos**
- **Desafio:** Minimizar custos mantendo qualidade enterprise
- **Estratégia:** Certificado wildcard, zona DNS única, Free Tier
- **Resultado:** $1.37/mês para dois sites com SSL e CDN global

### **3. 🚀 Escalabilidade Automática**
- **Arquitetura:** Serverless com auto-scaling
- **Performance:** CDN com 200+ edge locations
- **Disponibilidade:** 99.99% SLA sem gerenciamento de servidores

---

## 📊 **Métricas de Performance**

### **🎯 Lighthouse Scores:**
- **Performance:** 95+ 🟢
- **Accessibility:** 100 🟢
- **Best Practices:** 100 🟢
- **SEO:** 100 🟢

### **🌐 Global Performance:**
- **TTFB:** <200ms (via CloudFront)
- **First Paint:** <1s
- **Largest Contentful Paint:** <2.5s
- **Cumulative Layout Shift:** <0.1

### **💾 Otimizações Implementadas:**
- Compressão Gzip habilitada
- Cache headers otimizados
- Imagens otimizadas (WebP quando possível)
- Minificação de CSS/JS
- Lazy loading para imagens

---

## 📚 **Documentação Técnica**

Este repositório inclui documentação completa para replicação e aprendizado:

### **📋 Guias Disponíveis:**
- **[CLOUDFRONT-SSL-TROUBLESHOOTING.md](CLOUDFRONT-SSL-TROUBLESHOOTING.md)** - Guia completo de troubleshooting
- **[ANALISE-CUSTOS-AWS-MENSAL.md](ANALISE-CUSTOS-AWS-MENSAL.md)** - Análise detalhada de custos
- **[BILLING-MENSAL-DOIS-SITES.md](BILLING-MENSAL-DOIS-SITES.md)** - Billing para infraestrutura dual

### **🔧 Scripts de Automação:**
- **[setup-s3-static-website.sh](setup-s3-static-website.sh)** - Setup automatizado S3
- **[setup-ssl-www.sh](setup-ssl-www.sh)** - Configuração SSL automatizada
- **[monitor-cloudfront.sh](monitor-cloudfront.sh)** - Monitoramento CloudFront

---

## 🎓 **Valor Educacional**

### **💡 Aprendizados Demonstrados:**

1. **AWS Services Integration:** Como integrar S3, CloudFront, Route 53 e ACM
2. **Cost Optimization:** Estratégias para minimizar custos AWS
3. **Security Best Practices:** Implementação de SSL/TLS enterprise
4. **Troubleshooting Skills:** Resolução de problemas complexos de infraestrutura
5. **Documentation:** Criação de documentação técnica profissional

### **🎯 Competências para DevOps/SRE:**

- ✅ **Cloud Architecture Design**
- ✅ **Infrastructure as Code**
- ✅ **Cost Management & Optimization**
- ✅ **Security Implementation**
- ✅ **Monitoring & Troubleshooting**
- ✅ **CI/CD Pipeline Design**
- ✅ **Technical Documentation**

---

## 🚀 **Próximos Passos**

### **🔄 Roadmap Técnico:**

1. **Terraform Implementation:** Migrar configuração para IaC
2. **Monitoring Stack:** Implementar CloudWatch + Grafana
3. **Security Hardening:** Adicionar AWS WAF e Shield
4. **Multi-Environment:** Criar ambientes dev/staging/prod
5. **API Integration:** Adicionar backend serverless (Lambda + API Gateway)

### **📈 Expansão da Arquitetura:**

```
Futuro: Arquitetura Completa
├── 🔌 API Gateway
├── ⚡ AWS Lambda
├── 🗄️ DynamoDB
├── 🛡️ AWS WAF
└── 📊 CloudWatch

Atual: Sites Estáticos
├── ☁️ CloudFront
├── 📦 S3
└── 🌐 Route 53
```

---

## 🏆 **Reconhecimentos**

Este projeto demonstra **expertise prática em AWS** através de:

- **Arquitetura Real:** Infraestrutura de produção funcionando
- **Otimização de Custos:** ROI excepcional ($16/ano para infraestrutura enterprise)
- **Documentação Completa:** Guias técnicos detalhados
- **Troubleshooting Avançado:** Resolução de problemas complexos
- **Best Practices:** Implementação seguindo padrões AWS Well-Architected

---

## 📞 **Contato Profissional**

**Carlos Reynaldo Fernandes Junior**  
*DevOps Engineer (AWS) | SRE | Cloud Solution Architect*

- 🌐 **Sites:** [app.junior.tec.br](https://app.junior.tec.br) | [www.junior.tec.br](https://www.junior.tec.br)
- 💼 **LinkedIn:** [junior-fernandes65](https://www.linkedin.com/in/junior-fernandes65/)
- 📂 **GitHub:** [crfjunior65](https://github.com/crfjunior65)
- 📧 **Email:** Disponível via LinkedIn

---

*"Transformando 25+ anos de experiência em infraestrutura tradicional em expertise moderna de Cloud Computing e DevOps, com foco em soluções AWS escaláveis e otimizadas."*

**#AWS #DevOps #SRE #CloudArchitecture #InfrastructureAsCode #CostOptimization**
