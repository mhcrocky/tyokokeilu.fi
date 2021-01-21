<?php
namespace  Modules\Job;
use Modules\Core\Abstracts\BaseSettingsClass;
use Modules\Core\Models\Settings;
class SettingClass extends BaseSettingsClass
{
    public static function getSettingPages()
    {
        return [
            [
                'id'   => 'job',
                'title' => __("Job Settings"),
                'position'=>20,
                'view'=>"Job::admin.settings.job",
                "keys"=>[
                    'job_disable',
                    'job_page_search_title',
                    'job_page_search_banner',
                    'job_layout_search',
                    'job_layout_item_search',
                    'job_category_show_in_listing_page',
                    'job_location_search_style',
                    'job_page_limit_item',
                    'job_enable_review',
                    'job_review_approved',
                    'job_enable_review_after_booking',
                    'job_review_number_per_page',
                    'job_review_stats',
                    'job_page_list_seo_title',
                    'job_page_list_seo_desc',
                    'job_page_list_seo_image',
                    'job_page_list_seo_share',
                    'job_booking_buyer_fees',
                    'job_vendor_create_service_must_approved_by_admin',
                    'job_allow_vendor_can_change_their_booking_status',
                    'job_search_fields',
                    'job_map_search_fields',
                    'job_allow_review_after_making_completed_booking',
                    'job_deposit_enable',
                    'job_deposit_type',
                    'job_deposit_amount',
                    'job_deposit_fomular',
                ],
                'html_keys'=>[
                ]
            ]
        ];
    }
}
