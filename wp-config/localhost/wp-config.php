<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'e-magazine');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', 'utf8mb4_general_ci');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'VekvbIR<F<$!H]WW,IW)Q4,<`w!2cE9kx3dMZcYK5c{0k,N;0Or(+];{$ZqDu86K');
define('SECURE_AUTH_KEY',  'vx[y7ShK|#b4gMFI$fABnuCwij#,vy1)`(}wo>kCJn1a6mOgMR5jG|+c=8/i1>d+');
define('LOGGED_IN_KEY',    '-L{>(a6@A7G!Gg}&*;L!b7JWbD30(+N<@]jR`;,QS_$KG?i@0J KJ*GF]}Vf!w?/');
define('NONCE_KEY',        'tSe+&&1tKNy>?%Xh&9!yp/;kMAVUbK>n=b^6qf*pFJq^3_|~v2wu}!P)c[JIG<1|');
define('AUTH_SALT',        '8ed4%[mF%p2iBf;T(_c[MrC/-:*k_QzF^]@em84|%rMV`c$1Lq/u=;D%h9=[NPm8');
define('SECURE_AUTH_SALT', 'qy@{cO$fqW7w3ffe_mf~&Jxg?@M<+v&o.?[3%.PUF<nr7&Wz6%PPz_95(Bh6~H9B');
define('LOGGED_IN_SALT',   'W[UxZhTd7#!t{Tw~{TxYv(=awn5I4];ACd |31#=K9 fFPuVl;Z&bLs7>_.gv@zs');
define('NONCE_SALT',       '.V|ud<04?>{i(.c j2$RHBf#v@#n/&Ts5,wOvzOUo}IP>jh5),u&:IB`bP|m2,Az');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'emag_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */


define('WP_DEBUG', false);
/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/*reglage de securité*/
define ('WP_CONTENT_FOLDERNAME', 'emag-content');
define ('WP_CONTENT_DIR', ABSPATH . WP_CONTENT_FOLDERNAME) ;
define ('WP_CONTENT_URL', 'http://localhost/projets/e-magazine/srcs/'. WP_CONTENT_FOLDERNAME);
define ('WP_PLUGIN_DIR', WP_CONTENT_DIR . '/plugins');
define ('WP_PLUGIN_URL', WP_CONTENT_URL . '/plugins');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');

