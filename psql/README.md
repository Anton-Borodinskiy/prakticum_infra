   tablename   |      indexname      |                                     indexdef                                      
---------------+---------------------+-----------------------------------------------------------------------------------
 order_product | orders_id_products  | CREATE INDEX orders_id_products ON public.order_product USING btree (order_id)
 order_product | product_id_products | CREATE INDEX product_id_products ON public.order_product USING btree (product_id)
 orders        | orders_id           | CREATE INDEX orders_id ON public.orders USING btree (id)
 product       | product_id_product  | CREATE INDEX product_id_product ON public.product USING btree (id)
