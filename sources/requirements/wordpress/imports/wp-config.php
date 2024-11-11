<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'V]IsdT91#)(VV]aPaF)B-ut|XH]v-w-+b#|H(&PGG(nvc|*X~?Ws@516oZDNkf#}');
define('SECURE_AUTH_KEY',  '05p2r?}p3CpPCnhr8Eh~!ywX( ^}-h$+mE#{U:22:O{a,K[]U[KtG/9)[r=koce6');
define('LOGGED_IN_KEY',    '$F`QBcB G%GEtARRKU-<})O@it A.Rt]KN1NRt^1v$rAbjkT~r-(V-IxT=|}N&bP');
define('NONCE_KEY',        '$F:85jPwGMGu^[3QsCrw{qhX[]:vEOe>Rgh=?*UA_s`AOq_{`]<j,55vsPL5F`+k');
define('AUTH_SALT',        'K)[n.C~>9IRe`G%M5-cn{EZwiV/rhWy9q#!8d{h=e3#+5-:/Q#)(~)GcYMMNO<#0');
define('SECURE_AUTH_SALT', '43o^l5<Gy3B#!<;xike@|Fj7hh-.!Z7GqL,_<]~$Hn?a+3|&r[CQs)FsTpw|l=0N');
define('LOGGED_IN_SALT',   'jhE~$0?e@To_v}u-24.JtN|g#D[Bo2K3g!&%v=:e|HIIYF4Y}I#TY)+9HS^#|c/j');
define('NONCE_SALT',       'zDqMF4M_H!XCb^.}z08e`X-|c&JKT|~ckCZyYdQe5)dzp{w[eARFyKK!+cuY`a8x');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
