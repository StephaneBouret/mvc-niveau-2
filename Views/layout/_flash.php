<?php foreach (($this->getFlashes() ?? []) as $type => $messages): ?>
    <?php foreach ($messages as $message): ?>
        <div class="alert alert-<?= htmlspecialchars($type) ?>">
            <?= htmlspecialchars($message) ?>
        </div>
    <?php endforeach; ?>
<?php endforeach; ?>