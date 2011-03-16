ALTER TABLE `PREFIX_stock_mvt_reason` ADD `sign` TINYINT(1) NOT NULL AFTER `id_stock_mvt_reason`;
UPDATE `PREFIX_stock_mvt_reason` SET `sign`=-1;
UPDATE `PREFIX_stock_mvt_reason` SET `sign`=1 WHERE `id_stock_mvt_reason`=3;
UPDATE `PREFIX_stock_mvt_reason` SET `id_stock_mvt_reason`=`id_stock_mvt_reason`+2 ORDER BY `id_stock_mvt_reason` DESC;
UPDATE `PREFIX_stock_mvt` SET `id_stock_mvt_reason`=`id_stock_mvt_reason`+2;
UPDATE `PREFIX_stock_mvt_reason_lang` SET `id_stock_mvt_reason`=`id_stock_mvt_reason`+2 ORDER BY `id_stock_mvt_reason` DESC;
INSERT INTO `PREFIX_stock_mvt_reason` (`id_stock_mvt_reason` ,`sign` ,`date_add` ,`date_upd`) VALUES ('1', '1', NOW(), NOW()), ('2', '-1', NOW(), NOW());
INSERT INTO `PREFIX_stock_mvt_reason_lang` (`id_stock_mvt_reason` ,`id_lang` ,`name`) VALUES ('1', '1', 'Increase'), ('1', '2', 'Augmenter'), ('1', '3', 'Increase'), ('1', '4', 'Increase'),('1', '5', 'Increase'), ('2', '1', 'Decrease'), ('2', '2', 'Diminuer'), ('2', '3', 'Decrease'), ('2', '4', 'Decrease'), ('2', '5', 'Decrease');