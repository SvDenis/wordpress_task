<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'test_wordpress');

/** Имя пользователя MySQL */
define('DB_USER', 'test_wp_user');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'qwerty');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~n9oL-!3Iw3Mk_2%ql}fw%]R_y7s4HS)O%o!P)l&7K^M2V>Xx>MIOF7$%Mb}Zx2>');
define('SECURE_AUTH_KEY',  'H9TX_3kVP>f4(,W)3NL*v-uOEmS:DZJ,=ond>m9FBWwN&]>mKTZ1Z!:cGNQ3NX2m');
define('LOGGED_IN_KEY',    'H@F).Ei{i(qOQTr.]qq!8dh!,F(k*r8|=<t7iBiHx}Bs{b7 h19@~Wl--Mv>^h0l');
define('NONCE_KEY',        'ahD6Vt;1(t/2~h}JoXq.:a|vvGw~hZW^<3Xl/KKRHO&m!EVEryuv&$ZG`OP3Hwof');
define('AUTH_SALT',        '%UAOH)P$3qXkaGqU:+_ZH|6?$!7>[KboC%ak>}E<Fi,xks:d@7 A.X@Md h2ipd_');
define('SECURE_AUTH_SALT', 'C}Z|tpo<paznn=s3Ys7Qb==F0# !98]b2>zLOOgipv+`n)rgfv?B@H:`aLp_?+Ld');
define('LOGGED_IN_SALT',   '7XBrA}bf.*?9G5_bx9V4s#@w=gX)P!#g+&7&m&F-:G8ULCOXk.|Ah#vK@CfY,3LD');
define('NONCE_SALT',       'qNG=ZJ]Sp*1vqr<pi{,POl:C.tK)0&7#yM =o9;VcZ0/)Wn6U<CQ#iOdhKz@.[k6');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
