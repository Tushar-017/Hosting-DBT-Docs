create or replace view `hive_metastore`.`dvd_rental_new`.`customer_details_dim_new`
  
  
  as
    select c.customer_id as id, concat(c.first_name, ' ', c.last_name) as customer_name, c.email as email_id, a.address, a.address2, ct.city, a.district, cn.country, a.postal_code from `hive_metastore`.`dvd_rental_new`.`customer` c join `hive_metastore`.`dvd_rental_new`.`address` a on c.address_id = a.address_id join `hive_metastore`.`dvd_rental_new`.`city` ct on ct.city_id = a.city_id join `hive_metastore`.`dvd_rental_new`.`country` cn on cn.country_id = ct.country_id
