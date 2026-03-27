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
├──public
├──src
├──vendor
├──Views
├──composer.json
├──README.md
└──.gitignore
```

## 🧪 Améliorations

- API REST
- Système de notification

## 👨‍💻 Auteur

Stéphane — Développeur Web
