<?php

declare(strict_types=1);

use App\Controllers\CreationController;
use App\Controllers\HomeController;

return [
    // Home
    ['GET', '/', [HomeController::class, 'index']],

    // Créations (CRUD)
    ['GET', '/creations', [CreationController::class, 'index']],

    // Create
    ['GET', '/creations/new', [CreationController::class, 'create']], // affiche le formulaire
    ['POST', '/creations/new', [CreationController::class, 'create']], // traite le formulaire

    // Read (par ID)
    ['GET', '/creations/{id}', [CreationController::class, 'showById']],

    // Update
    ['GET', '/creations/{id}/edit', [CreationController::class, 'edit']],
    ['POST', '/creations/{id}/edit', [CreationController::class, 'edit']],

    // Delete
    ['POST', '/creations/{id}/delete', [CreationController::class, 'delete']],

    // Read (par SLUG) : route séparée pour éviter conflit
    ['GET', '/c/{slug}', [CreationController::class, 'showBySlug']],
];
