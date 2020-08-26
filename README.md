# Learn IAC with Terraform and Atlantis

### What's Terraform  ? 

Terraform is a tool to manage cloud providers by using a config file (it has its own syntax or DSL to define the configuration).

### What's Atlantis ? 
Atlantis is an application for automating Terraform via pull requests. It is deployed as a standalone application into your infrastructure. No third-party has access to your credentials.

#### Deskripsi
Atlantis pada project ini menggunakan docker image runatlantis/atlantis, dan dilakukan setup ENV untuk setup github dan aws. 
Anda dapat melakukan konfigurasi kustom pada .env sesuai dengan dokmentasi atlantis pada link [berikut](https://www.runatlantis.io/docs/configuring-atlantis.html#flags) 
Secara default atlantis akan berjalan pada port 4141.

pada project ini dikarenakan atlantis di deploy pada local, maka agar atlantis dapat dipanggil dengan webhooks github maka port 4141 tersebut haruslah dapat diakses.
maka digunakan ngroks untuk mempercepat proses port forwadding ke public hostname. 

Pada repositori ini mencoba terraform menggunakan cloud provider aws. 

untuk melihat contoh atlantis dapat dilihat pada open pull request dan pada pull request [berikut](https://github.com/asaadam/learn-iac/pull/4) 
