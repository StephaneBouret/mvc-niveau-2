# 🧑‍🎓 MVC Niveau 2

Application de gestion de créations visuelles développée en **PHP** en architecture **MVC**

## Objectif

Ce projet a été réalisé dans le cadre d'un exercice pédagogique afin de :

- comprendre le pattern MVC
- sécuriser une application PHP
- implémenter un CRUD complet

## ⚙️ Fonctionnalités

## 🧰 Stack technique

- PHP 8
- MySQL
- Composer
- Architecture MVC maison
- Bootstrap 5

## 🚀 Installation

Etape 1 **Cloner le projet**

``` Bash
git clone https://github.com/StephaneBouret/mvc-niveau-2.git
cd mvc-niveau-2
```

Etape 2 **Installer les dépendances**

``` Bash
composer install
```

Etape 3 **Configurer le fichier `.env`**

Etape 4 **Lancer le serveur**

``` Bash
php -S localhost:8000 -t public
```

## 🔐 Sécurité

- Mots de passe hashés avec `password_hash()`
- Protection CSRF sur les formulaires
- Requêtes préparées PDO

## 📁 Structure du projet

``` Bash
mon-mvc
├──config
│   ├──bootstrap.php
│   └──routes.php
├──public
│   ├──assets
│   │   ├──img
│   │   │   └──creations
│   │   ├──js
│   │   │   ├──modules
│   │   │   │   └──creation-search.js
│   │   │   └──app.js
│   │   └──vendor
│   │   │   ├──bootstrap
│   │   │   │   ├──css
│   │   │   │   └──js
│   │   │   └──bootstrap-icons
│   └──index.php
├──src
│   ├──Controllers
│   │   ├──AdminUserController.php
│   │   ├──AuthController.php
│   │   ├──Controller.php
│   │   ├──CreationController.php
│   │   ├──DashboardController.php
│   │   ├──HomeController.php
│   │   └──PasswordResetController.php
│   ├──Core
│   │   ├──Csrf.php
│   │   ├──DB.php
│   │   └──Router.php
│   ├──Entities
│   │   ├──Creation.php
│   │   ├──DashboardStats.php
│   │   ├──Entity.php
│   │   └──User.php
│   ├──Models
│   │   ├──CreationModel.php
│   │   ├──DashboardModel.php
│   │   ├──LoginAttemptModel.php
│   │   ├──Model.php
│   │   └──UserModel.php
│   ├──Security
│   │   └──Roles.php
│   └──Service
│   │   ├──AuthService.php
│   │   ├──FormValidator.php
│   │   ├──ImageUploader.php
│   │   ├──PasswordResetService.php
│   │   ├──PasswordService.php
│   │   └──PasswordValidator.php
├──vendor
├──Views
│   ├──admin_user
│   │   ├──edit.php
│   │   └──index.php
│   ├──auth
│   │   ├──forgot_password.php
│   │   ├──login.php
│   │   ├──register.php
│   │   └──reset_password.php
│   ├──creation
│   │   ├──_form.php
│   │   ├──create.php
│   │   ├──edit.php
│   │   ├──index.php
│   │   └──show.php
│   ├──dashboard
│   │   └──index.php
│   ├──errors
│   │   ├──403.php
│   │   ├──404.php
│   │   ├──405.php
│   │   └──500.php
│   ├──home
│   │   └──index.php
│   ├──layout
│   │   ├──_flash.php
│   │   └──base.php
│   └──partials
│   │   ├──_footer.php
│   │   └──_nav.php
├──composer.json
├──README.md
└──.gitignore
```

## 🧪 Améliorations

- API REST
- Système de notification

## 👨‍💻 Auteur

Stéphane — Développeur Web
