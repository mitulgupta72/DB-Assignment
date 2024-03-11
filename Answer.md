1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
ans:
Relationship between "Product" and "Product_Category":
In the provided schema, the "Product" table has a foreign key column named category_id, which references the primary key column id of the "Product_Category" table. This establishes a relationship between the two tables where each product in the "Product" table is associated with a category defined in the "Product_Category" table. This relationship is a one-to-many relationship, as each product belongs to one category, but a category can have multiple products.


2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
ans:
Ensuring each product has a valid category assigned:
To ensure that each product in the "Product" table has a valid category assigned to it, you can utilize the foreign key constraint defined on the category_id column. This constraint ensures that any value inserted into the category_id column must exist as a primary key value in the "Product_Category" table. Thus, you cannot insert a product with an invalid or non-existent category ID. This ensures data integrity and consistency, guaranteeing that each product is associated with a valid category.
