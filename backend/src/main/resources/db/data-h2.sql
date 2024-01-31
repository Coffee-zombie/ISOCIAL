INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('John', 'Doe', 'john.doe@example.com', 'New York', 'securepassword', ARRAY['avatar1.jpg',
        'avatar2.jpg'], 'banner.jpg',
        'A short bio about John Doe', FALSE, CURRENT_TIMESTAMP,
        '1990-01-15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);
INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', 'Los Angeles', 'strongpass', ARRAY['avatar3.jpg',
        'avatar4.jpg'], 'banner2.jpg',
        'Bio for Alice Johnson', FALSE, CURRENT_TIMESTAMP,
        '1985-03-20', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);


INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('Bob', 'Smith', 'bob.smith@example.com', 'Chicago', 'mypassword', ARRAY['avatar5.jpg',
        'avatar6.jpg'], 'banner3.jpg',
        'Bob Smith bio', FALSE, CURRENT_TIMESTAMP,
        '1992-07-08', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('Eva', 'Martinez', 'eva.martinez@example.com', 'San Francisco', 'securepass123',
        ARRAY['avatar7.jpg', 'avatar8.jpg'], 'banner4.jpg',
        'Evas bio description', FALSE, CURRENT_TIMESTAMP,
        '1988-12-01', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('Michael', 'Williams', 'michael.williams@example.com', 'Miami', 'password123', ARRAY['avatar9.jpg',
        'avatar10.jpg'], 'banner5.jpg',
        'Michaels bio', FALSE, CURRENT_TIMESTAMP,
        '1975-06-25', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);


INSERT INTO public.users (first_name, last_name, email, city, password, avatars_url, banner_url, bio,
                          is_private, last_seen, date_of_birth, creation_date, last_modified_date, is_active)
VALUES ('Sophia', 'Lee', 'sophia.lee@example.com', 'Seattle', 'strongpassword456', ARRAY['avatar11.jpg',
        'avatar12.jpg'], 'banner6.jpg',
        'Sophias bio information', FALSE, CURRENT_TIMESTAMP,
        '1995-09-10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

-- John Doe sends friend requests to Alice Johnson and Bob Smith
INSERT INTO friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (1, 2, 'PENDING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

INSERT INTO friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (1, 3, 'PENDING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

-- Alice Johnson sends a friend request to Eva Martinez
INSERT INTO friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (2, 4, 'PENDING', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

-- Bob Smith and Michael Williams are already friends
INSERT INTO friends (requester_id, addresser_id, status, creation_date, last_modified_date, is_active)
VALUES (3, 5, 'ACCEPTED', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, true);

