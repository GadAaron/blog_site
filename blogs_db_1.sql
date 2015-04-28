-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 11:41 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blogs_db_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE IF NOT EXISTS `bloggers` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bloggers`
--

INSERT INTO `bloggers` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `created_at`, `updated_at`) VALUES
(15, 'Data attributes', 'You can use all Bootstrap plugins purely through the markup API without writing a single line of JavaScript. This is Bootstrap''s first-class API and should be your first consideration when using a plugin.\r\n\r\nThat said, in some situations it may be desirable to turn this functionality off. Therefore, we also provide the ability to disable the data attribute API by unbinding all events on the document namespaced with data-api. This looks like this:', '', '2015-03-25 01:59:16', '2015-03-25 01:59:16'),
(16, 'Programmatic API', 'Version numbers\r\nThe version of each of Bootstrap''s jQuery plugins can be accessed via the VERSION property of the plugin''s constructor. For example, for the tooltip plugin:\r\n\r\nCopy\r\n$.fn.tooltip.Constructor.VERSION // => "3.3.4"\r\nNo special fallbacks when JavaScript is disabled\r\nBootstrap''s plugins don''t fall back particularly gracefully when JavaScript is disabled. If you care about the user experience in this case, use <noscript> to explain the situation (and how to re-enable JavaScript) to your users, and/or add your own custom fallbacks.\r\n\r\nThird-party libraries\r\nBootstrap does not officially support third-party JavaScript libraries like Prototype or jQuery UI. Despite .noConflict and namespaced events, there may be compatibility problems that you need to fix on your own.\r\nTransitions transition.js\r\n\r\nAbout transitions\r\nFor simple transition effects, include transition.js once alongside the other JS files. If you''re using the compiled (or minified) bootstrap.js, there is no need to include this—it''s already there.\r\n\r\nWhat''s inside\r\nTransition.js is a basic helper for transitionEnd events as well as a CSS transition emulator. It''s used by the other plugins to check for CSS transition support and to catch hanging transitions.\r\n\r\nModals modal.js\r\n\r\nModals are streamlined, but flexible, dialog prompts with the minimum required functionality and smart defaults.\r\n\r\nOverlapping modals not supported\r\nBe sure not to open a modal while another is still visible. Showing more than one modal at a time requires custom code.\r\nModal markup placement\r\nAlways try to place a modal''s HTML code in a top-level position in your document to avoid other components affecting the modal''s appearance and/or functionality.\r\nMobile device caveats\r\nThere are some caveats regarding using modals on mobile devices. See our browser support docs for details.\r\nDue to how HTML5 defines its semantics, the autofocus HTML attribute has no effect in Bootstrap modals. To achieve the same effect, use some custom JavaScript:\r\n\r\nCopy\r\n$(''#myModal'').on(''shown.bs.modal'', function () {\r\n  $(''#myInput'').focus()\r\n})\r\nExamples\r\nStatic example\r\nA rendered modal with header, body, and set of actions in the footer.\r\n\r\n×\r\nModal title\r\nOne fine body…\r\n\r\nClose  Save changes\r\n', '', '2015-03-25 04:24:56', '2015-03-25 04:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_18_083906_create_bloggers_table', 1),
('2015_03_19_001638_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloggers`
--
ALTER TABLE `bloggers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloggers`
--
ALTER TABLE `bloggers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
