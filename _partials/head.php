<!DOCTYPE html>
<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->
<!--[if lt IE 7 ]><html class="no-js ie ie6 ltie7 ltie8 ltie9 ltie10" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie ie7 ltie8 ltie9 ltie10" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie ie8 ltie9 ltie10" lang="en"><![endif]-->
<!--[if IE 9 ]><html lang="en" class="no-js ie ie9 ltie10"> <![endif]-->
<!--[if (gt IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->

<head>
  <meta charset="utf-8">
  <title><?php echo $pageTitle; ?></title>
  <!-- Standard Meta Tags -->
  <meta name="description" content="<?php echo $metaDescription ?>">
  <meta name="author" content="<?php echo $metaAuthor; ?>">
  <meta name="copyright" content="<?php echo date('Y'), ', ', $metaAuthor; ?>">
  <!-- Dublin Core Meta Tags -->
  <meta name="DC.title" content="<?php echo $pageTitle; ?>">
  <meta name="DC.subject" content="<?php echo $metaDescription ?>">
  <meta name="DC.creator" content="<?php echo $metaAuthor, ', ', $metaDeveloper; ?>">
  <!-- Facebook Sharing Meta Tags -->
  <meta property="og:title" content="<?php echo $pageTitle; ?>">
  <meta property="og:description" content="<?php echo $metaDescription; ?>">
  <meta property="og:image" content="<?php echo $siteUrl; ?>assets/img/fav/facebook.png">
  <meta property="og:url" content="<?php echo $siteUrl, $pageFile; ?>">
  <!-- Browser Meta Tags -->
  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
  <meta content="false" http-equiv="imagetoolbar">
  <meta content="on" http-equiv="cleartype">
  <!-- Mobile Optimization Meta Tags -->
  <meta content="True" name="HandheldFriendly">
  <meta content="320" name="MobileOptimized">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <!-- Style Sheets -->
  <link href="<?php echo $siteUrl; ?>assets/css/style.css" rel="stylesheet" type="text/css">
  <!-- Platform Detection -->
  <script>
    var b = document.documentElement;
    b.setAttribute('data-useragent',  navigator.userAgent);
    b.setAttribute('data-platform', navigator.platform );
  </script>
  <!-- Site Scripts -->
  <script src="<?php echo $siteUrl; ?>assets/js/modernizr.js"></script>
  <!-- Favicons -->
  <link href="<?php echo $siteUrl; ?>assets/img/fav/apple-touch-icon-144.png" rel="apple-touch-icon-precomposed" sizes="144x144">
  <link href="<?php echo $siteUrl; ?>assets/img/fav/apple-touch-icon-114.png" rel="apple-touch-icon-precomposed" sizes="114x114">
  <link href="<?php echo $siteUrl; ?>assets/img/fav/apple-touch-icon-72.png" rel="apple-touch-icon-precomposed" sizes="72x72">
  <link href="<?php echo $siteUrl; ?>assets/img/fav/apple-touch-icon-precomposed.png" rel="apple-touch-icon-precomposed">
  <link href="<?php echo $siteUrl; ?>assets/img/fav/favicon.ico" rel="shortcut icon">
  <!-- Canonical Link -->
  <link content="<?php echo $siteUrl, $pageFile; ?>" rel="canonical">
</head>

<body id="<?php echo $bodyId; ?>">