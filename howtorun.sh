uwsgi \
        --master \
        --protocol=http \
        --socket 0.0.0.0:8080 \
        --catch-exceptions \
        --reload-on-exception \
        --enable-threads \
        --buffer-size 32768 \
        -w ecom:app -p 4 -O 2 \
        --py-autoreload 1


INSERT INTO product_categories (id,name,description,created_at,modified_at)
VALUES ('534207d4-cefd-4e73-b7f8-9a7a49eb3032', 'Electronics', 'Electronics', NOW(), NOW()),
       ('46884850-1dc4-4f5f-b57a-608a48054d0b', 'Men', 'Men', NOW(), NOW()),
       ('834aff63-dc8d-4dba-a821-188d277e3712', 'Baby & Kids', 'Baby & Kids', NOW(), NOW()),
       ('df7a5ca1-e6ce-4f16-a5f9-8f447597d287', 'Home & Furniture', 'Home & Furniture', NOW(), NOW()),
       ('bb867c13-f0b4-4779-8080-ca95be983e56', 'Sports, Books & More', 'Sports, Books & More', NOW(), NOW()),
       ('393fc112-a17b-4674-93df-57f52037a2b6', 'Women', 'Women', NOW(), NOW());


INSERT INTO product_subcategories (id,name,description,product_category_id,created_at,modified_at)
VALUES ('e21cb0a9-1095-4dc7-8813-9ba752b1abad', 'Mobiles', 'Mobiles', '534207d4-cefd-4e73-b7f8-9a7a49eb3032', NOW(), NOW()),
	   ('e2de97f5-1595-47dd-a58f-0cae258c3ddd', 'Laptops', 'Laptops', '534207d4-cefd-4e73-b7f8-9a7a49eb3032', NOW(), NOW()),
	   ('819158bb-d0f4-41eb-94ca-dcbf5bd80269', 'Televisions', 'Televisions', '534207d4-cefd-4e73-b7f8-9a7a49eb3032', NOW(), NOW()),
	   ('44353a31-2193-4c8b-97f2-b883ceef8219', 'Pendrives', 'Pendrives', '534207d4-cefd-4e73-b7f8-9a7a49eb3032', NOW(), NOW()),
	   ('37e4b3a4-7591-47eb-ad86-7b547eee4184', 'Cameras', 'Cameras', '534207d4-cefd-4e73-b7f8-9a7a49eb3032', NOW(), NOW()),
	   ('ad04562c-e944-44e1-9aee-1316bde28f68', 'Footwear', 'Footwear', '46884850-1dc4-4f5f-b57a-608a48054d0b', NOW(), NOW()),
	   ('c8f5a322-349e-45fa-8187-b5caf0a7a84b', 'Shirts', 'Shirts', '46884850-1dc4-4f5f-b57a-608a48054d0b', NOW(), NOW()),
	   ('a1a99cd1-3329-4ffa-8506-e5e9c7bf03db', 'Watches', 'Watches', '46884850-1dc4-4f5f-b57a-608a48054d0b', NOW(), NOW()),
	   ('b1645228-d3d2-49e5-83d7-da79c610a046', 'Wallets', 'Wallets', '46884850-1dc4-4f5f-b57a-608a48054d0b', NOW(), NOW()),
	   ('a1a7fd6a-396c-4832-8ad1-a228c90f5c1c', 'Jeans', 'Jeans', '46884850-1dc4-4f5f-b57a-608a48054d0b', NOW(), NOW()),
	   ('c81971b3-a62b-472a-a21a-8f48dbf2bab9', 'Boys Clothing', 'Boys Clothing', '834aff63-dc8d-4dba-a821-188d277e3712', NOW(), NOW()),
	   ('3e955a48-651e-460a-9c25-dd2b8c59191f', 'Girls Clothing', 'Girls Clothing', '834aff63-dc8d-4dba-a821-188d277e3712', NOW(), NOW()),
	   ('bcfa42d4-8b6b-41f7-87cb-8c09cc47e2be', 'Toys', 'Toys', '834aff63-dc8d-4dba-a821-188d277e3712', NOW(), NOW()),
	   ('d314ef00-4775-4a58-954e-003f5875bea7', 'Beds', 'Beds', 'df7a5ca1-e6ce-4f16-a5f9-8f447597d287', NOW(), NOW()),
	   ('aec68d1e-9ace-45ee-aa35-af04f1d7a28a', 'Sofas', 'Sofas', 'df7a5ca1-e6ce-4f16-a5f9-8f447597d287', NOW(), NOW()),
	   ('f05279ac-6152-450a-9fd4-c9404aa14df8', 'Paintings', 'Paintings', 'df7a5ca1-e6ce-4f16-a5f9-8f447597d287', NOW(), NOW()),
	   ('4cdf6f62-737f-4387-98c8-dad3e3d0401f', 'Dinnerware and Crockery', 'Dinnerware and Crockery', 'df7a5ca1-e6ce-4f16-a5f9-8f447597d287', NOW(), NOW()),
	   ('bf19358d-63b3-41c8-9d2c-ae50decc50a2', 'Books', 'Books', 'bb867c13-f0b4-4779-8080-ca95be983e56', NOW(), NOW()),
	   ('3b4c6b72-4db7-4024-be67-33f5c5538792', 'Gaming', 'Gaming', 'bb867c13-f0b4-4779-8080-ca95be983e56', NOW(), NOW()),
	   ('3779d912-1b7f-488b-bed0-b7283e34623b', 'Movies', 'Movies', 'bb867c13-f0b4-4779-8080-ca95be983e56', NOW(), NOW()),
	   ('a2f21779-09ff-4f28-bbeb-928e8ae53de5', 'Cricket', 'Cricket', 'bb867c13-f0b4-4779-8080-ca95be983e56', NOW(), NOW()),
	   ('fee9bd84-08ba-4cb4-aa20-4df9d5c72245', 'Music', 'Music', 'bb867c13-f0b4-4779-8080-ca95be983e56', NOW(), NOW()),
	   ('185b0942-d8ff-4845-93c2-720a801b01c1', 'Sarees', 'Sarees', '393fc112-a17b-4674-93df-57f52037a2b6', NOW(), NOW()),
	   ('4e7be88f-482b-4b1b-84ca-8122d21086c9', 'Dress Material', 'Dress Material', '393fc112-a17b-4674-93df-57f52037a2b6', NOW(), NOW()),
	   ('955ce4de-e528-4d23-9d36-acc061be6930', 'Footwear', 'Footwear', '393fc112-a17b-4674-93df-57f52037a2b6', NOW(), NOW()),
	   ('d1f8d593-af0f-485a-8d34-cdc012dd18d4', 'Jewellery', 'Jewellery', '393fc112-a17b-4674-93df-57f52037a2b6', NOW(), NOW()),
	   ('78ef9252-7791-49f8-bfaf-62c3ab2ced18', 'Skin Care', 'Skin Care', '393fc112-a17b-4674-93df-57f52037a2b6', NOW(), NOW());

select sc.name,c.name from product_subcategories sc inner join  product_categories c on sc.product_category_id = c.id;

INSERT INTO products (id,name,description,price,available_item_count,image,product_subcategory_id,created_at,modified_at)
VALUES ('9ebdbc3d-479f-4712-ba79-a2e2e07b8c84', 'Samsung S10 Series', '16MP+12MP+12MP|10MP Camera', 55900, 1000, 'samsungs10.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('83f70d4a-0bfd-4638-a756-4f3376243437', 'Vivo V15 Pro', '6 GB RAM | 128 GB ROM', 28990, 500, 'vivov15pro.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('0cca8253-5686-486d-a26c-949c09f9ad46', 'Asus Zenfone', '5000 mAh Battery', 11999, 100, 'asusmaxpro.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('2e50719e-5a14-477a-85de-98d73e298f67', 'Honor 10 Lite', 'Upto 6GB RAM|64GB ROM', 13999, 800, 'honor10lite.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('372c0435-fd3d-4cbe-a7c1-f1712606b7a0', 'Nokia 5.1 Plus ', '13MP+5MP | 8MP Camera', 9999, 321, 'nokiaplus.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('fb163728-ea96-4973-a37f-a62c60bd85db', 'Redmi 5 4GB', '4GB | 3300mAh', 11999, 12, 'redmi5.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('2f3c7b1e-94f8-49bf-a6dd-c29e66934c35', 'Blackberry Evolve', '4GB | 64GB | 4000 mAH', 16990, 12, 'bbevolve.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW()),
	   ('e83cc7f6-bdb3-45e9-b10a-f77d8cdd0082', 'Lenovo K8 Note 4GB', '4GB | 4000mAh', 9200, 32, 'lenovok8.jpeg','e21cb0a9-1095-4dc7-8813-9ba752b1abad', NOW(), NOW());
#test code push 0 mmmut 4TH mARCH


#lets see whats up with new branch