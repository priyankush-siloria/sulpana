<?php
# Database Configuration
define( 'DB_NAME', 'golam_example' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', '' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY',         '|-uq+,hvzD3 >] 8 h><Mt6{dx^l,3$l_!M;mA>IVlcSyJBiFQAfA<u%vV|me$-G');
define('SECURE_AUTH_KEY',  'NV<|~l+HW[>30K+FKuD$ra&(kj;+g-E|~PavPOyp?p-2;y&qnk|#3a|v#27%UQno');
define('LOGGED_IN_KEY',    'AZ=5s7NOE+XW~o  0%h}6[0qr}UU$*t)jQHRLgrG3WN)kj51Ms!TXHO~tK,Fy9?@');
define('NONCE_KEY',        'iN+.6K]ASIhocI)3k6|&~<~bAeH||:veaQ_wpCymmqg@]MJ?x|C-~*kE5~=u~iyp');
define('AUTH_SALT',        '+R+]+6v [f|wPN+F>N!)43hqUK~6g!D91#h-t<&C$iHfc2|JCQAv&mVN7?nn&`v}');
define('SECURE_AUTH_SALT', 'eWH}.Y|I5LCDWC@$5||#^k7!^shyllthYMl!PL =Rn?$]zHDEa/t!je%-LX-:V/%');
define('LOGGED_IN_SALT',   'sp!.Hi3Yhq(5*D@|n4Rnr*b&p(-XV}NsuR`AAd+w0~kF.{xH|YM}$?!>~sp)s,*@');
define('NONCE_SALT',       'm7Dy+%+N00S+PP-p^<m#M|ka=FQ-NsJ2]pMNM5eFf]JN1-KSG^d|D-c5OGIE`y]6');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'buradadev' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

umask(0002);

define( 'WPE_APIKEY', '7eef8c03fa248b9b528ca54fbb1231b2461e0315' );

define( 'WPE_CLUSTER_ID', '140571' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_SFTP_PORT', 2222 );

define( 'WPE_LBMASTER_IP', '' );

define( 'WPE_CDN_DISABLE_ALLOWED', true );

define( 'DISALLOW_FILE_MODS', FALSE );

define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

define( 'WP_POST_REVISIONS', FALSE );

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

$wpe_cdn_uris=array ( );

$wpe_no_cdn_uris=array ( );

$wpe_content_regexs=array ( );

$wpe_all_domains=array ( 0 => 'buradadev.wpengine.com', );

$wpe_varnish_servers=array ( 0 => 'pod-140571', );

$wpe_special_ips=array ( 0 => '34.95.52.95', );

$wpe_netdna_domains=array ( );

$wpe_netdna_domains_secure=array ( );

$wpe_netdna_push_domains=array ( );

$wpe_domain_mappings=array ( );

$memcached_servers=array ( );
define('WPLANG','');

# WP Engine ID


# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', __DIR__ . '/');
require_once(ABSPATH . 'wp-settings.php');
