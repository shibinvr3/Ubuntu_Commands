scp -r ec2-user@3.10.137.12:/var/www/htdocs/staging2.futureshop.co.uk/dump.tar.gz /home/yatnam/Documents/futureshop/


DROP DATABASE fsh_m2;

CREATE DATABASE fsh_m2;

sed -i 's/`futurePHvb`@`localhost`/`root`@`localhost`/g' futureshop-m2_.sql

sed -i 's/`futurePHvb`@`localhost`/`fsh_m1`@`localhost`/g' futureshop_m1_6_jan_2020.sql

sed 's/futurePHvb' futureshop_m1_6_jan_2020.sql

sed -n 14486p futureshop-m2_.sql

sed -n 's/futurePHvb/fsh_m1/p' futureshop_m1_6_jan_2020.sql

sed -n 's/.*\(futurePHvb\).*/\1/p' futureshop_m1_6_jan_2020.sql

sudo php bin/magento config:set web/unsecure/base_url http://staging2.futureshop.co.uk/
sudo php bin/magento config:set web/secure/base_url https://staging2.futureshop.co.uk/

#Extract tar
tar -xvf file.tar

tar -xvf futureshop_m1_8_jan_2020.tar.gz

rsync -avhe ssh futureshopcouk2twe5r@31.193.7.152 -p 2020 futureshopcouk2twe5r: /var/www/vhosts/futureshop.co.uk-nowebtise/media/ibanners /home/yatnam/Document/futureshop/

#compress tar
tar -czvf media.tar.gz media --exclude='./cache' --exclude='./product/cache' --exclude='./catalog/product/cache'
tar -pczf media.tar.gz media --exclude "/var/www/vhosts/futureshop.co.uk-nowebtise/media/cache" --exclude='/var/www/vhosts/futureshop.co.uk-nowebtise/product/cache' --exclude='/var/www/vhosts/futureshop.co.uk-nowebtise/catalog/product/cache'   


wget https://futureshop.co.uk/media/catalog/files.tar.gz

rsync -avhe ssh futureshopcouk2twe5r@31.193.7.152 -p 2020 futureshopcouk2twe5r: /var/www/vhosts/futureshop.co.uk-nowebtise/media /home/

rsync -avhe ssh futureshopcouk2twe5r@31.193.7.152 -p 2020 futureshopcouk2twe5r: /var/www/vhosts/futureshop.co.uk-nowebtise/media /home/

rsync -arvz -e 'ssh -p 2020' --exclude 'cahce'  --progress futureshopcouk2twe5r@31.193.7.152:/var/www/vhosts/futureshop.co.uk-nowebtise/media/catalog/product /home/yatnam/Documents/futureshop/

# Take only product folder without cache
tar -czvf media.tar.gz final_file_for_amasty_import_staging.csv --exclude 'cache'



php bin/magento setup:static-content:deploy en_GB -f

php -dmemory_limit=10g bin/magento setup:static-content:deploy en_US en_GB -f 

 
find . -type f -not -name 'exe_*' -exec mv {} /home/yatnam/Documents/futureshop/M2/Move_amasty_files \;

find . -type f -not -name 'exe_*' -exec mv {} /opt/lampp/htdocs/futureshop-m2/pub/media/amasty/amfile/import/ftp \;

wget https://futureshop.co.uk/media/catalog/files.tar.gz
SELECT bubble_attachment.product_id,bubble_attachment.link_file,catalog_product_entity.sku FROM bubble_attachment JOIN catalog_product_entity ON bubble_attachment.product_id=catalog_product_entity.entity_id WHERE `link_type` LIKE 'file' INTO OUTFILE '/home/yatnam/Documents/futureshop/bubble_attachment_data.csv' FIELDS ENCLOSED BY '"' TERMINATED BY ';' ESCAPED BY '"' LINES TERMINATED BY '\r\n';


tar -czvf futureshop-db.tar.gz futureshop-m2
tar -czvf _.sql

scp -r /home/yatnam/Documents/futureshop/futurem1.tar.gz ubuntu@ec2-3-8-114-149.eu-west-2.compute.amazonaws.com:


find . -type f -not -name 'exe_*' -exec mv {} /var/www/htdocs/staging2.futureshop.co.uk/http/pub/media/amasty/amfile/import/ftp \;


tar -czvf /var/www/vhosts/futureshop.co.uk-nowebtise/media/m1_db.tar.gz 

#staging db backup
mysqldump -u fsh_m2 -p fsh_m2 > dump.sql

mysqldump -u fsh_m1 -p fsh_m1 > backup_m1_c.sql

rsync -avhe ssh futureshopcouk2twe5r@31.193.7.152 -p 2020 futureshopcouk2twe5r: /var/www/vhosts/futureshop.co.uk/ /home/yatnam/Documents/futureshop/


scp -r futureshopcouk2twe5r@31.193.7.152 -p 2020 futureshopcouk2twe5r:/var/www/vhosts/futureshop.co.uk/futureshop_m1_6_jan_2020.sql /home/yatnam/Documents/futureshop/

tar -czvf 


scp -r amasty_blog.sql ec2-user@3.10.137.12:/var/www/htdocs/staging2.futureshop.co.uk/

composer require "onestepcheckout/iosc:1.2.031"




scp -r /opt/lampp/htdocs/futureshop-m2/pub/media/wysiwyg ec2-user@3.10.137.12:var/www/htdocs/staging2.futureshop.co.uk/http/pub/media/


wget https://futureshop.co.uk/media/futureshop_m1_6_jan_2020.tar.gz


sudo chown -R yatnam:group futureshop-m1-master

tar -xvf futureshop_m1_8_jan_2020.tar.gz


scp -r ubuntu@ec2-3-8-114-149.eu-west-2.compute.amazonaws.com:backup_m1_c.tar.gz /home/yatnam/Documents/futureshop/ 


scp -r /home/yatnam/Documents/futureshop/backup_m1_c.tar.gz futureshop-ssh@3.11.23.245:/home/cloudpanel/htdocs/www.futureshop.co.uk/


php bin/magento admin:user:create --admin-user=shibin --admin-password=shibin12 --admin-email=shibinvr.3@gmail.com --admin-firstname=Shibin --admin-lastname=Bro

mysql -u futureshop-m1 -p futureshop-m1 < backup_m1_c.sql  -h futureshop.cluster-c2rrx2u49hov.eu-west-2.rds.amazonaws.com

data-migration-tool/etc/opensource-to-opensource/1.9.3.10/


/home/cloudpanel/htdocs/bkup