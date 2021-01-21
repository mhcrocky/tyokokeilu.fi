<?php
namespace Modules\Template;

use Modules\ModuleServiceProvider;

class ModuleProvider extends ModuleServiceProvider
{
    public function boot()
    {
    }
    public function register()
    {
        $this->app->register(RouterServiceProvider::class);
    }

    public static function getTemplateBlocks(){
        return [
            'text'=>"\\Modules\\Template\\Blocks\\Text",
            'video_player'=>"\\Modules\\Template\\Blocks\\VideoPlayer",
            'faqs'=>"\\Modules\\Template\\Blocks\\FaqList",
            'form_search_all_service'=>"\\Modules\\Template\\Blocks\\FormSearchAllService",
            'offer_block'=>"\\Modules\\Template\\Blocks\\OfferBlock",
            'how_it_works'=>"\\Modules\\Template\\Blocks\\HowItWork",
        ];
    }
}