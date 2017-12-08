ALTER TABLE `ims_weisrc_dish_stores`
ADD COLUMN `is_dada`  TINYINT(1) NULL DEFAULT 0 COMMENT '达达配送';


ALTER TABLE `ims_weisrc_dish_setting`
ADD COLUMN `dada_appid`   VARCHAR(200) DEFAULT '' COMMENT '达达配送appid',
ADD COLUMN `dada_key`   VARCHAR(200) DEFAULT '' COMMENT '达达配送key';