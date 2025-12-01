
create database beauty_products;
use beauty_products;
ALTER TABLE beauty_recommender
  DROP COLUMN id,
  DROP COLUMN last_recommended,
  DROP COLUMN interaction_timestamp,
  DROP COLUMN interaction_type;
CREATE TABLE beauty_recommender (
  id SERIAL PRIMARY KEY,
  user_id INT,
  user_age INT,
  user_skin_type VARCHAR(50),
  user_gender VARCHAR(20),
  user_concerns TEXT,
  product_id INT,
  product_name VARCHAR(255),
  product_brand VARCHAR(100),
  product_category VARCHAR(100),
  product_price DECIMAL(10,2),
  product_ingredients TEXT,
  product_skin_suitable VARCHAR(100),
  review_rating INT,
  review_text TEXT,
  interaction_type VARCHAR(50),
  interaction_timestamp TIMESTAMP,
  last_recommended BOOLEAN
);
INSERT INTO beauty_recommender
(user_id, user_age, user_skin_type, user_gender, user_concerns, product_id, product_name, product_brand, product_category, product_price, product_ingredients, product_skin_suitable, review_rating, review_text, interaction_type, interaction_timestamp, last_recommended)
VALUES
-- Rows for very young children (age 4–12) — simple, safe products
(1, 4, 'normal', 'female', 'sun exposure', 1001, 'Gentle Kid Cleanser', 'KidDerm', 'cleanser', 8.00, 'water, coco-glucoside, glycerin', 'all', 5, 'Very non-irritating', 'rating', '2025-11-01 10:00:00', TRUE),
(2, 5, 'sensitive', 'male', 'dry skin', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 4, 'Nice and gentle', 'rating', '2025-11-01 11:00:00', TRUE),
(3, 6, 'oily', 'female', 'sweat and dirt', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Protects well, no sting', 'rating', '2025-11-01 12:30:00', TRUE),
(4, 7, 'combination', 'male', 'uneven skin after play', 1001, 'Gentle Kid Cleanser', 'KidDerm', 'cleanser', 8.00, 'water, coco-glucoside, glycerin', 'all', NULL, NULL, 'view', '2025-11-02 09:00:00', FALSE),
(5, 8, 'normal', 'female', 'sun exposure', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Easy to apply', 'rating', '2025-11-02 14:00:00', TRUE),
(6, 9, 'sensitive', 'female', 'redness', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 4, 'Very calming', 'rating', '2025-11-03 17:00:00', FALSE),
(7, 10, 'oily', 'male', 'first pimples (mild)', 1004, 'Mild Acne Cleanser', 'ClearKids', 'cleanser', 11.00, 'salicylic acid 0.5%, water, glycerin', 'oily, acne-prone', 3, 'Works gentle', 'rating', '2025-11-03 19:00:00', TRUE),
(8, 11, 'normal', 'female', 'dehydration after sports', 1005, 'Hydrating Mist Kids', 'DewKids', 'mist', 9.00, 'glycerin, hyaluronic acid, water', 'dry, normal', 5, 'Refreshing', 'rating', '2025-11-04 08:00:00', TRUE),
(9, 12, 'combination', 'male', 'sun + sweat', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 4, 'Good coverage', 'rating', '2025-11-04 13:00:00', FALSE),

-- Teen / young adult (13–25)
(10, 13, 'oily', 'female', 'acne', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Lightweight, good for oily skin', 'rating', '2025-11-05 10:00:00', TRUE),
(11, 15, 'normal', 'male', 'sun protection', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Doesn’t feel heavy', 'rating', '2025-11-05 14:00:00', TRUE),
(12, 16, 'sensitive', 'female', 'redness', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 3, 'Gentle but effective', 'rating', '2025-11-06 11:00:00', FALSE),
(13, 18, 'combination', 'male', 'pores', 1008, 'Pore Minimizing Serum', 'RefineSkin', 'serum', 33.00, 'niacinamide, zinc PCA, water', 'oily, combination', 5, 'Pores look smaller', 'rating', '2025-11-06 18:00:00', TRUE),
(14, 20, 'dry', 'female', 'dehydration', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 5, 'Very hydrating', 'rating', '2025-11-07 09:00:00', TRUE),
(15, 22, 'normal', 'female', 'uneven tone', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 4, 'Brightens nicely', 'rating', '2025-11-07 17:00:00', FALSE),
(16, 24, 'oily', 'male', 'blackheads', 1011, 'Salicylic Pads', 'ExfoClean', 'exfoliant', 22.00, 'salicylic acid, water, glycerin', 'oily, acne-prone', 3, 'Effective but a little strong', 'rating', '2025-11-08 12:00:00', TRUE),
(17, 25, 'sensitive', 'female', 'irritation', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 4, 'Very soothing', 'rating', '2025-11-08 20:00:00', FALSE),

-- Adult (26–50)
(18, 26, 'dry', 'female', 'wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Nice richness', 'rating', '2025-11-09 22:00:00', TRUE),
(19, 28, 'combination', 'male', 'pores + sun', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Non-greasy', 'rating', '2025-11-09 11:00:00', TRUE),
(20, 30, 'normal', 'female', 'uneven tone', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 5, 'Glowy skin', 'rating', '2025-11-10 08:00:00', TRUE),
(21, 32, 'oily', 'male', 'acne scars', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 4, 'Gentle exfoliation', 'rating', '2025-11-10 19:00:00', FALSE),
(22, 35, 'sensitive', 'female', 'redness', 1014, 'Barrier Cream', 'SkinShield', 'moisturizer', 34.00, 'ceramide, cholesterol, fatty acids', 'sensitive, dry', 5, 'Strengthens barrier', 'rating', '2025-11-11 07:00:00', TRUE),
(23, 37, 'dry', 'male', 'fine lines', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Plumps my skin', 'rating', '2025-11-11 20:00:00', FALSE),
(24, 40, 'normal', 'female', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Evens tone gradually', 'rating', '2025-11-12 10:00:00', TRUE),
(25, 45, 'oily', 'male', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Mild but effective', 'rating', '2025-11-12 22:00:00', FALSE),

-- Middle to Older (51–100)
(26, 50, 'dry', 'female', 'wrinkles, sagging', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 5, 'Feels very nourishing', 'rating', '2025-11-13 08:00:00', TRUE),
(27, 55, 'normal', 'male', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Improves tone', 'rating', '2025-11-13 13:00:00', FALSE),
(28, 60, 'sensitive', 'female', 'redness', 1014, 'Barrier Cream', 'SkinShield', 'moisturizer', 34.00, 'ceramide, cholesterol, fatty acids', 'sensitive, dry', 5, 'Very soothing', 'rating', '2025-11-14 09:00:00', TRUE),
(29, 65, 'dry', 'male', 'fine lines', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Hydrates well', 'rating', '2025-11-14 20:00:00', FALSE),
(30, 70, 'normal', 'female', 'uneven tone', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Skin looks more even', 'rating', '2025-11-15 11:00:00', TRUE),
-- (… continue similarly to reach 100 rows …)

-- For brevity, I'll bulk-generate similar patterns for the remaining users:
(31, 75, 'oily', 'male', 'pores', 1011, 'Salicylic Pads', 'ExfoClean', 'exfoliant', 22.00, 'salicylic acid, water, glycerin', 'oily, acne-prone', 3, 'Helps somewhat', 'rating', '2025-11-15 17:00:00', FALSE),
(32, 80, 'sensitive', 'female', 'dryness', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Gentle for my skin', 'rating', '2025-11-16 08:00:00', TRUE),
(33, 85, 'dry', 'male', 'age lines', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Very rich but good', 'rating', '2025-11-16 21:00:00', FALSE),
(34, 90, 'normal', 'female', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Skin tone improving', 'rating', '2025-11-17 10:00:00', TRUE),
(35, 95, 'oily', 'male', 'pores + wrinkles', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Tones well', 'rating', '2025-11-17 19:00:00', FALSE),
(36, 100, 'sensitive', 'female', 'dry, sagging', 1014, 'Barrier Cream', 'SkinShield', 'moisturizer', 34.00, 'ceramide, cholesterol, fatty acids', 'sensitive, dry', 5, 'Very comforting', 'rating', '2025-11-18 09:00:00', TRUE),

-- You can fill the rest similarly for rows 37–100, varying user_id, age (random between 4 and 100), skin type, concern, and interactions.
(37, 12, 'dry', 'female', 'dehydration', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Hydrates well', 'rating', '2025-11-18 12:00:00', FALSE),
(38, 14, 'combination', 'male', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 4, 'Feels smooth', 'rating', '2025-11-19 08:00:00', TRUE),
(39, 17, 'normal', 'female', 'sun + spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 5, 'Brightening gently', 'rating', '2025-11-19 20:00:00', FALSE),
(40, 21, 'sensitive', 'male', 'redness', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 3, 'Mild and calming', 'rating', '2025-11-20 10:00:00', TRUE),
(41, 23, 'oily', 'female', 'acne', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Works well under sunscreen', 'rating', '2025-11-20 15:00:00', FALSE),
(42, 27, 'normal', 'male', 'uneven tone', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 5, 'Skin glows', 'rating', '2025-11-21 09:00:00', TRUE),
(43, 31, 'dry', 'female', 'wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Rich feel', 'rating', '2025-11-21 22:00:00', FALSE),
(44, 33, 'sensitive', 'male', 'rash-prone', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Gentle and safe', 'rating', '2025-11-22 08:00:00', TRUE),
(45, 36, 'oily', 'female', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Subtle exfoliation', 'rating', '2025-11-22 17:00:00', FALSE),
(46, 39, 'normal', 'male', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Tone improving slowly', 'rating', '2025-11-23 11:00:00', TRUE),
(47, 42, 'dry', 'female', 'dehydration', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 5, 'Plumps up skin', 'rating', '2025-11-23 20:00:00', FALSE),
(48, 48, 'sensitive', 'male', 'redness', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 4, 'Soothing effect', 'rating', '2025-11-24 09:00:00', TRUE),
(49, 52, 'oily', 'female', 'acne + pores', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 3, 'Oil more controlled', 'rating', '2025-11-24 16:00:00', FALSE),
(50, 56, 'normal', 'male', 'age lines', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Nice texture overnight', 'rating', '2025-11-25 08:00:00', TRUE),
(51, 61, 'dry', 'female', 'wrinkles, sagging', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 5, 'Very nurturing', 'rating', '2025-11-25 21:00:00', FALSE),
(52, 66, 'sensitive', 'male', 'dry + red spots', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Feels very gentle', 'rating', '2025-11-26 10:00:00', TRUE),
(53, 71, 'normal', 'female', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Skin is more glowing', 'rating', '2025-11-26 18:00:00', FALSE),
(54, 76, 'oily', 'male', 'large pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 4, 'Pore feel improved', 'rating', '2025-11-27 09:00:00', TRUE),
(55, 81, 'dry', 'female', 'dehydration, wrinkles', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 5, 'Nice plump', 'rating', '2025-11-27 20:00:00', FALSE),
(56, 86, 'sensitive', 'male', 'fragile skin', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 5, 'Very calming and gentle', 'rating', '2025-11-28 08:00:00', TRUE),
(57, 91, 'normal', 'female', 'age spots + dull skin', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Brighter skin after weeks', 'rating', '2025-11-28 17:00:00', FALSE),
(58, 96, 'oily', 'male', 'pores', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 3, 'Helps a bit', 'rating', '2025-11-29 10:00:00', TRUE),
(59, 100, 'dry', 'female', 'wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 5, 'Very soothing at night', 'rating', '2025-11-29 21:00:00', FALSE),

-- We'll continue until 100 rows; here are a few more patterns:
(60, 8, 'normal', 'male', 'sun + sport', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 4, 'Good for outdoor play', 'rating', '2025-11-30 08:00:00', TRUE),
(61, 14, 'sensitive', 'female', 'red spots', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Love how gentle it is', 'rating', '2025-11-30 12:00:00', FALSE),
(62, 19, 'oily', 'male', 'acne', 1004, 'Mild Acne Cleanser', 'ClearKids', 'cleanser', 11.00, 'salicylic acid 0.5%, water, glycerin', 'oily, acne-prone', 4, 'Good but gentle', 'rating', '2025-11-30 19:00:00', TRUE),
(63, 23, 'combination', 'female', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 4, 'Helps texture', 'rating', '2025-12-01 09:00:00', FALSE),
(64, 27, 'normal', 'male', 'sun + wrinkles', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Non-greasy for daily use', 'rating', '2025-12-01 13:00:00', TRUE),
(65, 31, 'sensitive', 'female', 'rash', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 4, 'Very gentle', 'rating', '2025-12-01 18:00:00', FALSE),
(66, 34, 'dry', 'male', 'age lines', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 5, 'Good hydration', 'rating', '2025-12-02 08:00:00', TRUE),
(67, 38, 'oily', 'female', 'breakouts', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Light and mattifying', 'rating', '2025-12-02 15:00:00', FALSE),
(68, 41, 'normal', 'male', 'pigmentation', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 5, 'Bright skin tone', 'rating', '2025-12-03 10:00:00', TRUE),
(69, 44, 'sensitive', 'female', 'dry spots', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Calms dry areas', 'rating', '2025-12-03 22:00:00', FALSE),
(70, 47, 'dry', 'male', 'wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Nice richness', 'rating', '2025-12-04 09:00:00', TRUE),
(71, 51, 'oily', 'female', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Mild but helpful', 'rating', '2025-12-04 17:00:00', FALSE),
(72, 54, 'normal', 'male', 'sun damage', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Improves tone', 'rating', '2025-12-05 11:00:00', TRUE),
(73, 58, 'sensitive', 'female', 'rosacea', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 5, 'Helpful for redness', 'rating', '2025-12-05 20:00:00', FALSE),
(74, 63, 'dry', 'male', 'aging', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Very hydrating', 'rating', '2025-12-06 08:00:00', TRUE),
(75, 68, 'oily', 'female', 'shiny skin', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Controls oil well', 'rating', '2025-12-06 14:00:00', FALSE),
(76, 72, 'normal', 'male', 'spots', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 5, 'Brightness increasing', 'rating', '2025-12-07 09:00:00', TRUE),
(77, 77, 'sensitive', 'female', 'dryness', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Soft and non-irritating', 'rating', '2025-12-07 18:00:00', FALSE),
(78, 82, 'dry', 'male', 'wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 4, 'Feels rich overnight', 'rating', '2025-12-08 08:00:00', TRUE),
(79, 87, 'oily', 'female', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Subtle smoothing', 'rating', '2025-12-08 17:00:00', FALSE),
(80, 92, 'normal', 'male', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Tone is more even', 'rating', '2025-12-09 10:00:00', TRUE),
(81, 97, 'sensitive', 'female', 'fragile skin', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 5, 'Very kind to skin', 'rating', '2025-12-09 20:00:00', FALSE),
(82, 100, 'dry', 'male', 'deep wrinkles', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 5, 'Very comfortable at night', 'rating', '2025-12-10 08:00:00', TRUE),

-- You can continue similarly to reach exactly 100 lines ...

(83, 29, 'combination', 'female', 'uneven tone', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 4, 'Refines skin texture', 'rating', '2025-12-10 15:00:00', FALSE),
(84, 34, 'normal', 'male', 'sun + aging', 1003, 'Mineral Sunscreen SPF 50', 'SunBuddy', 'sunscreen', 12.50, 'zinc oxide, dimethicone, water', 'all', 5, 'Great protection', 'rating', '2025-12-11 10:00:00', TRUE),
(85, 39, 'dry', 'female', 'fine lines', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Feels plump', 'rating', '2025-12-11 20:00:00', FALSE),
(86, 43, 'sensitive', 'male', 'redness', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 3, 'Calms skin well', 'rating', '2025-12-12 09:00:00', TRUE),
(87, 47, 'oily', 'female', 'acne', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Good under sunscreen', 'rating', '2025-12-12 14:00:00', FALSE),
(88, 52, 'normal', 'male', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Noticeable improvement', 'rating', '2025-12-13 11:00:00', TRUE),
(89, 55, 'dry', 'female', 'sagging', 1012, 'Anti-aging Night Cream', 'AgeDefy', 'moisturizer', 40.00, 'peptides, shea butter, water', 'dry, mature', 5, 'Plumps and soothes', 'rating', '2025-12-13 21:00:00', FALSE),
(90, 60, 'sensitive', 'male', 'eczema-like dryness', 1002, 'Unscented Kid Lotion', 'SoftKids', 'moisturizer', 10.00, 'water, glycerin, ceramide', 'sensitive, dry', 5, 'Very safe for my skin', 'rating', '2025-12-14 08:00:00', TRUE),
(91, 65, 'normal', 'female', 'pigmentation', 1010, 'Vitamin C Serum', 'BrightenUp', 'serum', 32.00, 'ascorbic acid, glycerin, water', 'all', 4, 'Bright but gentle', 'rating', '2025-12-14 17:00:00', FALSE),
(92, 70, 'oily', 'male', 'pores', 1013, 'Brightening Toner', 'ToneRadiance', 'toner', 20.00, 'glycolic acid (very low %), water, aloe', 'oily, combination', 3, 'Smoother texture', 'rating', '2025-12-15 09:00:00', TRUE),
(93, 75, 'dry', 'female', 'wrinkles', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 4, 'Keeps skin plump', 'rating', '2025-12-15 20:00:00', FALSE),
(94, 80, 'sensitive', 'male', 'fragile + dry', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 5, 'Gently calms skin', 'rating', '2025-12-16 08:00:00', TRUE),
(95, 85, 'normal', 'female', 'age spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 4, 'Evening tone gradually', 'rating', '2025-12-16 15:00:00', FALSE),
(96, 90, 'oily', 'male', 'pores + shine', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Helps reduce shine', 'rating', '2025-12-17 10:00:00', TRUE),
(97, 95, 'dry', 'female', 'deep wrinkles', 1009, 'Hyaluronic Serum', 'HydraGlow', 'serum', 28.00, 'sodium hyaluronate, water, glycerin', 'dry, normal', 5, 'Makes skin bounce', 'rating', '2025-12-17 21:00:00', FALSE),
(98, 99, 'sensitive', 'male', 'redness, aging', 1007, 'Soothing Toner', 'CalmAura', 'toner', 18.00, 'witch hazel, chamomile, glycerin', 'sensitive, dry', 4, 'Comforting', 'rating', '2025-12-18 08:00:00', TRUE),
(99, 100, 'normal', 'female', 'aging + sun spots', 1015, 'Brightening Cream', 'EvenTone', 'moisturizer', 31.00, 'niacinamide, vitamin C, water', 'normal, dry', 5, 'Feels good daily', 'rating', '2025-12-18 17:00:00', FALSE),
(100, 50, 'combination', 'male', 'acne + aging', 1006, 'Oil-Control Gel', 'GlowSkin', 'moisturizer', 15.99, 'water, glycerin, niacinamide', 'oily, combination', 4, 'Balances skin', 'rating', '2025-12-19 09:00:00', TRUE);



select * from beauty_recommender;