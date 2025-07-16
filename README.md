## Portifolio -  Junior Fernandes



DevOps Engineer(AWS) | SRE | Cloud Solution Arquitect Specialist AWS | Infraestrutura como Código | AWS | Linux

### Carlos Reynaldo Fernandes JUNIOR
- Em 07/2025

Profissional com 25+ anos(Solidos Conhecimentos) em infraestrutura e cybersecurity, migrando para Cloud Computing/DevOps/SRE com especialização em AWS, Terraform, Kubernetes, Inteligencia Artificial e pipelines CI/CD.

- Contato 
    - LinkedIn(https://www.linkedin.com/in/junior-fernandes65/) 
    - GitHub Versel(https://portifolio-zeta-peach-59.vercel.app/#)

Infraestrutura → Cloud Computing/DevOps/SRE

Profissional sênior em transição de carreira, combinando vasta experiência em infraestrutura on-premise com conhecimentos modernos em cloud computing e automação.

Nos últimos 3 anos completei mais de 30 cursos e certificações em tecnologias DevOps e Cloud, incluindo formação completa em AWS, Terraform, Kubernetes e pipelines CI/CD.

AWS | Terraform | Kubernetes | Docker | GitHub | Inteligencia Artificial

---

## 🚀Portfólio Profissional | Junior Fernandes

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)

[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.linux.org/)

[![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)](https://www.ansible.com/)
[![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=jenkins&logoColor=white)](https://www.jenkins.io/)
[![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)](https://prometheus.io/)
[![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)](https://grafana.com/)

DevOps | SRE | Cloud Solution Arquitect Specialist AWS | Infraestrutura como Código | AWS | Linux


[🔗 Acesse o site online](https://app.junior.tec.br)  
[📄 Baixe o currículo (PDF)](CV-JuniorFernandes.pdf)  
[💼 LinkedIn](https://linkedin.com/in/junior-fernandes65) • [📂 GitHub](https://github.com/crfjunior65)

---

## 👨‍💻 Sobre o Projeto

Este portfólio foi desenvolvido com foco na apresentação profissional da minha transição de carreira de Infraestrutura para **DevOps/SRE com especialização em AWS**, utilizando práticas modernas de automação, infraestrutura como código e CI/CD.

Construído em **HTML5 + CSS3 puro**, com design responsivo e foco em performance, o portfólio destaca:

- 🌐 Minha trajetória profissional e conquistas
- 📊 Habilidades técnicas com AWS, Terraform, Docker, Kubernetes e GitHub Actions
- 🔧 Projetos reais de Infraestrutura como Código e CI/CD
- 📜 Certificações e formação acadêmica

---

## 🛠️ Tecnologias Utilizadas

- HTML5
- CSS3 com Flexbox e Grid Layout
- Font Awesome (ícones)
- GitHub Actions (pipeline de deploy)
- AWS S3 (hospedagem estática)
- Git + GitHub

---

## 🔄 Deploy Automatizado

Este portfólio é publicado automaticamente em um bucket S3 sempre que há push na branch `main`, utilizando o GitHub Actions:

```yaml
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
      - run: aws s3 sync . s3://meu-site-s3 --delete --exclude ".git/*" --exclude ".github/*" --acl public-read

