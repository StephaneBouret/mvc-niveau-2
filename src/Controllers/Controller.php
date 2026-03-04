<?php

declare(strict_types=1);

namespace App\Controllers;

abstract class Controller
{
    protected function render(string $view, array $params = [], string $layout = 'layout/base'): void
    {
        extract($params, EXTR_OVERWRITE);

        ob_start();
        require dirname(__DIR__, 2) . "/Views/{$view}.php";
        $content = ob_get_clean();

        require dirname(__DIR__, 2) . "/Views/{$layout}.php";
    }

    protected function redirect(string $url): void
    {
        header('Location: ' . $url, true, 302);
        exit;
    }

    protected function isGranted(string $role): bool
    {
        return isset($_SESSION['user']) && ($_SESSION['user']['role'] ?? null) === $role;
    }

    protected function getUser(): ?array
    {
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }
        return $_SESSION['user'] ?? null;
    }

    protected function requireRole(string $role, string $redirectTo = '/login'): void
    {
        if (!$this->isGranted($role)) {
            $this->redirect($redirectTo);
        }
    }

    protected function setFlash(string $type, string $message): void
    {
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }
        $_SESSION['_flashes'][$type][] = $message;
    }

    protected function getFlashes(): array
    {
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }
        $flashes = $_SESSION['_flashes'] ?? [];
        unset($_SESSION['_flashes']);
        return $flashes;
    }

    protected function abort(int $statusCode = 404, string $message = ''): void
    {
        http_response_code($statusCode);
        if ($statusCode === 404) {
            require APP_ROOT . '/Views/errors/404.php';
            exit;
        }
        if ($statusCode === 403) {
            require APP_ROOT . '/Views/errors/403.php';
            exit;
        }
        echo $message !== '' ? $message : 'Erreur';
        exit;
    }

    protected function redirectBack(string $fallback = '/'): void
    {
        $url = $_SERVER['HTTP_REFERER'] ?? $fallback;
        $this->redirect($url);
    }
}
