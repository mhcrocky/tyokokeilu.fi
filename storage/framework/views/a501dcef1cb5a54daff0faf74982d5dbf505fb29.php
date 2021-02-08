<div class="category-list" style="text-align: center">
    <a href="/job?category_id%5B%5D=<?php echo e($row->id); ?>">
        <img src="<?php echo e($row->getImageUrl()); ?>" alt="" srcset="" class="category-image">
        <span class="category-name"><?php echo e($row->name); ?></span>
    </a>
</div>
<style>
    .category-image{
        height: 150px;
        width: 100%;
        border-radius: 30px;
        margin: auto;
    }
</style><?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/blocks/list-job-category/loop.blade.php ENDPATH**/ ?>