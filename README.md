#### Desafio de Projeto - [Bootcamp Cloud AWS](https://www.dio.me/bootcamp/bootcamp-cloud-aws?ref=CG&utm_source=youtube&utm_medium=organic&utm_campaign=bootcamp_cloud_aws&utm_content=description) - [DIO](https://www.dio.me/)
# Infraestrutura como Código: Script de Criação de Estruturas de Usuários, Diretórios e Permissões

### Descrição do Desafio 
***Neste projeto iremos criar um [script](https://github.com/Brunarquino/dp01-dio-IaC-linux-baws/blob/main/script.sh) onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente.***

## Especificações do projeto:
### **Diretórios:**

**/publico**

**/adm**

**/ven**

**/sec**

### **Grupos:**

**GRP_ADM**

**GRP_VEN**

**GRP_SEC**

### **Usuários:**

| **Administração** | **Vendas** | **Secretariado** |
| --- | --- | --- |
| carlos | debora | josefina |
| maria | sebastiana | amanda |
| joao | roberto | rogerio |

## **Definições:**

- Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
- Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
- Subir arquivo de script criado para a sua conta no GitHub.

---
### Distribuição utilizado:
Ubuntu 22.04.2 LTS

---

### Comandos para criação e execução do script:
#### ***Criação de diretorios***
```
mkdir [NOME_DO_DIRETORIO]
```
#### ***Criação de grupos***
```
groupadd [NOME_DO_GRUPO]
```
#### ***Criação dos usuarios de cada grupo***
```
useradd carlos -c "[COMENTARIO]" -m -s [SHELL] -p $(openssl passwd [] [SENHA]) -G [GRUPOS]
```
|**opções**|**Descrição**|
|---|---|
|-c, --comment |Comentario sobre o usuario|
|-m, --create-home| Crie o diretório inicial do usuário na pasta home|
|-s, --shell |Especidica  shell que vai ser utilizado|
|-p, --password|Adicionar a senha, criptografada, pra o usuario|
|-G, --groups| Adicionar usuario em grupos|
#### ***Modidificando as permissões dos diretórios***
```
chown [DONO]:[GRUPO] [DIRETORIO_OU_ARQUIVO]
```
#### ***Modidificando as permissões dos diretórios***
```
chmod [PERMISSÃO_DONO][PERMISSÃO_GRUPO][PERMISSÃO_DE_OUTROS] [DIRETÓRIO_OU_ARQUIVO]
```
**Níveis de permissões**
|**Nivel**|**Permisão**|**rwx**|**operação**|
|---|---|---|---|
|0|não tem permissão|---|0 + 0 + 0|
|1|somente execução|--x|0 + 0 + 1|
|2|somente edição|-w-|0 + 2 + 0|
|3|edição e execução|-wx|0 + 2 + 1|
|4|somente leitura|r--|4 + 0 + 0|
|5|leitura e execução|r-x|4 + 0 + 1|
|6|leitura e edição|rw-|4 + 2 + 0|
|7|leitura, execução e edição|rwx|4 + 2 + 1|

|**Permissão**|**Representação**|**Número**|
|---|---|---|
|**Leitura**|**r**|**4**|
|**Gravação**|**w**|**2**|
|**Execução**|**x**|**1**|
|**Nenhuma**| **-**|**0**|

