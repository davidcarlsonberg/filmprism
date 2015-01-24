<?php

/**
 * Template Morsels - Language
 *
 * @package		Solspace:Template Morsels
 * @author		Solspace, Inc.
 * @copyright   Copyright (c) 2009-2014, Solspace, Inc.
 * @link        http://solspace.com/docs/template_morsels
 * @license     http://www.solspace.com/license_agreement
 * @version     1.7.3
 * @filesource	template_morsels/language/english/lang.template_morsels.php
 */

$L = $lang = array(

//----------------------------------------
// Required for MODULES page
//----------------------------------------

"template_morsels_module_name" =>
"Template Morsels",

"template_morsels_module_description" =>
"Greatly improve page performance by pre-processing parts of your templates.",

'template_morsels_module_version' =>
'Template Morsels',

//----------------------------------------
//  Main Menu
//----------------------------------------

'homepage' =>
"Homepage",

'manage_morsels' =>
"Manage Morsels",

'morsel_preferences' =>
"Preferences",

'online_documentation' =>
"Online Documentation",

'Refresh All Morsels' =>
"Refresh All Morsels",

'all_morsels_recached' =>
"All Morsels Recached",

//----------------------------------------
//  Buttons
//----------------------------------------

'save' =>
"Save",

//----------------------------------------
//  Errors
//----------------------------------------

'invalid_request' =>
"Invalid Request",

'template_morsels_module_disabled' =>
"The Template Morsels module is currently disabled.  Please insure it is installed and up to date by going
to the module's control panel in the ExpressionEngine Control Panel",

'disable_module_to_disable_extension' =>
"To disable this extension, you must disable its corresponding <a href='%url%'>module</a>.",

'enable_module_to_enable_extension' =>
"To enable this extension, you must install its corresponding <a href='%url%'>module</a>.",

'cp_jquery_requred' =>
"The 'jQuery for the Control Panel' extension must be <a href='%extensions_url%'>enabled</a> to use this module.",

//----------------------------------------
//  Update routine
//----------------------------------------

'update_template_morsels_module' =>
"Update Template Morsels Module",

'template_morsels_update_message' =>
"You have recently uploaded a new version of Template Morsels, please click here to run the update script.",

"update_successful" =>
"The module was successfully updated.",

"update_failure" =>
"There was an error while trying to update your module to the latest version.",

//----------------------------------------
//  Morsels
//----------------------------------------

'morsels' =>
"Morsels",

'morsels_for_site' =>
"Morsels for Site:",

'no_morsels' =>
"No Template Morsels found for this site.",

'add_morsel' =>
"Add a Morsel",

'edit_morsel' =>
"Edit a Morsel",

'add_morsel_to_site' =>
"Add a Morsel to Site: %site_name",

'edit_morsel_for_site' =>
"Edit a Morsel '%morsel_name' for Site: %site_name",

'usage_notes' =>
"Usage Notes",

'usage_notes_subtext' =>
"Notes to indicate the usage of this morsel and any other information you wish to store about it",

'update' =>
'Update',

'add' =>
'Add',

//----------------------------------------
//  Morsel delete
//----------------------------------------

'delete_morsel_confirm' =>
"Confirm Morsel Deletion",

'morsel_delete_question' =>
"Are you sure you want to delete %i %count?",

'morsel_deleted' =>
"1 morsel was successfully deleted.",

'morsels_deleted' =>
"%i morsels were successfully deleted.",

//----------------------------------------
//  Morsel edit
//----------------------------------------

'morsel_name' =>
"Name",

'morsel_name_subtext' =>
"The name should only contain alpha-numeric characters, underscores, and dashes.",

'prefix' =>
"Prefix",

'variable' =>
"Variable",

'code' =>
"Code",

'morsel' =>
"Morsel",

'cached_morsel' =>
"Cached Morsel",

'click_to_view_cached_morsel' =>
"Click to View Cached Morsel",

'morsel_refresh' =>
"Refresh",

'morsel_refresh_explanation' =>
"Leaving this value at 0 will cause your morsel to only be refreshed by the channel or template update rules below.",

'morsel_template_refresh' =>
"Template Refresh",

'morsel_template_refresh_explanation' =>
"When one of these chosen templates is edited, this morsel will be refreshed.",

'morsel_channel_refresh' =>
"Channel Refresh",

'morsel_channel_refresh_explanation' =>
"When an entry is published or edited in one of these channels, this morsel will be refreshed.",

'morsel_category_refresh' =>
"Category Refresh",

'morsel_category_refresh_explanation' =>
"When a category is created or edited in one of these category groups, this morsel will be refreshed.",

'rows' =>
"rows",

'morsel_site' =>
"Site",

'morsel_refresh_now' =>
"Refresh Now",

'morsel_cron_refreshing' =>
"Cron Refreshing",

'morsel_cron_url' =>
"Cron URL",

'morsel_preparsed_snippet' =>
"Preparsed Snippet",

'morsel_preparsed_unavailable' =>
"Unavailable",

'morsel_preparsed_snippet_subtext' =>
"Allows the Morsel to be used as if it was a native EE Snippet, but with the template data parsed
before being put into the template. It will be cached based on the URI.",

'morsel_next_refresh' =>
"Next Refresh",

'in_minutes' =>
"(in minutes)",

'morsel_name_required' =>
"A name is required for all morsels.",

'morsel_name_invalid' =>
"The name you provided is invalid.",

'morsel_numeric_refresh' =>
"The morsel refresh interval must be numeric.",

'morsel_name_exists' =>
"A morsel by the name of '%name%' already exists. Please choose another.",

'morsel_updated' =>
"Your morsel '%name%' has been updated and refreshed.",

'morsel_added' =>
"Your morsel has been added successfully.",

'all_statuses' =>
"All Statuses",

'on_add_entry_only' =>
'On Add Entry Only',

'on_edit_entry_only' =>
'On Edit Entry Only',

'dynamic_caches_only' =>
'Dynamic Caches Only',

'both_default' =>
'Both (default)',

//----------------------------------------
//  Refresh
//----------------------------------------

'morsel_cache_id_required' =>
"No morsel was indicated for refresh. Please go back and try again.",

'morsel_not_found' =>
"The indicated morsel was not found in the database.",

'morsel_refreshed' =>
"The morsel '%name' has been refreshed. It will next refresh at %refresh.",

// --------------------------------------------
//  Preferences
// --------------------------------------------

'database' =>
"Database",

'redis' =>
"Redis",

'caching_type' =>
"Caching Type",

'save_morsels_as_files' =>
"Save Morsels as Files?",

'save_morsels_as_files_subtext' =>
"Setting this to yes will have a morsel's code saved to the file system as an HTML file, allowing it to be editable.
If the file exists, the module will use it for processing.  If it does not, it will use the code in the database.",

'save_morsels_as_files_path' =>
"Basepath to Morsels File Directory",

'save_morsels_as_files_path_subtext' =>
"Server path to the directory in which the morsel files should be saved. Only necessary if saving morsels as files. Please insure this directory
exists and PHP can write to it.",

'invalid_path_for_save_as_files' =>
"Invalid Path for Save as Files",

'morsel_preferences_updated' =>
"The Template Morsels Preferences have been updated.",

'path_for_save_as_files_cannot_write' =>
"Unable to write to the path for Save as Files",

'unable_to_write_morsel_to_file' =>
"Unable to write the Template Morsel code to file.",

'template_manager_menu_item' =>
"Template Manager Menu Item",

'template_manager_menu_item_subtext' =>
"Enables a menu item in the Template Manager linking back to Template Morsels.",

'redis_servers' =>
"Redis Servers",

'redis_servers_subtext' =>
"Place each server address on its own line.",


// END
''=>''
);