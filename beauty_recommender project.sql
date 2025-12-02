
CREATE TABLE BeautyRecommender (
    RecordID INT PRIMARY KEY,
    UserName VARCHAR(100),
    AgeGroup VARCHAR(20),
    SkinType VARCHAR(20),
    Preference VARCHAR(50),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10,2),
    ProductRating DECIMAL(2,1),
    UserRating INT,
    ReviewText TEXT
);

INSERT INTO BeautyRecommender VALUES (1, 'User_29', '46-60', 'Oily', 'Hydrating', 'RadiantYou Moisturizer', 'Face Wash', 'LuxeTouch', 1207.34, 3.8, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (2, 'User_2', '26-35', 'Sensitive', 'Glossy', 'LuxeTouch Face Wash', 'Serum', 'GlowSkin', 848.35, 4.7, 2, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (3, 'User_2', '26-35', 'Combination', 'Matte', 'LuxeTouch Lipstick', 'Sunscreen', 'PureCare', 1941.0, 4.7, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (4, 'User_9', '46-60', 'Dry', 'Matte', 'BeautyPlus Serum', 'Sunscreen', 'DermaSoft', 1503.63, 4.6, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (5, 'User_10', '46-60', 'Oily', 'Hydrating', 'DermaSoft Face Wash', 'Sunscreen', 'DermaSoft', 1077.17, 4.6, 4, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (6, 'User_18', '36-45', 'Normal', 'Anti-aging', 'LuxeTouch Sunscreen', 'Sunscreen', 'LuxeTouch', 1315.44, 4.1, 3, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (7, 'User_19', '36-45', 'Normal', 'Glossy', 'DermaSoft Sunscreen', 'Face Wash', 'RadiantYou', 1722.07, 4.1, 3, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (8, 'User_18', '18-25', 'Oily', 'Hydrating', 'PureCare Face Wash', 'Moisturizer', 'BeautyPlus', 1506.46, 3.6, 5, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (9, 'User_17', '18-25', 'Oily', 'Glossy', 'RadiantYou Serum', 'Serum', 'GlowSkin', 1443.94, 4.2, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (10, 'User_21', '26-35', 'Combination', 'Glossy', 'PureCare Serum', 'Moisturizer', 'LuxeTouch', 1102.78, 4.3, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (11, 'User_13', '26-35', 'Dry', 'Hydrating', 'BeautyPlus Face Wash', 'Foundation', 'DermaSoft', 1815.19, 3.3, 3, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (12, 'User_22', '46-60', 'Normal', 'Hydrating', 'LuxeTouch Foundation', 'Moisturizer', 'PureCare', 1187.79, 4.5, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (13, 'User_8', '26-35', 'Oily', 'Hydrating', 'BeautyPlus Face Wash', 'Serum', 'BeautyPlus', 1222.1, 3.2, 1, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (14, 'User_11', '26-35', 'Oily', 'Natural', 'DermaSoft Moisturizer', 'Sunscreen', 'GlowSkin', 639.54, 3.8, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (15, 'User_8', '18-25', 'Combination', 'Hydrating', 'RadiantYou Moisturizer', 'Sunscreen', 'PureCare', 1307.52, 3.2, 3, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (16, 'User_26', '36-45', 'Normal', 'Glossy', 'BeautyPlus Foundation', 'Lipstick', 'GlowSkin', 838.84, 3.8, 5, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (17, 'User_2', '18-25', 'Dry', 'Anti-aging', 'RadiantYou Serum', 'Sunscreen', 'RadiantYou', 1940.49, 3.5, 3, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (18, 'User_15', '36-45', 'Oily', 'Glossy', 'BeautyPlus Moisturizer', 'Serum', 'PureCare', 888.31, 3.1, 1, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (19, 'User_19', '46-60', 'Combination', 'Anti-aging', 'RadiantYou Moisturizer', 'Face Wash', 'LuxeTouch', 1562.29, 4.7, 3, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (20, 'User_24', '26-35', 'Sensitive', 'Natural', 'PureCare Moisturizer', 'Lipstick', 'RadiantYou', 1553.85, 4.1, 3, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (21, 'User_3', '46-60', 'Dry', 'Natural', 'DermaSoft Face Wash', 'Serum', 'PureCare', 1558.83, 4.8, 2, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (22, 'User_21', '18-25', 'Oily', 'Matte', 'GlowSkin Lipstick', 'Serum', 'PureCare', 1244.43, 3.4, 5, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (23, 'User_26', '36-45', 'Combination', 'Glossy', 'BeautyPlus Face Wash', 'Sunscreen', 'PureCare', 1214.04, 3.8, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (24, 'User_18', '36-45', 'Oily', 'Glossy', 'DermaSoft Moisturizer', 'Foundation', 'PureCare', 1480.9, 3.6, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (25, 'User_29', '26-35', 'Sensitive', 'Glossy', 'DermaSoft Serum', 'Moisturizer', 'DermaSoft', 932.4, 3.4, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (26, 'User_6', '26-35', 'Dry', 'Anti-aging', 'BeautyPlus Sunscreen', 'Moisturizer', 'RadiantYou', 741.68, 3.7, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (27, 'User_7', '26-35', 'Combination', 'Matte', 'PureCare Lipstick', 'Lipstick', 'RadiantYou', 917.57, 3.8, 4, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (28, 'User_28', '26-35', 'Sensitive', 'Glossy', 'LuxeTouch Moisturizer', 'Moisturizer', 'RadiantYou', 1375.94, 4.1, 4, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (29, 'User_27', '18-25', 'Normal', 'Natural', 'PureCare Face Wash', 'Moisturizer', 'DermaSoft', 1038.52, 3.8, 3, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (30, 'User_27', '26-35', 'Dry', 'Natural', 'PureCare Face Wash', 'Face Wash', 'BeautyPlus', 1849.33, 3.4, 3, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (31, 'User_2', '26-35', 'Normal', 'Glossy', 'GlowSkin Lipstick', 'Face Wash', 'LuxeTouch', 1474.52, 4.6, 5, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (32, 'User_10', '36-45', 'Sensitive', 'Natural', 'BeautyPlus Lipstick', 'Foundation', 'BeautyPlus', 577.9, 4.5, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (33, 'User_18', '26-35', 'Dry', 'Natural', 'BeautyPlus Sunscreen', 'Serum', 'PureCare', 1277.84, 4.1, 5, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (34, 'User_29', '26-35', 'Sensitive', 'Matte', 'LuxeTouch Moisturizer', 'Foundation', 'DermaSoft', 1876.38, 4.5, 2, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (35, 'User_4', '46-60', 'Combination', 'Matte', 'LuxeTouch Lipstick', 'Moisturizer', 'DermaSoft', 1674.75, 3.1, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (36, 'User_26', '46-60', 'Oily', 'Glossy', 'DermaSoft Sunscreen', 'Serum', 'BeautyPlus', 997.85, 3.8, 2, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (37, 'User_17', '46-60', 'Oily', 'Matte', 'DermaSoft Sunscreen', 'Sunscreen', 'DermaSoft', 958.36, 3.0, 5, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (38, 'User_26', '18-25', 'Sensitive', 'Matte', 'BeautyPlus Lipstick', 'Sunscreen', 'LuxeTouch', 1340.55, 3.9, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (39, 'User_20', '18-25', 'Sensitive', 'Anti-aging', 'GlowSkin Face Wash', 'Serum', 'RadiantYou', 1890.09, 4.6, 5, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (40, 'User_10', '46-60', 'Combination', 'Anti-aging', 'LuxeTouch Foundation', 'Serum', 'DermaSoft', 1821.42, 3.3, 2, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (41, 'User_16', '46-60', 'Oily', 'Anti-aging', 'RadiantYou Lipstick', 'Lipstick', 'DermaSoft', 727.31, 4.4, 5, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (42, 'User_27', '26-35', 'Sensitive', 'Anti-aging', 'GlowSkin Foundation', 'Serum', 'GlowSkin', 1396.75, 3.2, 1, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (43, 'User_10', '18-25', 'Normal', 'Matte', 'PureCare Foundation', 'Face Wash', 'BeautyPlus', 873.08, 4.5, 5, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (44, 'User_23', '26-35', 'Normal', 'Hydrating', 'BeautyPlus Serum', 'Sunscreen', 'PureCare', 896.17, 3.6, 2, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (45, 'User_5', '18-25', 'Sensitive', 'Anti-aging', 'BeautyPlus Face Wash', 'Foundation', 'BeautyPlus', 1455.73, 3.4, 5, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (46, 'User_22', '46-60', 'Oily', 'Hydrating', 'PureCare Serum', 'Foundation', 'RadiantYou', 823.58, 4.1, 2, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (47, 'User_7', '36-45', 'Sensitive', 'Hydrating', 'DermaSoft Face Wash', 'Serum', 'PureCare', 689.37, 4.3, 4, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (48, 'User_13', '46-60', 'Normal', 'Hydrating', 'PureCare Sunscreen', 'Foundation', 'RadiantYou', 1775.67, 4.0, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (49, 'User_25', '18-25', 'Combination', 'Anti-aging', 'GlowSkin Serum', 'Sunscreen', 'DermaSoft', 868.14, 3.2, 2, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (50, 'User_3', '46-60', 'Normal', 'Matte', 'BeautyPlus Face Wash', 'Face Wash', 'GlowSkin', 605.33, 3.6, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (51, 'User_11', '36-45', 'Dry', 'Hydrating', 'BeautyPlus Face Wash', 'Face Wash', 'GlowSkin', 1023.74, 4.6, 2, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (52, 'User_17', '46-60', 'Combination', 'Natural', 'PureCare Sunscreen', 'Foundation', 'LuxeTouch', 1518.34, 5.0, 3, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (53, 'User_17', '18-25', 'Dry', 'Glossy', 'GlowSkin Moisturizer', 'Face Wash', 'BeautyPlus', 1174.83, 4.4, 5, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (54, 'User_14', '36-45', 'Dry', 'Matte', 'GlowSkin Serum', 'Face Wash', 'DermaSoft', 862.16, 4.2, 3, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (55, 'User_16', '26-35', 'Combination', 'Natural', 'RadiantYou Lipstick', 'Moisturizer', 'BeautyPlus', 1951.83, 3.6, 4, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (56, 'User_24', '18-25', 'Dry', 'Glossy', 'PureCare Lipstick', 'Face Wash', 'BeautyPlus', 1061.63, 3.6, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (57, 'User_5', '18-25', 'Sensitive', 'Hydrating', 'LuxeTouch Sunscreen', 'Lipstick', 'BeautyPlus', 841.11, 3.4, 3, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (58, 'User_29', '36-45', 'Combination', 'Matte', 'PureCare Lipstick', 'Foundation', 'PureCare', 1901.33, 3.3, 5, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (59, 'User_15', '26-35', 'Normal', 'Matte', 'GlowSkin Lipstick', 'Face Wash', 'BeautyPlus', 414.42, 4.7, 1, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (60, 'User_26', '26-35', 'Sensitive', 'Hydrating', 'DermaSoft Moisturizer', 'Sunscreen', 'PureCare', 1407.75, 5.0, 2, 'Not satisfied.');
INSERT INTO BeautyRecommender VALUES (61, 'User_29', '18-25', 'Sensitive', 'Natural', 'RadiantYou Face Wash', 'Face Wash', 'DermaSoft', 412.32, 4.2, 1, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (62, 'User_4', '46-60', 'Combination', 'Anti-aging', 'GlowSkin Lipstick', 'Serum', 'BeautyPlus', 876.1, 3.9, 3, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (63, 'User_7', '18-25', 'Dry', 'Natural', 'GlowSkin Moisturizer', 'Foundation', 'PureCare', 660.08, 4.6, 5, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (64, 'User_12', '26-35', 'Normal', 'Anti-aging', 'PureCare Lipstick', 'Moisturizer', 'BeautyPlus', 631.34, 4.9, 3, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (65, 'User_23', '18-25', 'Combination', 'Matte', 'GlowSkin Foundation', 'Lipstick', 'DermaSoft', 970.05, 4.8, 5, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (66, 'User_6', '36-45', 'Oily', 'Anti-aging', 'LuxeTouch Moisturizer', 'Sunscreen', 'BeautyPlus', 929.05, 3.3, 5, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (67, 'User_17', '18-25', 'Combination', 'Matte', 'LuxeTouch Face Wash', 'Face Wash', 'RadiantYou', 630.68, 3.0, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (68, 'User_3', '18-25', 'Sensitive', 'Hydrating', 'LuxeTouch Serum', 'Foundation', 'GlowSkin', 1223.34, 4.4, 4, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (69, 'User_9', '26-35', 'Oily', 'Natural', 'BeautyPlus Sunscreen', 'Foundation', 'RadiantYou', 1995.36, 4.3, 3, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (70, 'User_30', '18-25', 'Sensitive', 'Natural', 'DermaSoft Foundation', 'Face Wash', 'BeautyPlus', 1936.86, 4.7, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (71, 'User_17', '18-25', 'Combination', 'Glossy', 'GlowSkin Lipstick', 'Face Wash', 'BeautyPlus', 1694.07, 4.1, 5, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (72, 'User_18', '26-35', 'Normal', 'Glossy', 'PureCare Foundation', 'Face Wash', 'PureCare', 1032.67, 3.5, 4, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (73, 'User_22', '26-35', 'Combination', 'Natural', 'RadiantYou Face Wash', 'Sunscreen', 'LuxeTouch', 364.01, 4.7, 5, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (74, 'User_8', '36-45', 'Dry', 'Glossy', 'RadiantYou Lipstick', 'Moisturizer', 'PureCare', 1289.58, 3.4, 4, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (75, 'User_3', '46-60', 'Sensitive', 'Hydrating', 'DermaSoft Serum', 'Face Wash', 'GlowSkin', 1032.3, 3.6, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (76, 'User_22', '26-35', 'Dry', 'Glossy', 'BeautyPlus Lipstick', 'Sunscreen', 'RadiantYou', 1448.11, 4.7, 1, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (77, 'User_7', '26-35', 'Normal', 'Hydrating', 'GlowSkin Serum', 'Serum', 'RadiantYou', 631.65, 3.1, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (78, 'User_18', '18-25', 'Sensitive', 'Glossy', 'DermaSoft Lipstick', 'Foundation', 'DermaSoft', 990.18, 4.7, 4, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (79, 'User_22', '18-25', 'Oily', 'Anti-aging', 'RadiantYou Sunscreen', 'Serum', 'GlowSkin', 1156.28, 4.0, 4, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (80, 'User_27', '26-35', 'Normal', 'Hydrating', 'PureCare Moisturizer', 'Serum', 'PureCare', 1535.64, 4.4, 2, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (81, 'User_28', '46-60', 'Dry', 'Natural', 'RadiantYou Serum', 'Moisturizer', 'LuxeTouch', 551.57, 3.7, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (82, 'User_25', '36-45', 'Sensitive', 'Glossy', 'RadiantYou Sunscreen', 'Sunscreen', 'BeautyPlus', 1534.84, 3.0, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (83, 'User_20', '26-35', 'Oily', 'Glossy', 'GlowSkin Sunscreen', 'Moisturizer', 'GlowSkin', 876.18, 4.8, 1, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (84, 'User_17', '46-60', 'Sensitive', 'Hydrating', 'BeautyPlus Foundation', 'Moisturizer', 'BeautyPlus', 534.86, 3.1, 1, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (85, 'User_5', '46-60', 'Oily', 'Anti-aging', 'GlowSkin Face Wash', 'Sunscreen', 'LuxeTouch', 1052.28, 3.9, 5, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (86, 'User_29', '36-45', 'Dry', 'Anti-aging', 'RadiantYou Foundation', 'Moisturizer', 'DermaSoft', 1979.93, 4.5, 2, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (87, 'User_23', '36-45', 'Dry', 'Glossy', 'LuxeTouch Sunscreen', 'Sunscreen', 'PureCare', 1476.23, 3.9, 2, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (88, 'User_29', '46-60', 'Normal', 'Glossy', 'BeautyPlus Lipstick', 'Sunscreen', 'PureCare', 1343.21, 3.2, 4, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (89, 'User_13', '18-25', 'Normal', 'Hydrating', 'BeautyPlus Foundation', 'Lipstick', 'GlowSkin', 1123.79, 4.6, 3, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (90, 'User_15', '46-60', 'Oily', 'Matte', 'PureCare Moisturizer', 'Moisturizer', 'LuxeTouch', 1987.81, 4.0, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (91, 'User_25', '36-45', 'Normal', 'Glossy', 'RadiantYou Foundation', 'Foundation', 'GlowSkin', 1654.7, 3.2, 1, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (92, 'User_30', '18-25', 'Normal', 'Hydrating', 'DermaSoft Face Wash', 'Lipstick', 'BeautyPlus', 1461.84, 3.6, 4, 'Very good, suits my skin.');
INSERT INTO BeautyRecommender VALUES (93, 'User_17', '46-60', 'Dry', 'Natural', 'BeautyPlus Moisturizer', 'Face Wash', 'GlowSkin', 1884.99, 4.8, 4, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (94, 'User_12', '46-60', 'Dry', 'Natural', 'BeautyPlus Moisturizer', 'Sunscreen', 'PureCare', 1947.23, 4.5, 1, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (95, 'User_3', '46-60', 'Sensitive', 'Matte', 'PureCare Serum', 'Foundation', 'RadiantYou', 879.77, 3.8, 3, 'Highly recommended!');
INSERT INTO BeautyRecommender VALUES (96, 'User_6', '36-45', 'Dry', 'Glossy', 'BeautyPlus Foundation', 'Foundation', 'PureCare', 377.97, 4.3, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (97, 'User_21', '18-25', 'Dry', 'Glossy', 'PureCare Foundation', 'Face Wash', 'BeautyPlus', 1461.71, 5.0, 1, 'Excellent product!');
INSERT INTO BeautyRecommender VALUES (98, 'User_6', '46-60', 'Combination', 'Matte', 'GlowSkin Moisturizer', 'Moisturizer', 'DermaSoft', 954.06, 4.1, 5, 'Average quality.');
INSERT INTO BeautyRecommender VALUES (99, 'User_13', '26-35', 'Normal', 'Matte', 'PureCare Moisturizer', 'Face Wash', 'BeautyPlus', 1225.75, 3.2, 2, 'Would buy again!');
INSERT INTO BeautyRecommender VALUES (100, 'User_20', '18-25', 'Oily', 'Glossy', 'BeautyPlus Lipstick', 'Sunscreen', 'DermaSoft', 749.46, 3.2, 1, 'Very good, suits my skin.');